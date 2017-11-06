import { firebaseAction } from 'vuexfire'

import Vue from 'vue'

import axios from 'axios'

const exchanges = require('~/assets/exchanges.json');

const types = {
	SET_EXCHANGE_PAIR_DATA: 'SET_EXCHANGE_PAIR_DATA',
	SET_EXCHANGE_PAIRS: 'SET_EXCHANGE_PAIRS',
}


const state = () => ({
    exchangePairsData: {},
    exchangePairs: {},
    coinExchanges: {},
    exchanges: exchanges
});

// getters
const getters = {
  getAllExchangePairsData: state => state.exchangePairsData,
  getExchangePairsData: state => {
  	return (fsym) => {
  		if(!state.exchangePairsData[fsym]) return {};

  		return state.exchangePairsData[fsym];
  	}
  },
  getExchangePairData: state => {
  	return (fsym, tsym) => {
  		if(!state.exchangePairsData[fsym] || !state.exchangePairsData[fsym][tsym]) return {};
  		
  		return state.exchangePairsData[fsym][tsym];
  	}
  },

  getExchangePairs: state => state.exchangePairs,

  getCoinExchangesForCoin: state => {
  	return (coinName) => {
  		return state.coinExchanges[coinName] ? state.coinExchanges[coinName] : {}
  	}
  },

  getExchanges: state => state.exchanges
}

// actions
const actions = {

	loadExchangePairData({ state, commit }, { fb, fsym, tsym }) {
		if(!state.exchangePairsData[fsym] && !state.exchangePairsData[tsym]) {
			axios.get(`https://min-api.cryptocompare.com/data/top/exchanges?fsym=${fsym}&tsym=${tsym}`)
			.then(response => {
				commit(types.SET_EXCHANGE_PAIR_DATA, { fsym, tsym, data: response.data.Data });
			});
		}
	},

	loadExchangePairs({ state, commit }, fb) {
		if(!Object.keys(state.exchangePairs).length) {
			axios.get(`https://min-api.cryptocompare.com/data/all/exchanges`)
			.then(response => {
				commit(types.SET_EXCHANGE_PAIRS, { exchangePairs: response.data });
			});
		}	
	}



}

// mutations
const mutations = {
	[types.SET_EXCHANGE_PAIR_DATA](state, { fsym, tsym, data }) {
		if(!state.exchangePairsData[fsym]) Vue.set(state.exchangePairsData, fsym, {});
		if(!state.exchangePairsData[fsym][tsym]) Vue.set(state.exchangePairsData[fsym], tsym, data);
	},
	[types.SET_EXCHANGE_PAIRS](state, { exchangePairs }) {
		console.log('setting exchange pairs', exchangePairs)
		state.exchangePairs = exchangePairs;


		let coinExchanges = {};
		Object.keys(exchangePairs).forEach(exchangeName => {
			let pairs = exchangePairs[exchangeName];

			//console.log('pairs', pairs);

			if(!pairs) return;

			Object.keys(pairs).forEach(fromCoin => {
				let toCoins = pairs[fromCoin];

				if(!coinExchanges[fromCoin]) {
					coinExchanges[fromCoin] = {};
				}
				if(!coinExchanges[fromCoin][exchangeName]) {
					coinExchanges[fromCoin][exchangeName] = [];
				}

				toCoins.forEach(toCoin => {
					if(!coinExchanges[toCoin]) {
						coinExchanges[toCoin] = {};
					}
					if(!coinExchanges[toCoin][exchangeName]) {
						coinExchanges[toCoin][exchangeName] = [];
					}

					coinExchanges[toCoin][exchangeName].push(fromCoin);
					coinExchanges[fromCoin][exchangeName].push(toCoin);
				})

			});
		});

		console.log('SETTING COIN EXCHANGES', coinExchanges);

		state.coinExchanges = coinExchanges;
	},
}

export default {
  state,
  getters,
  actions,
  mutations
}