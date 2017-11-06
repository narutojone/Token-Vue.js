import { firebaseAction } from 'vuexfire'

const types = {
  SET_CURRENT_BINDING_UID: 'SET_CURRENT_BINDING_UID'
}


const state = () => ({
    portfolio: {},
    currendBindingUid: null
});

// getters
const getters = {
  getPortfolio: state => state.portfolio,
  getCurrentBindingUid: state => state.currentBindingUid
}

// actions
const actions = {

   bindPortfolio: firebaseAction(({ rootState, state, commit, bindFirebaseRef, unbindFirebaseRef }, fb) => {
    console.log('binding portfolio...');
    let uid = null;
    if(!uid) {
      if(rootState.user && rootState.user.user.uid) {
        console.log('setting to', rootState.user.user);
        uid = rootState.user.user.uid;
      }
      else {
        return;
      }
    }

      console.log('binding portfolio from ' + state.currentBindingUid + ' to ' + uid);

      if(state.currentBindingUid != uid) {
        commit(types.SET_CURRENT_BINDING_UID, uid);
        bindFirebaseRef('portfolio', fb.database().ref(`portfolios/${uid}`));
      }
  }),

  addTrade ({ commit, rootState, state, dispatch }, {trade, fb}) {
    if(!rootState.user || !rootState.user.user) {
      return;
    }



    let { uid, name, photoURL } = rootState.user.user;

    let tradeRef = fb.database().ref(`portfolios/${uid}/trades`).push();
    let tradeId = tradeRef.key;

    fb.database().ref(`portfolios/${uid}`).update({
      uid,
      name,
      photoURL,
      [`trades/${tradeId}`]: trade
    })
  },

  removeTrade({ commit, rootState }, { tradeId, fb }) {
    if(!rootState.user || !rootState.user.user) {
      return;
    }

    let uid = rootState.user.user.uid;

    console.log(`removing trade ${uid} - ${tradeId}`)

    this.$firebase.database().ref(`portfolios/${uid}/trades/${tradeId}`).remove();
  }
}

// mutations
const mutations = {
  [types.SET_CURRENT_BINDING_UID](state, uid) {
    console.log('SET BINDING UID', uid);
    state.currentBindingUid = uid;
  }
}

export default {
  state,
  getters,
  actions,
  mutations
}