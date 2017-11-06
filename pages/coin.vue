<template>
	<div class="coin-page">
		<coin-info :name="name" />
  	</div>
</template>

<script>
import Vue from 'vue'


import CoinInfo from '~/components/CoinInfo.vue'

if (process.browser) {
  Vue.use(require('vuetable-2'))
}

export default {
	components: {
		CoinInfo
	},
	data() {
		return {
	 		name: this.$route.query.name
		}
	}
}
</script>

<style>

</style>