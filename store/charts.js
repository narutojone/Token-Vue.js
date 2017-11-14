import { firebaseAction } from 'vuexfire'

import axios from 'axios'

import Vue from 'vue'

const types = {
  SET_CHART: 'SET_CHART',
  SET_SPARKLINE_CHART: 'SET_SPARKLINE_CHART'
}


const state = () => ({
    charts: {},
    sparklineCharts: {}
});

// getters
const getters = {
  getChart(state) {
    return (fsym, tsym, interval) => state.charts[fsym] ? (state.charts[fsym][tsym] ? (state.charts[fsym][tsym][interval] ? state.charts[fsym][tsym][interval] : null) : null) : null;
  },
  getSparklineChart(state) {
    return (fsym, tsym) => state.sparklineCharts[fsym] ? (state.sparklineCharts[fsym][tsym] ? state.sparklineCharts[fsym][tsym] : null) : null;
  }
}

// actions
const actions = {

   loadChart({ store, state, commit }, { fsym, tsym, interval, forceReload }) {
      
      if(interval != 'day' && interval != 'hour' && interval != 'minute') {
        return;
      }

      if(!forceReload && state.charts[fsym] && state.charts[fsym][tsym] && state.charts[fsym][tsym][interval]) {
       
        return;
      }

    

      axios.get(`https://min-api.cryptocompare.com/data/histoday?fsym=${fsym}&tsym=${tsym}&allData=true`)
      .then(response => {
        let chart = response.data.Data;      
        commit(types.SET_CHART, { fsym, tsym, interval, chart });
      });
    },

    loadSparklineChart({ store, state, commit }, { fsym, tsym, forceReload }) {
    

      if(!forceReload && state.sparklineCharts[fsym] && state.sparklineCharts[fsym][tsym]) {     
        return;
      }

     

      axios.get(`https://min-api.cryptocompare.com/data/histohour?fsym=${fsym}&tsym=${tsym}&limit=24&aggregate=1`)
      .then(response => {
        let chart = response.data.Data;

        commit(types.SET_SPARKLINE_CHART, { fsym, tsym, chart });
      });
    },
   

}

// mutations
const mutations = {
  [types.SET_CHART](state, { fsym, tsym, interval, chart }) {
   
    if(!state.charts[fsym]) Vue.set(state.charts, fsym, {});
    if(!state.charts[fsym][tsym]) Vue.set(state.charts[fsym], tsym, {});
    Vue.set(state.charts[fsym][tsym], interval, chart);
  },
  [types.SET_SPARKLINE_CHART](state, { fsym, tsym, chart }) {
 
    if(!state.sparklineCharts[fsym]) Vue.set(state.sparklineCharts, fsym, {});
    Vue.set(state.sparklineCharts[fsym], tsym, chart);
  },
}

export default {
  state,
  getters,
  actions,
  mutations
}