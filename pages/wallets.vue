<template>
	<div class="wallets-page">

		<div class="wallets-content-container">
		  <div class="my-1 row m-2">
		    <div class="col-md-12">
		      <b-form-fieldset horizontal label="Filter" :label-cols="1">
		        <b-form-input v-model="filter" placeholder="Type to Search" />
		      </b-form-fieldset>
		    </div>
		  </div>

		<b-table striped hover show-empty
	           :items="mappedWallets"
	           :fields="fields"
	           :current-page="currentPage"
	           :per-page="perPage"
	           :filter="filter"
	           :sort-by.sync="sortBy"
	           :sort-desc.sync="sortDesc"
	  >
		
	  		<template slot="rank" scope="row">{{row.value}}</template>
		    <template slot="details" scope="row">
		    	<a :href="row.value.affiliate_url" target="_blank">
		    		<img class="wallet-img" :src="row.value.logo_url"></img>{{row.value.name}}
		    	</a>
		    </template>
		    <template slot="security" scope="row">{{row.value}}</template>
		    <template slot="anonymity" scope="row">{{row.value}}</template>
		   	<template slot="easeOfUse" scope="row">{{row.value}}</template>
		    <template slot="hasTradingFacilities" scope="row">
		    	<i class="fa fa-check" aria-hidden="true" v-if="row.value"></i><i class="fa fa-times" aria-hidden="true" v-else></i>
		    </template>
		   	<template slot="hasVouchersAndOffers" scope="row">
		   		<i class="fa fa-check" aria-hidden="true" v-if="row.value"></i><i class="fa fa-times" aria-hidden="true" v-else></i>
		   	</template>
		   	<template slot="walletFeatures" scope="row"><div class="wallet-feature" v-for="feature in row.value">{{feature}}</div></template>
		   	<template slot="coins" scope="row"><img class="coin-img" v-for="sym in row.value" :src="coinInfosBySymbol[sym] ? coinInfosBySymbol[sym].image_url : ''" v-b-tooltip.hover.auto :title="sym"></img></template>
		    <template slot="platforms" scope="row"><i class="fa platform-icon" v-for="platform in row.value" :class="mapPlatformToClass(platform)" v-b-tooltip.hover.auto :title="platform"></i></template>
		    <template slot="validationType" scope="row">{{row.value}}</template>
		    <template slot="rating" scope="row"><star-rating :star-size="20" :increment="0.01" :fixed-points="2" v-model="row.value.rating" @rating-selected="(rating) => {onRatingSelected(row.value.name, rating)}" :read-only="!user || !user.uid"></star-rating></template>
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

const FONT_AWESOME_PLATFORMS_ICONS = {
	'Mac OS': 'fa-apple',
	'iOS': 'fa-apple',
	'Android': 'fa-android',
	'Web': 'fa-globe',
	'Windows': 'fa-windows',
	'Windows Phone': 'fa-windows',
	'Linux': 'fa-linux',
	'Chrome Extension': 'fa-chrome',
	'Hardware': 'fa-usb'
}

export default {
	components: {
		StarRating
	},
	data() {
		return {
			rating: 2,
			fields: {
			  rank: { label: '#', sortable: true },
		      details: { label: 'Wallet', sortable: true },
		      security: { label: 'Security', sortable: true },
		      anonymity: { label: 'Anonymity', sortable: true },
		   	  easeOfUse: { label: 'Ease of Use', sortable: true },
		   	  hasTradingFacilities: { label: 'Trading?', sortable: true },
		   	  hasVouchersAndOffers: { label: 'Vouchers?', sortable: true },
		   	  walletFeatures: { label: 'Features', sortable: true },
		   	  coins: { label: 'Coins', sortable: true },
		   	  platforms: { label: 'Platforms', sortable: true },
		   	  validationType: { label: 'Validation', sortable: true },
		   	  rating: { label: 'Rating', sortable: true }
		    },
		    currentPage: 1,
		    perPage: 50,
		    totalRows: 10000, //items.length
		    pageOptions: [{text:5,value:5},{text:10,value:10},{text:15,value:15}],
		    sortBy: null,
		    sortDesc: false,
		    filter: null,
		    modalDetails: { index:'', data:'' }
		}
	},
	mounted() {
		this.$store.dispatch('ratings/bindWalletRatings', this.$firebase);
	},
	methods: {
		onRatingSelected(walletName, rating) {
			this.$store.dispatch('walletReviews/addReview', { walletName, review: { rating } })
		}
	},
	computed: {
		/**
	{
      "name": "Doge Freewallet",
      "logo_url": "/media/1383101/doge.png",
      "security": "Third Party",
      "anonymity": "Medium",
      "easeOfUse": "Easy",
      "hasTradingFacilities": true,
      "hasVouchersAndOffers": false,
      "walletFeatures": [],
      "coins": [
         "DOGE"
      ],
      "platforms": [
         "Android",
         "iOS"
      ],
      "sourceCodeUrl": "",
      "validationType": "Centralized",
      "afilliate_url": "https://go.onelink.me/HWfC?pid=cc"
   },

		*/
		mappedWallets() {
			let i = 0;
			let mappedWallets = this.wallets.map(wallet => {
				return {
					...wallet,
					rank: ++i,
					details: {
						name: wallet.name,
						logo_url: 'https://cryptocompare.com' + wallet.logo_url,
						affiliate_url: wallet.afilliate_url,
						rating: this.walletRatings[wallet.name],
					},
					rating: {
						rating: this.walletRatings[wallet.name],
						name: wallet.name
					}
				}
			});

			this.totalRows = mappedWallets.length;

			return mappedWallets;
		},
		mapPlatformToClass() {
			return (platform) => {
				return FONT_AWESOME_PLATFORMS_ICONS[platform];
			}
		},
		...mapGetters({walletRatings: 'ratings/getWalletRatings', wallets: 'wallets/getWallets', coinInfosBySymbol: 'coinInfos/getCoinInfosBySymbol', user: 'user/getUser'})
	}
}
</script>

<style>
.wallets-page {
	overflow: auto;
	display: flex;
	justify-content: center;
}

.wallets-content-container {
	width: 90%;
	margin-top: 15px;
}

.wallet-img {
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

.coin-img {
	height: 27px;
}

.platform-icon {
	margin: 0 5px;
}

.wallet-feature {
	font-size: 10px;
	background: #255573;
	color: gold;
	padding: 4px;
	border-radius: 4px;
	margin: 4px 4px;
	display: inline-block;
}

</style>