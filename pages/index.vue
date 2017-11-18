<template>
  <section class="">
    <div class="landing">

          <b-card-group deck class="top-coins">
              <b-card v-for="topCoin in topCoins"
                      header-tag="header"
                      footer-tag="footer" class="coin-summary" :class="topCoin.positive ? 'positive' : 'negative'">
                  <div slot="header"
                      class="coin-header">
                      <div class="coin-market-name">{{topCoin.title}}
                      </div>
                      <small class="coin-volume">
                        Vol: ${{formatDecimal(topCoin.volume, 0)}}
                      </small>
                  </div>
                  <em slot="footer">${{topCoin.price}} <span :class="topCoin.positive ? 'positive' : 'negative'">({{topCoin.change}}%)</span></em>
                  
                  <sparkline class="top-coin-sparkline" :data="topCoin.data" :sym="topCoin.sym" :baseColor="topCoin.positive ? { r: 11, g: 145, b: 57 } : { r: 163, g: 15, b: 21 }" />
              </b-card>
          </b-card-group>

          <div class="container whats-new-container mt-4">
            <h2 class="font-weight-bold">
              <i class="fa fa-newspaper-o" aria-hidden="true"></i> What's New In Crypto? {{currentDate}}
            </h2>

              <adsense
                      ad-client="ca-pub-3140280192160176"
                      ad-slot="7961337044"
                      ad-style="display: block"
                      ad-format="auto">
              </adsense>

            <div class="row whats-new-content">
              <div class="square" v-for="newsSource in mappedNews">
                  <div class="header">
                    <img class="news-source-image" :src="newsSource.source_info.img">
                    </img>
                    <h3>
                      <a :href="newsSource.items.length ? newsSource.items[0].guid : ''" target="_blank">
                        {{newsSource.source_info.name}}
                      </a>
                    </h3>
                  </div>
                  <div class="content">
                      <div class="list-group">
                        <a v-for="newsItem in newsSource.items" :href="newsItem.guid" class="list-group-item list-group-item-action flex-column align-items-start" target="_blank">
                          
                          <div class="d-flex w-100 justify-content-between">
                            <img :src="newsItem.imageurl" alt="..." class="img-thumbnail" />
                            <h5 class="mb-1">{{newsItem.title}}</h5>
                            <small><timeago :since="newsItem.published_on*1000" :auto-update="60" /></small>
                          </div>


                          <p class="mb-1 news-body" v-html="newsItem.body"></p>
                          <small>{{newsItem.subTitle}}</small>
                        </a>
                      </div>
                  </div>
              </div>
            </div>
          </div>
        </div>

    </div>
  </section>
</template>

<script>

import Vue from 'vue'

import Logo from '~/components/Logo.vue'

import Sparkline from '~/components/Sparkline.vue'

import { mapGetters } from 'vuex'

import VueTimeago from 'vue-timeago'
import VueAdsense from '~/node_modules/vue-adsense/VueAdsense.vue'

Vue.component('adsense', VueAdsense)

import numeral from 'numeral'

var dateFormat = require('dateformat');

Vue.use(VueTimeago, {
  name: 'timeago', // component name, `timeago` by default
  locale: 'en-US',
  locales: {
    // you will need json-loader in webpack 1
    'en-US': require('vue-timeago/locales/en-US.json')
  }
})

const COLOR_POSITIVE = { r: 11, g: 67, b: 145 };
const COLOR_NEGATIVE = { r: 163, g: 15, b: 21 };

const TOP_COIN_SYMBOLS = ['BTC', 'ETH', 'LTC', 'BCH'];
const SYM_MAP = { 'BTC': 'Bitcoin', 'ETH': 'Ethereum', 'LTC': 'Litecoin', 'BCH': 'Bitcoin Cash' }
export default {
  components: {
    Logo,
    Sparkline,
  },
  computed: {
    ...mapGetters({news: 'news/getNews', getChart: 'charts/getChart', getSparklineChart: 'charts/getSparklineChart', coinInfos: 'coinInfos/getCoinInfos'}),
    formatDecimal() {
        return (currency, decimals) => {
          if(!decimals || decimals < 0) decimals = 2;

          let trailingZeroes = '';
          for(var i = 0; i < decimals; i++) {
            trailingZeroes += '0';
          }

          return numeral(currency).format('0,0[.]' + trailingZeroes);
        };
      },
    mappedNews() {
      return Object.keys(this.news).filter(key => key != '.key').map(sourceKey => this.news[sourceKey]);
    },
    topCoins() {
      return TOP_COIN_SYMBOLS.map(sym => {
        let chart = this.getSparklineChart(sym, 'USD');
        if(!chart) chart = [];

        let i = 0;
        chart = chart.map(candle => [dateFormat(new Date(candle.time * 1000), "mmm dS, hh:MM"), candle.close]);

        let coinInfo = this.coinInfos ? this.coinInfos.find(coin => coin.symbol == sym) : {};

        return {
          title: sym + '-USD',
          sym,
          data: chart,
          price: chart.length ? chart[chart.length - 1][1] : 0,
          change: coinInfo ? coinInfo.percent_change_24h : 0,
          positive: coinInfo ? !coinInfo.percent_change_24h.includes('-') : true,
          volume: coinInfo ? coinInfo['24h_volume_usd'] : 0
        }
      });
    },
    currentDate() {
      return dateFormat(new Date(), "dd/mm/yyyy")
    }
  },
  mounted() {
    TOP_COIN_SYMBOLS.forEach(sym => {
      this.$store.dispatch('charts/loadSparklineChart', {fsym: sym, tsym: 'USD'});
    });

    this.$store.dispatch('news/bindNews', this.$firebase);
  },
  data() {
    return {
    }
  }
}
</script>

<style>
.container {
}

.landing {
  margin: 0 12px;
  text-align: center;
}


/*###Desktops, big landscape tablets and laptops(Large, Extra large)####*/
@media screen and (min-width: 1024px){
  .coin-summary {
    max-width: 25%;
  }
}

/*###Tablet(medium)###*/
@media screen and (min-width : 768px) and (max-width : 1023px){
  .coin-summary {
    min-width: 33%;
  }
}

/*### Smartphones (portrait and landscape)(small)### */
@media screen and (min-width : 0px) and (max-width : 767px){
  .coin-summary {
    min-width: 50%;
  }
}

.coin-summary {
}

.top-coins {
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;

  background-color: rgba(27,81,171, .1);
  padding: 10px;
}

.coin-top {
  background-color: rgba(23,56,200,.6);

  display: flex;
  justify-content: space-between;
}

.coin-header {
  display: flex;
  justify-content: space-between;
  color: black !important;
}

.coin-market-name {
  font-weight: strong;
}



.top-coin-sparkline {
  height: 150px;

  width: 100%;
  flex: 1;
}

.card-body {
  padding: 0;
}

.card-footer {
  border-top: none;
  color: black !important;
}

.coin-summary.positive > .card-footer {
  background: linear-gradient(white, rgba(32,137,78,.1));
}

.coin-summary.negative > .card-footer {
  background: linear-gradient(white, rgba(137,17,23,.1));
}

.img-thumbnail {
  height: 60px;
}



/**
Squares
*/

/*###Desktops, big landscape tablets and laptops(Large, Extra large)####*/
@media screen and (min-width: 1024px){
  .square {
    width: 30%;
    padding-bottom: 30%;
  }
}
/*###Tablet(medium)###*/
@media screen and (min-width : 768px) and (max-width : 1023px){
  .square {
    width: 45%;
    padding-bottom : 45%; /* = width for a 1:1 aspect ratio */
  }
}
/*### Smartphones (portrait and landscape)(small)### */
@media screen and (min-width : 0px) and (max-width : 767px){
  .square {
    width: 100%;
    padding-bottom : 100%; /* = width for a 1:1 aspect ratio */
  }
}

.square {
    float:left;
    position: relative;
    margin:1.66%;
    overflow:hidden;
    border: 2px solid rgba(17,139,193,.4);
    border-radius: 5px;
}

.square .header {
  height: 40px;
  padding: 5px;
  display: flex;
  justify-content: center;
  border: 1px solid rgba(0,0,0,.125);
}

.news-source-image {
  height: 30px;
  display: inline-block;
  padding-right: 10px;
}

.square .content {
    position:absolute;
    height:calc(100%-40px); /* = 100% - 2*5% padding */
    width:100%; /* = 100% - 2*5% padding */
    overflow: auto;
}

.news-body {
  text-align: left;
}


/*  For responsive images */


</style>
