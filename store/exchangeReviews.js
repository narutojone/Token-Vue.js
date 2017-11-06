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

    addReview({ rootState, commit }, {exchangeName, review}) {
      if(!rootState.user.user || !rootState.user.user.uid || !review.rating || review.rating < 0 || review.rating > 5) {
        commit(types.SET_REVIEW_SUBMISSION_STATE, { exchangeName, submissionState: {id: 'INVALID'} });
        return;
      }
      console.log('adding review', rootState.user.user.uid, exchangeName, review);


      review = {...review, name: rootState.user.user.name, photoURL: rootState.user.user.photoURL, time: {".sv": "timestamp"}};

        console.log('Writing to db...');

        commit(types.SET_REVIEW_SUBMISSION_STATE, { exchangeName, submissionState: {id: 'PENDING'} })
        this.$firebase.database().ref('exchangeReviews/' + exchangeName + '/' + rootState.user.user.uid).set(review)
        .then(() => {
          commit(types.SET_REVIEW_SUBMISSION_STATE, { exchangeName, submissionState: {id: 'SUCCESS'} });
        })
        .catch(err => {
          commit(types.SET_REVIEW_SUBMISSION_STATE, { exchangeName, submissionState: {id: 'ERROR', err} })
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