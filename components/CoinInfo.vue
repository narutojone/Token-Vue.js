<template>
	<div class="coin-info-container container">

		<div class="row coin-details">
			
			<img class="coin-img" :src="info.image_url" />
		
			<h2 class="coin-name">{{name}} ({{info.symbol}})</h2>
			<h4>
				${{info.price_usd}} <span :class="change24hour >= 0 ? 'positive' : 'negative'">({{change24hour.toFixed(2)}}%)</span>
			</h4>
			<star-rating :increment="0.01" :fixed-points="2" :rating="info.rating" :read-only="true" :star-size="20" :show-rating="false"></star-rating>
		</div>

		<div class="row row-eq-height">
			<div class="col-sm-12 col-md-9 main-col">
				<b-card no-body class="main-card">
				    <b-tabs ref="tabs" card>
				    	<b-tab title="Charts" active>
				            <line-chart :data="mappedChartData" :sym="info.symbol ? info.symbol : ''" />
				            <candle-volume-chart :data="volumeChartData" :title="name + ' vs USD'" :sym="info.symbol ? info.symbol : ''" />
				        </b-tab>
				        <b-tab title="Exchanges">
				            <div class="exchanges">
								<div class="my-1 row m-2">
								    <div class="col-md-12">
								      <b-form-fieldset horizontal label="Filter" :label-cols="1">
								        <b-form-input v-model="filter" placeholder="Type to Search" />
								      </b-form-fieldset>
								    </div>
								  </div>

								  <div class="row my-1">
								    <div class="col ml-2">
								      <b-pagination :total-rows="totalRows" :per-page="perPage" v-model="currentPage" />
								    </div>
								    <div class="col-sm-4 text-md-right mr-2">
								      <b-button :disabled="!sortBy" @click="sortBy = null">Clear Sort</b-button>
								    </div>
								  </div>

								<b-table striped hover show-empty
						           :items="mappedExchangeData"
						           :fields="fields"
						           :current-page="currentPage"
						           :per-page="perPage"
						           :filter="filter"
						           :sort-by.sync="sortBy"
						           :sort-desc.sync="sortDesc">
							
						  		<template slot="exchange" scope="row">{{row.value}}</template>
							    <template slot="toSymbol" scope="row">{{row.value}}</template>
							    <template slot="volume24h" scope="row">{{row.value}}</template>
							    <template slot="volPercentage" scope="row"><a href="#">{{row.value}}</a></template>
							  </b-table>
							</div>
				        </b-tab>

				        <b-tab title="Review">
				        	<div class="coin-reviews-container">
								<star-rating :increment="0.01" :fixed-points="2" v-model="formStarRating"></star-rating>
								<div class="review-form">
									<b-form-textarea id="textarea1"
					                     v-model="formComments"
					                     :placeholder="'What do you think about ' + name + '?'"
					                     :rows="3"
					                     :max-rows="6">
					    			</b-form-textarea>
									<b-button variant="primary" class="submit-review-btn" @click="submitReview">Submit</b-button>
									<div class="review-submission-state">
										<span v-if="reviewSubmissionState.id === 'ERROR'" class="text-danger">
											Error submitting review: {{reviewSubmissionState.err}}
										</span>
										<span v-if="reviewSubmissionState.id === 'SUCCESS'" class="text-success">
											Successfully submit review
										</span>
									</div>
								</div>
								<div class="loader" v-if="reviewSubmissionState.id === 'PENDING'">Loading...</div>
								<div class="coin-reviews">
									<div class="review-container" v-for="review in mappedReviews">
										<div class="row review-top">
											<div class="review-top-left">
												<div class="reviewer-img">
													<img class="review-user-img" :src="review.photoURL">
													</img>
												</div>
												<div class="reviewer-details">
													<small><timeago :since="review.time"></timeago></small>
													<h6 class="reviewer">{{review.name}}</h6>
												</div>
											</div>
											<div class="review-top-right">
												<star-rating :star-size="25" :increment="0.01" :fixed-points="2" :rating="review.rating" :read-only="true" :show-rating="false"></star-rating>
											</div>
											
										</div>
										<div class="row review-middle">
												<div class="comments">{{review.comments}}</div>
												
										</div>
										<div class="row review-actions">
											<div class="col review-reply">
												<b-button size="sm" variant="info" class="btn-reply-toggle-visibility" @click="toggleReplyVisibility(review.id, 'blah blah blah blah')"><i class="fa fa-reply" aria-hidden="true"></i> Reply | {{review.replies ? Object.keys(review.replies).length : ''}}</b-button>
											</div>
											<div class="col likes-dislikes">
												<b-button size="sm" variant="danger" class="btn-dislike pull-right" @click="dislikeReview(review.id)"><i class="fa fa-thumbs-down" aria-hidden="true"></i> Dislike | {{numDislikes(review)}}</b-button>
												<b-button size="sm" variant="success" class="btn-like pull-right mr-2" @click="likeReview(review.id)"><i class="fa fa-thumbs-up" aria-hidden="true"></i> Like | {{numLikes(review)}}</b-button>
											</div>
										</div>
										<div v-if="visibleReplies[review.id]" class="row review-replies">
											<div v-for="reply in review.replies" class="col-12 reply pt-2 pb-2">
												<div class="reply-left">
												<img class="reply-user-img" :src="reply.photoURL">
													</img>
												</div>
												<div class="reply-right ml-2">
													<h6 class="reply-name">{{reply.name}}</h6>
													<small class="reply-body">{{reply.body}}</small>
													<small class="reply-time">{{formatTime(reply.time)}}</small>
												</div>
											</div>
											<b-form-textarea id="textarea2"
						                     v-model="replyBody[review.id]"
						                     :placeholder="'Write your reply'"
						                     :rows="3"
						                     :max-rows="6" class="mt-3">
							    			</b-form-textarea>
											<b-button variant="primary" class="submit-reply-btn mt-1" @click="replyReview(review.id, replyBody[review.id])">Submit</b-button>
										</div>
									</div>
								</div>
							</div>
				        </b-tab>

				        <b-tab title="Advance">							
							<advance-chart :data="mappedChartData" :sym="info.symbol ? info.symbol : ''" />							
				        </b-tab>
				        
				    </b-tabs>
				</b-card>
			</div>
			<div class="col-sm-12 col-md-3 quick-stats-bar pt-2">
				<h3 class="text-muted">Quick Stats</h3>
				<div class="quick-stats">
					<strong class="stat-title usd-price"><i class="fa fa-info-circle" v-b-tooltip.hover.auto title="Based on Market Cap" aria-hidden="true"></i> Rank</strong>
					<small class="stat pull-right">{{info.rank}}</small>
					<br/>
					<strong class="stat-title usd-price"><i class="fa fa-info-circle" v-b-tooltip.hover.auto title="Updated Every Minute" aria-hidden="true"></i> USD Price</strong>
					<small class="stat pull-right">${{info.price_usd}}</small>
					<br/>
					<strong class="stat-title usd-price"><i class="fa fa-info-circle" v-b-tooltip.hover.auto title="Updated Every Minute" aria-hidden="true"></i> BTC Price</strong>
					<small class="stat pull-right">฿{{formatDecimal(info.price_btc, 8)}}</small>
					<br/>
					<strong class="stat-title usd-price">24h Volume</strong>
					<small class="stat pull-right">${{formatDecimal(info['24h_volume_usd'], 0)}}</small>
					<br/>
					<strong class="stat-title usd-price">Total Supply</strong>
					<small class="stat pull-right">{{formatDecimal(info.total_supply, 0)}} {{info.symbol}}</small>
					<br/>
					<strong class="stat-title usd-price">Circulating Supply</strong>
					<small class="stat pull-right">{{formatDecimal(info.available_supply, 0)}} {{info.symbol}}</small>
					<br/>
					<strong class="stat-title usd-price">Market Cap</strong>
					<small class="stat pull-right">${{formatDecimal(info.market_cap_usd, 0)}}</small>
					<br/>
					<strong class="stat-title usd-price">% Change 1h</strong>
					<small class="stat pull-right">{{info.percent_change_1h}}%</small>
					<br/>
					<strong class="stat-title usd-price">% Change 24h</strong>
					<small class="stat pull-right">{{info.percent_change_24h}}%</small>
					<br/>
					<strong class="stat-title usd-price">% Change 7d</strong>
					<small class="stat pull-right">{{info.percent_change_7d}}%</small>
					<br/>
				</div>

				<h3 class="text-muted">Exchanges</h3>
				<div class="exchanges-side-list">
					<div class="exchange-side-list" mt-4 v-for="exchangeName in exchangePairs ? Object.keys(exchangePairs) : []">
						<span>{{exchangeName}}</span>
						<small v-for="pair in exchangePairs[exchangeName]">
							{{pair}}
						</small>
					</div>
				</div>
				<div style="margin-top:5px">
					<adsense
							ad-client="ca-pub-3140280192160176"
							ad-slot="7961337044"
							ad-style="display:inline-block;width:250px;height:250px"
					>
					</adsense>

				</div>


			</div>
		</div>


		
	</div>
</template>

<script>
var numeral = require('numeral');
import Vue from 'vue'
import { mapGetters } from 'vuex'

import axios from 'axios';

import StarRating from '~/components/StarRating.vue'

import LineChart from '~/components/LineChart.vue'
import AdvanceChart from '~/components/AdvanceChart.vue'
import CandleVolumeChart from '~/components/CandleVolumeChart.vue'

import VueTimeago from 'vue-timeago'
import VueAdsense from '~/node_modules/vue-adsense/VueAdsense.vue'

Vue.component('adsense', VueAdsense)


var dateFormat = require('dateformat');

Vue.use(VueTimeago, {
  name: 'timeago', // component name, `timeago` by default
  locale: 'en-US',
  locales: {
    // you will need json-loader in webpack 1
    'en-US': require('vue-timeago/locales/en-US.json')
  }
})
export default {
	name: 'coin-info',
	props: {
		name: {
			type: String,
			required: true
		},
	},
	components: {
		StarRating,
		LineChart,
		AdvanceChart,
		CandleVolumeChart
	},
	data() {
		return {
			chartData: [],
			formStarRating: 0,
			formComments: "",
			visibleReplies: {},
			replyBody: {},

			//Table
			fields: {
			  rank: { label: '#', sortable: true },
			  exchange: { label: 'Exchange', sortable: true },
		      toSymbol: { label: 'Pair', sortable: true },
		      volume24h: { label: 'Volume (24h)', sortable: true },
		      volPercentage: { label: 'Volume %', sortable: true },
		    },
		    currentPage: 1,
		    perPage: 10,
		    totalRows: 20, //items.length
		    pageOptions: [{text:5,value:5},{text:10,value:10},{text:15,value:15}],
		    sortBy: null,
		    sortDesc: false,
		    filter: null,
		    modalDetails: { index:'', data:'' }
		}
	},
	computed: {
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
		info() {
			let foundInfo = this.coinInfos.find(coin => coin.name === this.name);

			if(!foundInfo) return {};

			let imageUrl = foundInfo.image_url;

			return {...foundInfo, image_url: imageUrl, rating: this.getCoinRatingForCoin(this.name)};
		},
		mappedReviews() {
			console.log('reviws', this.reviews);
			return this.reviews ? this.reviews.map(review => ({...review, id: review['.key'], date: dateFormat(new Date(review.time), "mmm dS, yyyy h:MM:ss TT")})) : [];
		},
		reviews() {
			return this.reviewsForName(this.name);
		},
		exchangePairs() {
			let exchangePairs = this.getCoinExchangesForCoin(this.info.symbol);
			console.log('exchangepairs', exchangePairs);

			return exchangePairs;
		},
		pairSymbols() {
			if(!this.exchangePairs || !Object.keys(this.exchangePairs).length) return [];

			let pairSymbols = {};

			Object.keys(this.exchangePairs).forEach(exchangeName => {
				this.exchangePairs[exchangeName].forEach(pairSym => {
					pairSymbols[pairSym] = true;
				});
			});

			return Object.keys(pairSymbols);
		},
		mappedExchangeData() {
			//if(1 + 4 == 5) return [];

			let mappedExchangeData = this.exchangePairsData.slice();

			mappedExchangeData.sort((a, b) => b.volume24h - a.volume24h)

			let totalVolume = mappedExchangeData.reduce((sum, pair) => sum + pair.volume24h, 0);

			if(totalVolume > 0) {
				mappedExchangeData = mappedExchangeData.map(pair => (
					{
						...pair,

						volPercentage: (100*pair.volume24h / totalVolume).toFixed(2) + '%',
						volume24h: numeral(pair.volume24h).format('0,0[.]') + ' ' + this.info.symbol
					}));
			}

			for(var i = 0; i < mappedExchangeData.length; i++) {
				mappedExchangeData[i].rank = i + 1;
			}

			this.totalRows = mappedExchangeData.length;

			return mappedExchangeData;
		},
		change24hour() {
			return this.info && this.info.percent_change_24h ? parseFloat(this.info.percent_change_24h) : 0.0;
		},
		mappedChartData() {
			let chart = this.getChart(this.info.symbol, 'USD', 'hour');
			
			console.log("==== Chart  123====", chart);

			if(!chart) return [];

			console.log("==== Chart ====", chart);
			// return chart.map(candle => ({...candle, time: candle.time*1000}));
			return chart.map(candle => [candle.time*1000, candle.close]);
		},
		volumeChartData() {
			let chart = this.getChart(this.info.symbol, 'USD', 'hour');
			
			if(!chart) return [];

			return chart.map(candle => ({...candle, time: candle.time*1000}));
		},
		numLikes() {
			return (review) => {
				if(!review || !review.likes) return 0;

				return Object.keys(review.likes).length;
			}
		},
		numDislikes() {
			return (review) => {
				if(!review || !review.dislikes) return 0;

				return Object.keys(review.dislikes).length;
			}
		},
		reviewSubmissionState() {
			return this.reviewSubmissionStateForName(this.name);
		},
		formatTime() {
			return time => {
				return dateFormat(new Date(time), "mmm dS, yyyy h:MM:ss TT")
			}
		},
		exchangePairsData() {
			let exchangePairsObject = this.getExchangePairsData(this.info.symbol);

			let pairs = [];
			Object.keys(exchangePairsObject).forEach(tsym => {
				pairs = pairs.concat(exchangePairsObject[tsym]);
			});

			return pairs;
		},
		...mapGetters(
			{
				reviewsForName: 'coinReviews/getCoinReviews',
				reviewSubmissionStateForName: 'coinReviews/getCoinReviewSubmissionState',
				coinInfos: 'coinInfos/getCoinInfos',
				getChart: 'charts/getChart',
				getExchangePairsData: 'exchanges/getExchangePairsData',
				getCoinExchangesForCoin: 'exchanges/getCoinExchangesForCoin',
				getCoinRatingForCoin: 'ratings/getCoinRatingForCoin'
			}
		)
	},
	watch: {
		pairSymbols(val) {
			if(!this.pairSymbols || !this.pairSymbols.length) return;

			console.log('Pair symbols before loading exchanges', this.pairSymbols);

			let i = 0;
			let bigCoins = ['USD', 'EUR', 'JPY', 'KRW', 'GBP', 'AUD', 'BTC', 'ETH', 'LTC', 'BCH', 'NEO', 'WTC', 'BCC'].reduce((o, c) => ({...o, [c]: true}), {});
			let bigCoin = this.info.symbol == 'BTC' || this.info.symbol == 'ETH';
			this.pairSymbols.forEach(pairSymbol => {
				if(bigCoin) {
					if(!bigCoins[pairSymbol]) {
						return;
					}
				}

				setTimeout(() => {
					this.$store.dispatch('exchanges/loadExchangePairData', { fb: this.$firebase, fsym: this.info.symbol, tsym: pairSymbol })
				}, i*Math.random()*200);
				i++;
			});
		},
		info(val) {
			if(this.info && this.info.symbol) {
				this.$store.dispatch('charts/loadChart', { fsym: this.info.symbol, tsym: 'USD', interval: 'hour' })
			}
		},
		reviewSubmissionState(val) {
			// if(this.reviewSubmissionState.id === 'SUCCESS') {
			// 	this.$store.dispatch('coinReviews/loadCoinReviews', this.name);
			// }
		}
	},
	methods: {
		submitReview() {
			console.log('reviews', this.reviews);

			let review = {
				rating: this.formStarRating,
				comments: this.formComments
			}

			this.$store.dispatch('coinReviews/addReview', {coinName: this.name, review});
		},
		replyReview(reviewId, replyBody) {
			this.$store.dispatch('coinReviews/replyReview', { coinName: this.name, reviewId, replyBody })
		},
		toggleReplyVisibility(reviewId) {
			Vue.set(this.visibleReplies, reviewId, !this.visibleReplies[reviewId]);
		},
		likeReview(reviewId) {
			this.$store.dispatch('coinReviews/rateReview', { coinName: this.name, reviewId, like: true })
		},
		dislikeReview(reviewId) {
			this.$store.dispatch('coinReviews/rateReview', { coinName: this.name, reviewId, like: false })
		}
	},
	mounted() {
		console.log('MOUNTED!!!')
		this.$store.dispatch('coinReviews/bindCoinReviews', { coinName: this.name, fb: this.$firebase });
		this.$store.dispatch('exchanges/loadExchangePairs')
		if(this.info && this.info.symbol) {
				this.$store.dispatch('charts/loadChart', { fsym: this.info.symbol, tsym: 'USD', interval: 'hour' })
		}

		if(!this.pairSymbols || !this.pairSymbols.length) return;

			console.log('Pair symbols before loading exchanges', this.pairSymbols);

			let i = 0;
			let bigCoins = ['USD', 'EUR', 'JPY', 'KRW', 'GBP', 'AUD', 'BTC', 'ETH', 'LTC', 'BCH', 'NEO', 'WTC', 'BCC'].reduce((o, c) => ({...o, [c]: true}), {});
			let bigCoin = this.info.symbol == 'BTC' || this.info.symbol == 'ETH';
			this.pairSymbols.forEach(pairSymbol => {
				if(bigCoin) {
					if(!bigCoins[pairSymbol]) {
						return;
					}
				}

				setTimeout(() => {
					this.$store.dispatch('exchanges/loadExchangePairData', { fb: this.$firebase, fsym: this.info.symbol, tsym: pairSymbol })
				}, i*Math.random()*200);
				i++;
			});
	}
}
</script>


<style scoped>
.coin-info-container {
/*	border-top: 10px solid #17a2b8;
*/}

.coin-details {
	display: flex;
	justify-content: center;
	align-items: center;
}

.coin-img {
	height: 45px;
	margin: 5px;
}

.coin-name {
	margin-right: 10px;
}

.main-card {
	border-radius: 0;
	margin: 0;
	height: 100%;
}

.main-col {
	margin: 0;
	padding: 0;
}

.quick-stats-bar {
	background: #f2f3f3;
	margin: 0;
}

.stat {
	color: #17a2b8;
}

.exchanges-side-list {
	max-height: 300px;
	overflow-y: auto;
}

.exchange-side-list small {
	color: #17a2b8;
}

.review-user-img{
	height: 30px;
}


.review-form {
	padding: 17px 0;
}

.coin-reviews {
	width: 100%;
}

.review-container {
	margin: 10px 5px;
}

.review {
	background: #f2f3f3;
	padding: 12px;
	align-items: center;
	position: relative;
}

.review-top {
	background: #eeeeee;
	padding: 1px 7px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.review-top-left,.review-top-right {
	display: flex;
	align-items: center;
}

.reviewer-details {
	margin-left: 5px;
}

.review-actions {
	background: #eeeeee;
	padding: 7px;
}

.review-reply {
	padding: 0;
}

.likes-dislikes {
	padding: 0;
}

.time {
	position: absolute;
	top: 0;
	right: 0;
}

.submit-review-btn {
	margin: 5px 0;
}

.reply {
	display: flex;
	background: #dedede;
	border-top: 1px solid #c0c0c0;
	font-size: 12px;
}

.reply-user-img {
	height: 30px;
}

.reply-time {
	position: absolute;
	top: 0;
	right: 0;
}


.loader,
.loader:before,
.loader:after {
  border-radius: 50%;
  width: 2.5em;
  height: 2.5em;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
  -webkit-animation: load7 1.8s infinite ease-in-out;
  animation: load7 1.8s infinite ease-in-out;
}
.loader {
  color: #17a2b8;
  font-size: 10px;
  margin: 80px auto;
  position: relative;
  text-indent: -9999em;
  -webkit-transform: translateZ(0);
  -ms-transform: translateZ(0);
  transform: translateZ(0);
  -webkit-animation-delay: -0.16s;
  animation-delay: -0.16s;
}
.loader:before,
.loader:after {
  content: '';
  position: absolute;
  top: 0;
}
.loader:before {
  left: -3.5em;
  -webkit-animation-delay: -0.32s;
  animation-delay: -0.32s;
}
.loader:after {
  left: 3.5em;
}
@-webkit-keyframes load7 {
  0%,
  80%,
  100% {
    box-shadow: 0 2.5em 0 -1.3em;
  }
  40% {
    box-shadow: 0 2.5em 0 0;
  }
}
@keyframes load7 {
  0%,
  80%,
  100% {
    box-shadow: 0 2.5em 0 -1.3em;
  }
  40% {
    box-shadow: 0 2.5em 0 0;
  }
}

.row-eq-height {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display:         flex;
}
</style>