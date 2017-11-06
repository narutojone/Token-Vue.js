<template>
	<div class="portfolio-page">
		<portfolio-manager />
  	</div>
</template>

<script>
import Vue from 'vue'

import PortfolioManager from '~/components/PortfolioManager.vue'

if (process.browser) {
  Vue.use(require('vuetable-2'))
}

export default {
	components: {
		PortfolioManager
	},
	data() {
		return {
			uid: this.$route.query.uid
		}
	}
}
</script>

<style>

</style>