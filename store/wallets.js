import { firebaseAction } from 'vuexfire'

import Vue from 'vue'

import axios from 'axios'

const wallets = require('~/assets/wallets.json');

const types = {
}


const state = () => ({
    wallets: wallets
});

// getters
const getters = {
  getWallets: state => state.wallets
}

// actions
const actions = {

}

// mutations
const mutations = {
}

export default {
  state,
  getters,
  actions,
  mutations
}