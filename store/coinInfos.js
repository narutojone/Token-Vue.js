import { firebaseAction } from 'vuexfire'

import axios from 'axios'

const image_map_raw = require('~/assets/image_map.json');
const image_map_raw1 = require('~/assets/new.json');
let image_map = {};
Object.keys(image_map_raw).forEach(key => {
  //image_map[key] = 'https://cryptocompare.com' + image_map_raw[key];
  image_map[key] = 'https://tokenrecap.com/images/'+image_map_raw1[key];
});
image_map['BitConnect'] = 'https://steemit-production-imageproxy-upload.s3.amazonaws.com/DQmVz9gbM91rS1Hzfng3vgQV4cUjxaDM9MWn2dof4LToADE'
image_map['IOTA'] = 'https://lh3.googleusercontent.com/EAay5f1pkrwK8j9RiuavOJl74T45osxw-h_WkUpLQHyDw4zlMDzuiccGA_xxZGsHPsd1=w100'


const types = {
  SET_COIN_INFOS: 'SET_COIN_INFOS'
}


const state = () => ({
    coinInfos: [],
    coinInfosByName: {},
    coinInfosBySymbol: {}
});

// getters
const getters = {
  getCoinInfos: state => state.coinInfos,
  getCoinInfosByName: state => state.coinInfosByName,
  getCoinInfosBySymbol: state => state.coinInfosBySymbol
}

// actions
const actions = {
  


   bindCoinInfos: firebaseAction(({ state, commit, bindFirebaseRef }, fb) => {
      console.log('binding coin infos');
      // fb.database().ref('coinInfos').once('value')
      // .then(snap => {
      //   let coininfos = snap.val();

      //   console.log('Got coin infos: ', coininfos);
        
      //   commit(types.SET_COIN_INFOS, Object.keys(coininfos).map(key => coininfos[key]));
      // });
      axios.get('https://api.coinmarketcap.com/v1/ticker/?convert=ETH')
      .then(response => {
        let mapped = response.data.filter(coinInfo => coinInfo.name in image_map).map(coinInfo => ({...coinInfo, image_url: image_map[coinInfo.name]}))

        commit(types.SET_COIN_INFOS, mapped);
      });


      // bindFirebaseRef('coinInfos', fb.database().ref(`coinInfos`));
    }),

   

}

// mutations
const mutations = {
  [types.SET_COIN_INFOS](state, coininfos) {
    state.coinInfos = coininfos;
    let byName = {};
    let bySymbol = {};

    state.coinInfos.forEach(coinInfo => {
      byName[coinInfo.name] = coinInfo;
      bySymbol[coinInfo.symbol] = coinInfo;
    });

    state.coinInfosByName = byName;
    state.coinInfosBySymbol = bySymbol;
  },
}

export default {
  state,
  getters,
  actions,
  mutations
}