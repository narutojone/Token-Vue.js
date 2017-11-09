<template>
	<div class="coins-page">

		<div class="coins-content-container">
		  <div class="my-1 row m-2">
		    <div class="col-md-12">
		      <b-form-fieldset horizontal label="Filter" :label-cols="1">
		        <b-form-input v-model="filter" placeholder="Type to Search" />
		      </b-form-fieldset>
		    </div>
		  </div>

		<b-table striped hover show-empty
	           :items="mappedCoinInfo"
	           :fields="fields"
	           :current-page="currentPage"
	           :per-page="perPage"
	           :filter="filter"
	           :sort-by.sync="sortBy"
	           :sort-desc.sync="sortDesc"
	  >
		
	  		<template slot="rank" scope="row">{{row.value}}</template>
		    <template slot="name" scope="row"><img class="coin-img" :src="row.value.image_url"></img><a :href="row.value.link">{{row.value.name}}</a></template>
		    <template slot="marketCap" scope="row">{{row.value}}</template>
		    <template slot="price" scope="row"><a :href="row.value.link">{{row.value.price}}</a></template>
		    <template slot="volume_24h" scope="row"><a :href="row.value.link">{{row.value.vol}}</a></template>
		   	<template slot="circulatingSupply" scope="row"><a :href="row.value.link">{{row.value.supply}} {{row.value.symbol}}</a></template>
		    <template slot="chg_24h" scope="row"><span :class="row.value.includes('-') ? 'negative' : 'positive'">{{row.value}}</span></template>
		    <template slot="chg_1h" scope="row"><span :class="row.value.includes('-') ? 'negative' : 'positive'">{{row.value}}</span></template>
		    <template slot="rating" scope="row"><star-rating :star-size="20" :increment="0.01" :fixed-points="2" :rating="row.value" :read-only="true" :show-rating="false"></star-rating></template>
		  </b-table>

		  <div class="row my-1">
		    <div class="col-12 pagination-container">
		      <b-pagination :total-rows="totalRows" :per-page="perPage" v-model="currentPage" :hide-ellipsis="true" :limit="10" class="align-middle" />
		    </div>
		  </div>
			<div>
				<adsense
						ad-client="ca-pub-3140280192160176"
						ad-slot="7961337044"
						ad-style="display: block"
						ad-format="auto">
				</adsense>
			</div>

	  </div>
	</div>
</template>

<script>
var numeral = require('numeral');

import Vue from 'vue'
import VueAdsense from '~/node_modules/vue-adsense/VueAdsense.vue'

Vue.component('adsense', VueAdsense)

import { mapGetters } from 'vuex'

if (process.browser) {
  Vue.use(require('vuetable-2'))
}

import StarRating from '~/components/StarRating.vue'

export default {
	components: {
		StarRating
	},
	data() {
		return {
			rating: 2,
			fields: {
			  rank: { label: '#', sortable: true },
		      name: { label: 'Name', sortable: true },
		      marketCap: { label: 'Market Cap', sortable: true },
		      price: { label: 'Price', sortable: true },
		      volume_24h:  { label: 'Volume (24h)', sortable: true },
		      circulatingSupply:  { label: 'Circulating Supply', sortable: true },
		      chg_24h:  { label: 'Chg. 24h', sortable: true },
		      chg_1h:  { label: 'Chg. 1h', sortable: true },
		   	  rating: { label: 'Rating', sortable: true }
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
	},
	methods: {

	},
	computed: {
		mappedCoinInfo() {

			let mapped = this.coinInfos.slice(); //.filter(coin => coin['24h_volume_usd'] && coin.image_url && coin.price_usd && coin['percent_change_24h'] && coin['percent_change_1h']);
			
			console.log(mapped);
			mapped.sort((a,b) => numeral(b.market_cap_usd).value() - numeral(a.market_cap_usd).value());

			for(var i = 0; i < mapped.length; i++) {
				mapped[i] = {...mapped[i]};
				mapped[i].rank = (i + 1);

				if(mapped[i].percent_change_24h && mapped[i].percent_change_24h.includes('-')) {
					mapped[i].negative = true;
				}
			}

			this.totalRows = mapped.length;

			
			return mapped.map(coin => {
				let imageUrl = coin.image_url;

				return {
					rank: coin.rank,
					name: {name: coin.name, image_url: imageUrl, link: '/coin?name=' + coin.name},
					marketCap: numeral(coin.market_cap_usd).format('$0,0[.]00'),
					price: {price: numeral(coin.price_usd).format('$0,0.00'), link: '/coin?name=' + coin.name},
					volume_24h: {vol: numeral(coin['24h_volume_usd']).format('$0,0[.]00'), link: '/coin?name=' + coin.name},
					circulatingSupply: {supply: numeral(coin.available_supply).format('0,0[.]00'), symbol: coin.symbol, link: '/coin?name=' + coin.name},
					chg_24h: coin.percent_change_24h + '%',
					chg_1h: coin.percent_change_1h + '%',
					rating: this.coinRatings[coin.name]
				}
			});
		},
		...mapGetters({coinInfos: 'coinInfos/getCoinInfos', coinRatings: 'ratings/getCoinRatings'})
	}
}
</script>

<style>
.coins-page {
	overflow: auto;
	display: flex;
	justify-content: center;
}

.coins-content-container {
	width: 90%;
	margin-top: 15px;
}

.coin-img {
	height: 27px;
	width: 27px;
	margin: 0 5px;
}

table {
	border: 3px solid #255573;
}

thead {
	background: #255573 !important;
	color: white;
}

.sorting:before, .sorting:after {
	color: #255573;
}

.pagination-container {
	display: flex;
	justify-content: center;
}

.page-link {
	color: #255573 !important;
}

.page-link.active {
	background-color: #255573 !important;
	border-color: #255573 !important;
	color: white !important;
}

</style>