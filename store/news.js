import { firebaseAction } from 'vuexfire'

import axios from 'axios';

const types = {
  SET_NEWS: 'SET_NEWS',
}


const state = () => ({
    news: {}
});

// getters
const getters = {
  getNews: state => state.news
}

let newsTimer;

// actions
const actions = {

  //  bindNews: firebaseAction(({ state, bindFirebaseRef }, fb) => {
  //     console.log('binding news');
  //     if(!Object.keys(state.news).length) {
  //       bindFirebaseRef('news', fb.database().ref(`news`));
  //     }
  // }),

  bindNews({ commit }, fb) {
    getNews().then(news => {
      let aggregatedNews = aggregateNews(news);

      commit(types.SET_NEWS, aggregatedNews);
    });

    if(newsTimer) return;
    newsTimer = setInterval(() => {

      getNews().then(news => {
        let aggregatedNews = aggregateNews(news);

        commit(types.SET_NEWS, aggregatedNews);
      })
      .catch(err => {});

    }, 30000);
  }
   

}

// mutations
const mutations = {
  [types.SET_NEWS](state, news) {
    state.news = news;
  }
}

export default {
  state,
  getters,
  actions,
  mutations
}

const NEWS_ENDPOINT = 'https://min-api.cryptocompare.com/data/news/';

function getNews() {
  return axios.get(NEWS_ENDPOINT).then( (response) => {
    console.log('Got news resposne', response);
    if(!response.data || !response.data.length) throw new Error('Not correct response');
    return response.data;
  });
}

function aggregateNews(news) {
    let bySource = {};

    news.forEach(newsItem => {
      let key = sanitize(newsItem.source)
      if(!bySource[key]) {
        bySource[key] = {};
        bySource[key].items = [];
      }
      if(!bySource[key].source_info) {
        bySource[key].source_info = newsItem.source_info;
      }

      bySource[key].items.push(newsItem);
    });

    //console.log('News providers:', Object.keys(bySource));
  
    return bySource;
}

function sanitize(prop) {
  return prop;
  // return prop.replace('.',',').replace('[','(').replace(']',')').replace(/\$/g, '£').replace(/\//g, '|')
}