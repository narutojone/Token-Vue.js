<template>
	<div class="exchanges-page">

		<div class="exchanges-content-container">
		  <div class="my-1 row m-2">
		    <div class="col-md-12">
		      <b-form-fieldset horizontal label="Filter" :label-cols="1">
		        <b-form-input v-model="filter" placeholder="Type to Search" />
		      </b-form-fieldset>
		    </div>
		  </div>

		<b-table striped hover show-empty
	           :items="mappedExchanges"
	           :fields="fields"
	           :current-page="currentPage"
	           :per-page="perPage"
	           :filter="filter"
	           :sort-by.sync="sortBy"
	           :sort-desc.sync="sortDesc"
	  >
		
	  		<template slot="rank" scope="row">{{row.value}}</template>
		    <template slot="site" scope="row">
		    	<a :href="row.value.affiliate_url" target="_blank">
		    		<img class="exchange-img" :src="row.value.logo_url"></img>{{row.value.name}}
		    	</a>
		    </template>
		    <template slot="country" scope="row">{{row.value}}</template>
		    <template slot="type" scope="row">{{row.value}}</template>
		    <template slot="rating" scope="row"><star-rating :star-size="20" :increment="0.01" :fixed-points="2" :rating="row.value.rating" @rating-selected="(rating) => {onRatingSelected(row.value.name, rating)}" :read-only="!user || !user.uid"></star-rating></template>
		  </b-table>

		  <div class="row my-1">
		    <div class="col-12 pagination-container">
		      <b-pagination :total-rows="totalRows" :per-page="perPage" v-model="currentPage" :hide-ellipsis="true" :limit="10" class="align-middle" />
		    </div>
		  </div>

	  </div>
	</div>
</template>

<script>
var numeral = require('numeral');

import Vue from 'vue'

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
		      site: { label: 'Site', sortable: true },
		      country: { label: 'Location', sortable: true },
		      type: { label: 'Type', sortable: true },
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
	mounted() {
		this.$store.dispatch('ratings/bindExchangeRatings', this.$firebase);
	},
	methods: {
		onRatingSelected(exchangeName, rating) {
			this.$store.dispatch('exchangeReviews/addReview', { exchangeName, review: { rating } })
		}
	},
	computed: {
		/**
	{ name: 'ViaBTC',
    url: '/exchanges/viabtc/overview',
    logo_url: '/media/352008/viabtc.png',
    affiliate_url: 'https://www.viabtc.cn/',
    country: 'China',
    type: 'BTC and LTC/ETH',
    desc: 'Founded in May 2016, ViaBTC is a cryptocurrency technology company that operates a mining pool, mining contracts and the ViaBTC exchange. The ViaBTC exchange is a China-based website, allowing users to trade BTC and ETH for CNY. The ViaBTC exchange features advanced Trading View charts and easy and convenient API' },

		*/
		mappedExchanges() {
			let i = 0;
			let mappedExchanges = this.exchanges.map(exchange => {
				return {
					...exchange,
					rank: ++i,
					site: {
						name: exchange.name,
						logo_url: 'https://cryptocompare.com' + exchange.logo_url,
						affiliate_url: exchange.affiliate_url,
						rating: this.exchangeRatings[exchange.name],
					},
					rating: {
						name: exchange.name,
						rating: this.exchangeRatings[exchange.name]
					}
				}
			});

			this.totalRows = mappedExchanges.length;

			return mappedExchanges;
		},
		...mapGetters({user: 'user/getUser', exchangeRatings: 'ratings/getExchangeRatings', exchanges: 'exchanges/getExchanges'})
	}
}
</script>

<style>
.exchanges-page {
	overflow: auto;
	display: flex;
	justify-content: center;
}

.exchanges-content-container {
	width: 90%;
	margin-top: 15px;
}

.exchange-img {
	max-height: 27px;
	max-width: 27px;
	margin-right: 8px;
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