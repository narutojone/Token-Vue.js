import { firebaseAction } from 'vuexfire'

import Vue from 'vue';

const types = {
  SET_REVIEW_SUBMISSION_STATE: 'SET_REVIEW_SUBMISSION_STATE'
}


const state = () => ({
  reviewSubmissionStates: {}
});

// getters
const getters = {
}

// actions
const actions = {

    addReview({ rootState, commit }, {walletName, review}) {
      if(!rootState.user.user || !rootState.user.user.uid || !review.rating || review.rating < 0 || review.rating > 5) {
        commit(types.SET_REVIEW_SUBMISSION_STATE, { walletName, submissionState: {id: 'INVALID'} });
        return;
      }

   


      review = {...review, name: rootState.user.user.name, photoURL: rootState.user.user.photoURL, time: {".sv": "timestamp"}};

      

        commit(types.SET_REVIEW_SUBMISSION_STATE, { walletName, submissionState: {id: 'PENDING'} })
        this.$firebase.database().ref('walletReviews/' + walletName + '/' + rootState.user.user.uid).set(review)
        .then(() => {
          commit(types.SET_REVIEW_SUBMISSION_STATE, { walletName, submissionState: {id: 'SUCCESS'} });
        })
        .catch(err => {
          commit(types.SET_REVIEW_SUBMISSION_STATE, { walletName, submissionState: {id: 'ERROR', err} })
        });

      
    },   

}

// mutations
const mutations = {
  [types.SET_REVIEW_SUBMISSION_STATE](state, { coinName, submissionState }) {
    Vue.set(state.reviewSubmissionStates, coinName, submissionState);
  },
}

export default {
  state,
  getters,
  actions,
  mutations
}