import { firebaseAction } from 'vuexfire'

const types = {
  FIREBASE_CONNECTED: 'FIREBASE_CONNECTED',


  SIGNED_IN_USER: 'SIGNED_IN_USER',
  SIGN_IN_FAIL: 'SIGN_IN_FAIL',

  SIGNED_OUT: 'SIGNED_OUT',
  SIGN_OUT_FAIL: 'SIGN_OUT_FAIL',
  REGISTER_FAIL: 'REGISTER_FAIL',

  SHOW_LIVE_BALANCE: 'SHOW_LIVE_BALANCE',

  SET_SERVER_TIME_OFFSET: 'SET_SERVER_TIME_OFFSET',
}


const state = () => ({
  connected: false,
  user: {},
  signInError: null,
  registerError: null,
  email: String,
  password: String,

  serverTimeOffset: 0,
});

// getters
const getters = {
  isConnected: state => state.connected,
  getUser: state => state.user,
  getSignInError: state => state.signInError,
  getRegisterError: state => state.registerError,
  hasCurrentUser: state => Object.keys(state.user).length !== 0,
  getServerTimeOffset: state => state.serverTimeOffset,
  getUserEmail: state => state.email,
  getUserPassword: state => state.password
}
// actions
const actions = {
  

  setAuthStateObserver({ commit, state, dispatch }, signInCallback, signOutCallback) {
    this.$firebase.database().ref(".info/connected").on("value", function(snap) {
      if (snap.val() === true) {
        commit(types.FIREBASE_CONNECTED, true)
      } else {
        commit(types.FIREBASE_CONNECTED, false);
      }
    });

   this.$firebase.auth().onAuthStateChanged((user) => {
    console.log('Auth state changed', user);

    if(user) {
      commit(types.SIGNED_IN_USER, {uid: user.uid, name: user.displayName, photoURL: user.photoURL, email: user.email, password: state.password});
    }
    else {
      commit(types.SIGNED_OUT);
    }
   }); 

    // this.$firebase.auth().onAuthStateChanged((user) => {
    //   if(user) {
    //     commit(types.SIGNED_IN_USER, user);
    //   }
    //   else {
    //     commit(types.SIGNED_OUT);
    //   }
    // });
  },

  register({ commit, state, dispatch }, registerDetails) {
    state.email = registerDetails.email;
    state.password = registerDetails.password;

    this.$firebase.auth().createUserWithEmailAndPassword(registerDetails.email, registerDetails.password)
    .catch(err => {
      commit(types.REGISTER_FAIL, err);
    });
  },

  logIn ({ commit, state, dispatch }, loginDetails) {
    
    console.log("==== LoginDetails ====", loginDetails.email);

    state.email = loginDetails.email;
    state.password = loginDetails.password;

    console.log("==== Login State ====", state);

    if(loginDetails.method === 'email') {
      this.$firebase.auth().signInWithEmailAndPassword(loginDetails.email, loginDetails.password)
      .catch(err => {
        commit(types.SIGN_IN_FAIL, err);
      });
    }
    else {
      var provider;
       if(loginDetails.provider === 'google') {
        provider = new this.$firebase.firebase_.auth.GoogleAuthProvider();
        provider.addScope('https://www.googleapis.com/auth/plus.login');
       }
       else if(loginDetails.provider === 'facebook') {
        provider = new this.$firebase.firebase_.auth.FacebookAuthProvider();
       }
       else if(loginDetails.provider === 'twitter') {
        provider = new this.$firebase.firebase_.auth.TwitterAuthProvider();
       }
       else {
        throw new Error('You did not provide a provider for custom login');
       }

       console.log('Logging in with provider', provider);
              this.$firebase.auth().signInWithPopup(provider).then(result => {
                  var token = result.credential.accessToken;
                  var user = result.user;
              }).catch(err => {
                commit(types.SIGN_IN_FAIL, err);
              });  
    }
   
   },
   logOut({commit}) {
    this.$firebase.auth().signOut()
      .then(() => {
        commit(types.SIGNED_OUT)
      })
      .catch(function(error) {
        commit(types.SIGN_OUT_FAIL, error);
        commit(types.ADD_ERROR, error);
      })
   },

  setupNotifications({ commit, rootState, state }, uid) {
    console.log('Setting up notifications...');
    const messaging = this.$firebase.messaging();
    messaging.requestPermission()
    .then(() => {
      console.log('Got messaging permission!');
      return messaging.getToken();
    })
    .then(token => {
      console.log('Token', token);
    })
    .catch(err => {
      console.log('Couldn\'t get messaging permissions with error', err);
    });

    messaging.onMessage(payload => {
      console.log('RECEIVED MESSAGE: ' + payload);
    });
    
  },   

   syncTime({commit, dispatch}) {
    this.$firebase.database().ref('.info/serverTimeOffset').on("value", function(snap) {
      console.log('SERVER TIME OFFSET: ' + snap.val());
      commit(types.SET_SERVER_TIME_OFFSET, snap.val());
    });
   }
}

// mutations
const mutations = {
  [types.FIREBASE_CONNECTED](state, connected) {
     state.connected = connected;
  },
  [types.SIGNED_IN_USER](state, user) {
     state.user = user;
  },
  [types.SIGN_IN_FAIL](state, err) {
    state.signInError = err;
  },
  [types.SIGNED_OUT](state) {
     state.user = {};
  },
  [types.REGISTER_FAIL](state, err) {
    state.registerError = err;
  },
  [types.SHOW_LIVE_BALANCE](state, live) {
    if(live) {
      state.showBalance = -1;
    }
    else {
      state.showBalance = state.balanceObj[".value"] ? state.balanceObj[".value"] : 0
    }
  },
  [types.SET_SERVER_TIME_OFFSET](state, serverTimeOffset) {
    state.serverTimeOffset = serverTimeOffset;
  },
}

export default {
  state,
  getters,
  actions,
  mutations
}