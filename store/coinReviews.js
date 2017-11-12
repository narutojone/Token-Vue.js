import { firebaseAction } from 'vuexfire'

import Vue from 'vue';

const types = {
  SET_COIN_REVIEWS: 'SET_COIN_REVIEWS',
  SET_REVIEW_SUBMISSION_STATE: 'SET_REVIEW_SUBMISSION_STATE',
  SET_CURRENT_BOUND_COIN: 'SET_CURRENT_BOUND_COIN'
}


const state = () => ({
    coinReviews: {},
    reviewSubmissionStates: {},
    boundCoinReviews: [],
    currentBoundCoin: null
});

// getters
const getters = {
  getCoinReviews(state) {
    return coinName => {
      if(state.currentBoundCoin == coinName) {
        return state.boundCoinReviews;
      }
      return state.coinReviews[coinName];
    }
  },
  getCoinReviewSubmissionState(state) {
    return coinName => state.reviewSubmissionStates[coinName] || {};
  },
  getBoundCoinReviews(state) {
    return coinName => state.boundCoinReviews || {};
  }
}

// actions
const actions = {
  
   bindCoinReviews: firebaseAction(({ state, commit, bindFirebaseRef }, { fb, coinName }) => {
        console.log('binding coin reviews', coinName);
        if(state.currentBoundCoin != coinName) {
          console.log('Bind')
          commit(types.SET_CURRENT_BOUND_COIN, coinName);
          bindFirebaseRef('boundCoinReviews', fb.database().ref(`coinReviews/${coinName}`));
        }
   }),

   loadCoinReviews({ store, commit }, coinName) {
      console.log('loading coin reviews', coinName);

      this.$firebase.database().ref('coinReviews/' + coinName).once('value')
      .then(snap => {
        console.log('Got coin reviews:', snap.val());
        commit(types.SET_COIN_REVIEWS, { coinName, reviews: snap.val() });
      })
      .catch(err => {
      });
    },

    addReview({ rootState, commit }, {coinName, review}) {
      if(!rootState.user.user || !rootState.user.user.uid || !review.rating || review.rating < 0 || review.rating > 5) {
        commit(types.SET_REVIEW_SUBMISSION_STATE, { coinName, submissionState: {id: 'INVALID'} });
        return;
      }

      console.log('adding review', rootState.user.user.uid, coinName, review);


      review = {...review, name: rootState.user.user.name, photoURL: rootState.user.user.photoURL, time: {".sv": "timestamp"}};

        console.log('Writing to db...');

        commit(types.SET_REVIEW_SUBMISSION_STATE, { coinName, submissionState: {id: 'PENDING'} })
        this.$firebase.database().ref('coinReviews/' + coinName + '/' + rootState.user.user.uid).set(review)
        .then(() => {
          commit(types.SET_REVIEW_SUBMISSION_STATE, { coinName, submissionState: {id: 'SUCCESS'} });
        })
        .catch(err => {
          commit(types.SET_REVIEW_SUBMISSION_STATE, { coinName, submissionState: {id: 'ERROR', err} })
        });

      
    },

    replyReview({ rootState, commit }, { coinName, reviewId, replyBody }) {
      if(!rootState.user.user || !rootState.user.user.uid) return;

      const { uid, name, photoURL } = rootState.user.user;

      const reply = {
        body: replyBody,
        uid,
        name,
        photoURL,
        time: { ".sv": "timestamp" }
      };

      this.$firebase.database().ref(`coinReviews/${coinName}/${reviewId}/replies`).push(reply);
    },

    rateReview({ rootState, commit }, { coinName, reviewId, like }) {
      if(!rootState.user.user || !rootState.user.user.uid) return;

      const { uid, name, photoURL } = rootState.user.user;

      let endPath = like ? 'likes' : 'dislikes';

      this.$firebase.database().ref(`coinReviews/${coinName}/${reviewId}/${endPath}`).update({
        [uid]: { ".sv": "timestamp" }
      });
    },

    
}

// mutations
const mutations = {
  [types.SET_COIN_REVIEWS](state, { coinName, reviews }) {
    Vue.set(state.coinReviews, coinName, reviews);
  },
  [types.SET_REVIEW_SUBMISSION_STATE](state, { coinName, submissionState }) {
    Vue.set(state.reviewSubmissionStates, coinName, submissionState);
  },
  [types.SET_CURRENT_BOUND_COIN](state, coinName) {
    state.currentBoundCoin = coinName;
  }
}

export default {
  state,
  getters,
  actions,
  mutations
}