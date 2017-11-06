import { firebaseAction } from 'vuexfire'

import axios from 'axios'

const types = {
  SET_GLOBAL_DATA: 'SET_GLOBAL_DATA'
}


const state = () => ({
    globalData: {}
});

// getters
const getters = {
  getGlobalData: state => state.globalData
}

// actions
const actions = {

   bindGlobalData: firebaseAction(({ commit, bindFirebaseRef }, fb) => {
      // console.log('binding coin infos');
      // bindFirebaseRef('globalData', fb.database().ref(`globalData`));

      axios.get('https://api.coinmarketcap.com/v1/global/').then(response => {
        commit(types.SET_GLOBAL_DATA, response.data);
      });
  }),
   

}

// mutations
const mutations = {
  [types.SET_GLOBAL_DATA](state, globalData) {
    state.globalData = globalData;
  }
}

export default {
  state,
  getters,
  actions,
  mutations
}