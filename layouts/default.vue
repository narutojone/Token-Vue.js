<template>
  <div class="viewport">
    <div class="app">
      <navbar />
      <nuxt/>
      <my-footer />
    </div>
  </div>
</template>

<script>
import Navbar from '~/components/Navbar'
import MyFooter from '~/components/MyFooter'

import Vue from 'vue'



export default {
  components: {
    Navbar,
    MyFooter
  },
  created() {
    //TODO: This should be done by the plugin???
    this.$store.$firebase = this.$firebase;


    this.$store.dispatch('user/setAuthStateObserver');
    this.$store.dispatch('user/syncTime');

    this.$store.dispatch('coinInfos/bindCoinInfos', this.$firebase);
    this.$store.dispatch('globalData/bindGlobalData', this.$firebase);
    this.$store.dispatch('exchanges/loadExchangePairs', this.$firebase);
    this.$store.dispatch('ratings/bindCoinRatings', this.$firebase);
  },
}
</script>

<style>
html {
  font-family: "Source Sans Pro", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  font-size: 14px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: border-box;
  margin: 0;
}

.viewport, .app {
  width: 100%;
  max-width: 100%;
  overflow: hidden;
}

.positive {
  color: rgba(17,198,75,.8);
}
.negative {
  color: rgba(199, 32,39,.9);
}

.btn:hover {
  cursor: pointer;
}

.tr-bg {
  background: #255573 !important;
  color: #eaeaea;
}

.mdl-title {
  background: #255573;
  padding: 10px 15px 6px 15px;
}

.mdl-body {
}

.mdl-footer {
  background: rgba(100,100,100,.05);
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding: 8px;
}


</style>
