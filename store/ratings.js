import { firebaseAction } from 'vuexfire'

const types = {
}


const state = () => ({
    coinRatings: {},
    exchangeRatings: {},
    walletRatings: {},
});

// getters
const getters = {
  getCoinRatings: state => state.coinRatings,
  getCoinRatingForCoin: state => {
    return coinName => {
      return state.coinRatings[coinName];
    }
  },

  getExchangeRatings: state => state.exchangeRatings,
  getExchangeRatingForExchange: state => {
    return exchangeName => {
      return state.exchangeRatings[exchangeName];
    }
  },

  getWalletRatings: state => state.walletRatings,
  getWalletRatingForWallet: state => {
    return walletNaame => {
      return state.exchangeRatings[walletName];
    }
  },
}

// actions
const actions = {
  
   bindCoinRatings: firebaseAction(({ state, commit, bindFirebaseRef }, fb) => {
      console.log('binding coin ratings');

      if(!Object.keys(state.coinRatings).length) {
        bindFirebaseRef('coinRatings', fb.database().ref('coinRatings'));
      }

    }),

   bindExchangeRatings: firebaseAction(({ state, commit, bindFirebaseRef }, fb) => {
      console.log('binding exchange ratings');

      if(!Object.keys(state.exchangeRatings).length) {
        bindFirebaseRef('exchangeRatings', fb.database().ref('exchangeRatings'));
      }

    }),

   bindWalletRatings: firebaseAction(({ state, commit, bindFirebaseRef }, fb) => {
      console.log('binding exchange ratings');

      if(!Object.keys(state.walletRatings).length) {
        bindFirebaseRef('walletRatings', fb.database().ref('walletRatings'));
      }

    }),

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