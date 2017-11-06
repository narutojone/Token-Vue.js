<template>
	<div class="trade-history">
		<b-table striped hover show-empty
           :items="mappedTrades"
           :fields="fields"
           :current-page="currentPage"
           :per-page="perPage"
           :filter="filter"
           :sort-by.sync="sortBy"
           :sort-desc.sync="sortDesc">
	
  		<template slot="marketPair" scope="row">{{row.value}}</template>
	    <template slot="exchange" scope="row">{{row.value.name}}</template>
	    <template slot="amount" scope="row">{{row.value}}</template>
	    <template slot="price" scope="row"><a :href="row.value.link">{{row.value.price}}</a></template>
	    <template slot="type" scope="row"><a :href="row.value.link">{{row.value.vol}}</a></template>
	  </b-table>
	</div>
</template>

<script>
import { mapGetters } from 'vuex'

export default {
	name: 'user-portfolio',
	props: {
		trades: {
			type: Array,
			required: true
		}
	},
	computed: {
		...mapGetters(coinInfos: 'coinInfos/getCoinInfos'),
		mappedTrades() {
			if(!this.trades || !this.trades.length) return [];

			let mappedTrades = this.trades.slice();

			mappedTrades.sort((a,b) => b.time - a.time);

			return mappedTrades.map(trade => {

			});
		}
	},
	data() {
		return {
			fields: {
			  marketPair: { label: 'Market Pair', sortable: true },
		      exchange: { label: 'Exchange', sortable: true },
		      amount: { label: 'Amount', sortable: true },
		      price: { label: 'Price', sortable: true },
		      type:  { label: 'Buy/Sell', sortable: true },
		    },
		    currentPage: 1,
		    perPage: 50,
		    totalRows: 2000, //items.length
		    pageOptions: [{text:5,value:5},{text:10,value:10},{text:15,value:15}],
		    sortBy: null,
		    sortDesc: false,
		    filter: null,
		    modalDetails: { index:'', data:'' }
		}
	}
}
</script>


<style>
</style>