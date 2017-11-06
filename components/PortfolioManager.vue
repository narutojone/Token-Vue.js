<template>
	<div class="portfolio-manager">
  		  

		  <div class="portfolio-stats">
		  	<div class="stat-container">
		  		<h5>Total Investment</h5>
		  		<h3 class="positive">${{formatDecimal(totalSpent)}}</h3>
		  	</div>
			<div class="stat-container">
		  		<h5>Cashed Out</h5>
		  		<h3 class="positive">${{formatDecimal(totalReceived)}}</h3>
		  	</div>
		  	<div class="stat-container">
		  		<h5>Net Worth</h5>
		  		<h3 class="positive">${{formatDecimal(totalHoldingsValue)}}</h3>
		  	</div>
		  	<div class="stat-container">
		  		<div><h5>Profit</h5></div>
		  		<h3 :class="(totalHoldingsValue + totalReceived - totalSpent) > 0 ? 'positive' : 'negative'">${{formatDecimal(totalHoldingsValue + totalReceived - totalSpent)}}</h3>
		  	</div>
		  </div>


		  <div class="portfolio-main">
		  	<b-btn variant="primary" class="add-coin-btn" @click="$modal.show('add-coin-mdl')">
			      <i class="fa fa-plus" aria-hidden="true"></i>
			  	</b-btn>
	  		  <h5>Holdings</h5>
	  		  <!-- <b-table striped hover show-empty
							           :items="mappedHoldings"
							           :fields="holdingsTable_fields"
							           :current-page="holdingsTable_currentPage"
							           :per-page="holdingsTable_perPage"
							           :filter="holdingsTable_filter"
							           :sort-by.sync="holdingsTable_sortBy"
							           :sort-desc.sync="holdingsTable_sortDesc">
									<template slot="weightedAverageDate" scope="row">{{row.value}}</template>
								    <template slot="coin" scope="row">{{row.value}}</template>
								    <template slot="quantityBought" scope="row">{{row.value}}</template>
								    <template slot="totalSpent" scope="row">${{formatDecimal(row.value)}}</template>
								    <template slot="averageBuyPrice" scope="row">${{formatDecimal(row.value)}}</template>
								    <template slot="quantitySold" scope="row">{{row.value}}</template>
								    <template slot="totalReceived" scope="row">${{formatDecimal(row.value)}}</template>
								    <template slot="averageSellPrice" scope="row">${{formatDecimal(row.value)}}</template>
								    <template slot="holdingQuantity" scope="row">{{formatDecimal(row.value)}}</template>
								    <template slot="holdingValue" scope="row">${{formatDecimal(row.value)}}</template>
								    <template slot="profit" scope="row">${{formatDecimal(row.value)}}</template>
								    <template slot="removeAll" scope="row"><b-btn variant="link" @click="removeAllTradesForCoin(row.value)"><i class="fa fa-times text-danger" aria-hidden="true"></i></b-btn></template>

								  </b-table> -->

			  <div class="holdings">
			  	
			  	<div v-for="holding in mappedHoldings" class="holding-container">
			  		<div class="container holding">
				  		<div class="holding-top row">
				  			<div class="holding-tsyms">
				  				<img v-for="tsym in holding.tsyms" :src="coinInfosBySymbol[tsym] ? coinInfosBySymbol[tsym].image_url : ''" class="holding-tsym-img"></img>
				  			</div>

				  			<img class="holding-coin-img" :src="holding.image_url"></img>
				  		</div>

				  		<div class="holding-middle row">
				  			<div class="holding-value-usd">
				  				<span class="holding-value-num">
				  					${{formatDecimal(holding.holdingValue)}}
				  				</span> 
				  				<small :class="holding.percent_change_24h ? (holding.percent_change_24h > 0 ? 'positive' : 'negative') : ''">
				  					{{holding.percent_change_24h}}%
				  				</small>
				  			</div>
				  			<small class="holding-quantity">
				  				({{formatDecimal(holding.holdingQuantity, 0)}} {{holding.coin}})
				  			</small>

				  			<div class="then-profit-now">
				  				<div class="tpn-item then">
				  					<small>${{formatDecimal(holding.averageBuyPrice * holding.holdingQuantity)}}</small>
				  					<h6>Then</h6>
				  				</div>
				  				<div class="tpn-item profit">
				  					<small :class="holding.profit >= 0 ? 'profit-positive' : 'profit-negative'">${{formatDecimal(holding.profit)}}</small>
				  					<h6>Profit</h6>
				  				</div>
				  				<div class="tpn-item now">
				  					<small>${{formatDecimal(holding.holdingValue)}}</small>
				  					<h6>Now</h6>
				  				</div>
				  			</div>
				  		</div>

				  		<div class="holding-bottom row">

				  		</div>

			  		</div>
			  	</div>

			  </div>
		  </div>


		  <div class="trade-history">

			  <h5>Trade History</h5>
			  <b-table striped hover show-empty
							           :items="mappedTrades"
							           :fields="tradesTable_fields"
							           :current-page="tradesTable_currentPage"
							           :per-page="tradesTable_perPage"
							           :filter="tradesTable_filter"
							           :sort-by.sync="tradesTable_sortBy"
							           :sort-desc.sync="tradesTable_sortDesc">
										<template slot="removeTrade" scope="row"><b-btn variant="link" @click="removeTrade(row.value)"><i class="fa fa-times text-danger" aria-hidden="true"></i></b-btn></template>
								  </b-table>
								  
		  </div>









		  <modal name="add-coin-mdl" class="add-coin-modal" :adaptive="true" height="auto" width="400px">
		  	   <div class="mdl-title text-light">
		  	   		<h4>Add Trade</h4>
		  	   </div>
	           <b-container fluid class="form-container">
	           		<div class="form-item-container">
		           		<small class="form-item-title">Coin</small>
		           		
		           		<div class="form-item-input coin-input">
			           		<img class="selected-coin-img mr-1" :src="form_selectedCoin.image_url"></img>
					        <basic-select class="form-basic-select" :options="coinOptions"
			                :selected-option="form_selectedCoin"
			                placeholder="Select Coin"
			                @select="onSelectCoin">
			  				</basic-select>
	  					</div>
	  				</div>

	  				<div class="form-item-container mt-2">
		  				<small class="form-item-title">Exchange</small>
		  				
		  				<div class="form-item-input">
			  				<basic-select class="form-basic-select" :options="exchangeOptions"
			                :selected-option="form_selectedExchange"
			                placeholder="Select Exchange"
			                @select="onSelectExchange">
			  				</basic-select>
		  				</div>
		  			</div>

		  			<div class="form-item-container mt-2">
		  				<small class="form-item-title">Price</small>
		  				<div v-if="form_selectedCoin.symbol" class="converted-prices">
			  				<small>1 {{form_selectedCoin.symbol}} =</small>
			  				<small v-for="convertedSymbol in Object.keys(localConversions)">
			  					{{localConversions[convertedSymbol]}} {{convertedSymbol}}&nbsp;
			  				</small>
		  				</div>

		  				<div class="form-item-input price-item-input">
		  					<b-form-input type="number" v-model="form_localPrice"></b-form-input>
		  					<b-form-radio-group v-model="form_coinPriceInputType" name="coinPriceInputTypeRadio">
			  					<b-form-radio value="perFrom">{{form_selectedCoin.symbol}}/{{form_selectedExchange.tsym}}</b-form-radio>
							    <b-form-radio value="totalFrom">Total {{form_selectedCoin.symbol}}</b-form-radio>

							    <b-form-radio value="perTo">{{form_selectedExchange.tsym}}/{{form_selectedCoin.symbol}}</b-form-radio>
							    <b-form-radio value="totalTo">Total {{form_selectedExchange.tsym}}</b-form-radio>

							    <b-form-radio value="perUsd">USD/{{form_selectedCoin.symbol}}</b-form-radio>
							    <b-form-radio value="totalUsd">Total USD</b-form-radio>
						    </b-form-radio-group>
						      
						      
		  				</div>
		  			</div>

		  			<div class="form-item-container mt-2">
		  				<small class="form-item-title">Quantity</small>

		  				<div class="form-item-input">
		  					<b-form-input type="number" v-model="form_quantity"></b-form-input>
		  				</div>
		  			</div>

		  			<div class="form-item-container mt-2">
		  				<small class="form-item-title">Date</small>

		  				<div class="form-item-input">
		  					<b-form-input type="datetime-local" v-model="form_date"></b-form-input>
		  				</div>
		  			</div>

		  			<div class="form-item-container mt-2">
		  				<small class="form-item-title"></small>

		  				<div class="form-item-input">
			  				<b-form-radio-group v-model="form_tradeType" name="tradeTypeRadio">
				  				<b-form-radio value="BUY">BUY</b-form-radio>
				  				<b-form-radio value="SELL">SELL</b-form-radio>
			  				</b-form-radio-group>
		  				</div>
		  			</div>
		  			
	           </b-container>
	           <div class="mdl-footer bg-light">
	           		<b-btn variant="danger" @click="$modal.hide('add-coin-mdl')"><i class="fa fa-times" aria-hidden="true"></i> Cancel</b-btn>
	           		<b-btn variant="success" @click="addTrade" class="add-trade-btn"><i class="fa fa-plus" aria-hidden="true"></i> Add</b-btn>
	           </div>
	        </modal>

		</div>
</template>

<script>
import { mapGetters } from 'vuex'

import BasicSelect from '~/components/BasicSelect.vue'

import axios from 'axios'

import moment from 'moment'

import numeral from 'numeral'

export default {
	name: 'portfolio-manager',
	components: {
		BasicSelect
	},
	props: {
	},
	data() {
		return {
			name: '',
			names: [],

			foods: [
		        { text:'Select One', value:null },
		        'Carrots','Beans','Tomatoes','Corn'
		      ],

		    form_coinPriceInputType: 'perUsd',

	        searchText: '', // If value is falsy, reset searchText & searchItem
	        form_selectedCoin: {
	          value: '',
	          text: ''
	        },
	        form_selectedExchange: {
	        	value: '',
	        	text: ''
	        },
	        form_localPrice: 0,
	        form_quantity: 0,
	        form_date: moment(new Date()).format("YYYY-MM-DDTHH:mm"),
	        form_tradeType: 'BUY',

	        localConversions: {},

	        showAddTradeModal: false,

	       	addTradePending: false,

	       	// Trade fields: { fname, fsym, tsym, type (buy/sell), price: { localPrice, btcPrice, usdPrice }, quantity, exchangeName, time }
	       	tradesTable_fields: {
			  date: { label: 'Date', sortable: true },
			  pair: { label: 'Pair', sortable: true },
		      exchangeName: { label: 'Exchange', sortable: true },
		      executedExchangePrice: { label: 'Exchange Price', sortable: true },
		      usdPrice: { label: 'USD Price', sortable: true },
		      quantity: { label: 'Quantity', sortable: true },
		      tradeType: { label: 'Buy/Sell', sortable: true },
		      removeTrade: { label: 'Remove', sortable: false }
		    },
	       	tradesTable_currentPage: 1,
		    tradesTable_perPage: 10,
		    tradesTable_totalRows: 20, //items.length
		    tradesTable_pageOptions: [{text:5,value:5},{text:10,value:10},{text:15,value:15}],
		    tradesTable_sortBy: null,
		    tradesTable_sortDesc: false,
		    tradesTable_filter: null,

		    holdingsTable_fields: {
		      weightedAverageDate: { label: 'Weighted Avg. Date', sortable: true },
			  coin: { label: 'Coin', sortable: true },
			  quantityBought: { label: 'Quantity Bought', sortable: true },
		      totalSpent: { label: 'Total Spent', sortable: true },
		      averageBuyPrice: { label: 'Average Buy Price', sortable: true },

		      quantitySold: { label: 'Quantity Sold', sortable: true },
		      totalReceived: { label: 'Total Received', sortable: true },
		      averageSellPrice: { label: 'Average Sell Price', sortable: true },

		      holdingQuantity: { label: 'Holdings Quantity', sortable: true },
		      holdingValue: { label: 'Holdings Value', sortable: true },

		      profit: { label: 'Profit', sortable: true },

		      removeAll: { label: 'Remove Trades', sortable: false }
		    },
	       	holdingsTable_currentPage: 1,
		    holdingsTable_perPage: 10,
		    holdingsTable_totalRows: 20, //items.length
		    holdingsTable_pageOptions: [{text:5,value:5},{text:10,value:10},{text:15,value:15}],
		    holdingsTable_sortBy: null,
		    holdingsTable_sortDesc: false,
		    holdingsTable_filter: null,
	  	}
	},
	computed: {
		...mapGetters({
			user: 'user/getUser', coinInfos: 'coinInfos/getCoinInfos', coinInfosBySymbol: 'coinInfos/getCoinInfosBySymbol', portfolio: 'portfolio/getPortfolio', getCoinExchangesForCoin: 'exchanges/getCoinExchangesForCoin'
		}),
		coinOptions() {
			if(!this.coinInfos) return [];

			return this.coinInfos.map(coin => {
				return {
					...coin,
					text: coin.name + ' (' + coin.symbol + ')',
				}
			});
			console.log('coin infos', this.coinInfos);
		},
		exchangeOptions() {
			if(!this.form_selectedCoin) return [];

			console.log('SELECTED COIN: ', this.form_selectedCoin);
			let exchangeOptions = [];

			let coinExchanges = this.getCoinExchangesForCoin(this.form_selectedCoin.symbol);

			console.log('COOOIN EXCHANGES ', coinExchanges);
			Object.keys(coinExchanges).forEach(exchangeName => {
				coinExchanges[exchangeName].forEach(tsym => {
					exchangeOptions.push({
						exchangeName,
						fsym: this.form_selectedCoin.symbol,
						tsym,
						text: exchangeName + ' (' + this.form_selectedCoin.symbol + '/' + tsym + ')'
					})
				});
			});

			return exchangeOptions;
		},
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


		//Trading
		mappedTrades() {
			if(!this.portfolio || !this.portfolio.trades) return [];

			return Object.keys(this.portfolio.trades).map(key => ({...this.portfolio.trades[key], id: key, removeTrade: key}) )
			.map(trade => {
				return {
					...trade,
					date: moment(trade.time).format('YYYY-MM-DD HH:mm:ss'),
					pair: trade.fsym + '/' + trade.tsym,
				}
			});
		},
		buyTrades() {
			return this.mappedTrades.filter(trade => trade.tradeType === 'BUY');
		},
		sellTrades() {
			return this.mappedTrades.filter(trade => trade.tradeType === 'SELL');
		},
		totalSpent() {
			return this.buyTrades.reduce((sum, trade) => (trade.usdPrice*trade.quantity) + sum, 0);
		},
		totalReceived() {
			return this.sellTrades.reduce((sum, trade) => (trade.usdPrice*trade.quantity) + sum, 0);
		},
		tradesByCoin() {
			let byCoin = {};

			this.mappedTrades.forEach(trade => {
				if(!byCoin[trade.fsym]) {
					byCoin[trade.fsym] = [];
				}

				byCoin[trade.fsym].push(trade);
			});

			return byCoin;
		},


		//holdings
		holdings() {
			let holdings = {};

			Object.keys(this.tradesByCoin).forEach(coin => {
				let totalSpent = 0;
				let totalReceived = 0;

				let quantityBought = 0;
				let quantitySold = 0;

				let costTime = 0;
				let totalTimestamp = 0;
				let earliestTimestamp = 999999999999999;
				let latestTimestamp = 0;

				let fname;
				let tsyms = [];
				this.tradesByCoin[coin].forEach(trade => {
					if(trade.tradeType === 'BUY') {
						quantityBought += trade.quantity;
						totalSpent += trade.quantity * trade.usdPrice;
					}
					else {
						quantitySold += trade.quantity;
						totalReceived += trade.quantity * trade.usdPrice;
					}

					costTime += trade.time * (trade.usdPrice * trade.quantity / 10000);
					totalTimestamp += trade.time;

					if(trade.time < earliestTimestamp) earliestTimestamp = trade.time;
					if(trade.time > latestTimestamp) latestTimestamp = trade.time;
				
					fname = trade.fname;

					tsyms.push(trade.tsym);
				});

				let foundCoin = this.coinInfos.find(coin => coin.name === fname);
				let currentPrice = 0;
				if(foundCoin) currentPrice = numeral(foundCoin.price_usd).value();

				let holdingQuantity = quantityBought - quantitySold;
				let holdingValue = (quantityBought - quantitySold) * currentPrice;


				holdings[coin] = {
					coin,
					tsyms,
					currentPrice,
					totalSpent,
					totalReceived,
					holdingQuantity,
					holdingValue,
					quantityBought,
					quantitySold,
					averageBuyPrice: (totalSpent / quantityBought),
					averageSellPrice: (totalReceived / quantitySold),
					profit: holdingValue + totalReceived - totalSpent,
					weightedAverageTimestamp: (10000 * (costTime / (totalSpent + totalReceived))),
					earliestTimestamp,
					latestTimestamp
				}

			});

			return holdings;
		},
		mappedHoldings() {
			return Object.keys(this.holdings).map(key => ({...this.holdings[key], removeAll: key}) )
					.map(holding => {
						let mappedHolding = {...holding,weightedAverageDate: moment(holding.weightedAverageTimestamp).format('YYYY-MM-DD'), earliestDate: moment(holding.weightedAverageTimestamp).format('YYYY-MM-DD'), latestDate: moment(holding.weightedAverageTimestamp).format('YYYY-MM-DD')};

						if(this.coinInfosBySymbol[holding.coin]) {
							let { percent_change_1h, percent_change_24h, percent_change_7d, image_url } = this.coinInfosBySymbol[holding.coin];

							console.log('percentage changes', percent_change_1h, percent_change_24h, percent_change_7d)

							mappedHolding.percent_change_1h = numeral(percent_change_1h).value();
							mappedHolding.percent_change_24h = numeral(percent_change_24h).value();
							mappedHolding.percent_change_7d = numeral(percent_change_7d).value();

							mappedHolding.image_url = image_url;
						}
						return mappedHolding;
					});
		},
		totalHoldingsValue() {
			return this.mappedHoldings.reduce((sum, holding) => holding.holdingValue + sum, 0)
		},

	},
	watch: {
		user(val) {
			if(this.user && this.user.uid) {
				this.$store.dispatch('portfolio/bindPortfolio', this.$firebase);
			}
		},
		form_date() {
			console.log(this.form_date);
			this.updateConversions();
		},
		form_selectedCoin() {
			this.updateConversions();
		},
		form_selectedExchange() {
			this.updateConversions();
		},
		localConversions() {
			this.suggestPrice();
		},
		form_coinPriceInputType() {
			this.suggestPrice();
		},
		form_quantity() {
			if(typeof this.form_quantity === 'string') {
				this.form_quantity = parseInt(this.form_quantity)
				return;
			}
			if(this.form_coinPriceInputType && this.form_coinPriceInputType.includes('total')) {
				this.suggestPrice();
			}
		}
	},
	mounted() {
		console.log('DATE: ', this.form_date);
		this.$store.dispatch('portfolio/bindPortfolio', this.$firebase)
	},
	methods: {
		removeTrade(tradeId) {
			this.$store.dispatch('portfolio/removeTrade', { fb: this.$firebase, tradeId });
		},
		removeAllTradesForCoin(coinSym) {
			this.mappedTrades.filter(trade => trade.fsym === coinSym).forEach(trade => {
				this.$store.dispatch('portfolio/removeTrade', { fb: this.$firebase, tradeId: trade.id });
			});
		},
		suggestPrice() {
			if(!this.localConversions || !Object.keys(this.localConversions).length) {
				return;
			}

				let inputTypeSymbol;
				let invert = false;
				let total = false;
				console.log('input type', this.form_coinPriceInputType);
				if(this.form_coinPriceInputType) {
					if(this.form_coinPriceInputType.includes('Usd')) {
						inputTypeSymbol = 'USD';
					}
					else if(this.form_coinPriceInputType.includes('From')) {
						invert = true;
						inputTypeSymbol = this.form_selectedExchange.tsym;
					}
					else if(this.form_coinPriceInputType.includes('To')) {
						inputTypeSymbol = this.form_selectedExchange.tsym;
					}

					if(this.form_coinPriceInputType.includes('total')) {
						total = true;
					}
				}

				let conversionSymbol = inputTypeSymbol ? inputTypeSymbol : ( this.form_selectedExchange.symbol ? this.form_selectedExchange.symbol : null );

				console.log('Conversion symbol', conversionSymbol);
				let suggestedPrice = this.localConversions[conversionSymbol];

				if(suggestedPrice) {
					if(invert) {
						suggestedPrice = 1 / suggestedPrice;
					}

					console.log('total', total);
					console.log('form quantity', this.form_quantity);
					if(total && this.form_quantity) {
						suggestedPrice = suggestedPrice * this.form_quantity;
					}
				}


				console.log('setting suggseted price', suggestedPrice);
				this.form_localPrice = suggestedPrice;
		},
		updateConversions() {
			console.log('updating conversions')
			if(!this.form_selectedCoin || !this.form_date) return;

			let tsyms = 'BTC,ETH,USD';
			if(this.form_selectedExchange && this.form_selectedExchange.tsym) {
				tsyms += (',' + this.form_selectedExchange.tsym);
			}

			const fsym = this.form_selectedCoin.symbol;
			const timestamp = moment(this.form_date).unix();
			console.log('Updating conversions', fsym, timestamp, tsyms);

			axios.get(`https://min-api.cryptocompare.com/data/pricehistorical?fsym=${fsym}&tsyms=${tsyms}&ts=${timestamp}`).then(response => {
				let conversions = response.data[fsym];

				this.localConversions = conversions;
			});
		},
		addTrade() {
			// What we want in a trade: { fname, fsym, tsym, type (buy/sell), price: { localPrice, btcPrice, usdPrice }, quantity, exchangeName, time }

			this.addTradePending = true;
			
			if(!this.form_selectedCoin.name || !this.form_selectedCoin.symbol || !this.form_selectedExchange.tsym || !this.form_tradeType || !this.form_localPrice || !this.form_quantity || !this.form_selectedExchange.exchangeName) {
				console.log('Cannot add trade, not all details here');
				return;
			}

			if(!this.localConversions || !this.localConversions['USD'] || !this.localConversions['BTC'] || !this.localConversions['ETH'] || !this.localConversions[this.form_selectedExchange.tsym]) {
				console.log('All required conversions are not present');
				return;
			}

				let inputTypeSymbol;
				let invert = false;
				let total = false;
				console.log('input type', this.form_coinPriceInputType);
				if(this.form_coinPriceInputType) {
					if(this.form_coinPriceInputType.includes('Usd')) {
						inputTypeSymbol = 'USD';
					}
					else if(this.form_coinPriceInputType.includes('From')) {
						invert = true;
						inputTypeSymbol = this.form_selectedExchange.tsym;
					}
					else if(this.form_coinPriceInputType.includes('To')) {
						inputTypeSymbol = this.form_selectedExchange.tsym;
					}

					if(this.form_coinPriceInputType.includes('total')) {
						total = true;
					}
				}

				let conversionSymbol = inputTypeSymbol ? inputTypeSymbol : ( this.form_selectedExchange.symbol ? this.form_selectedExchange.symbol : null );

				if(!conversionSymbol) {
					console.log('Could not establish conversion symbol');
					return;
				}

				console.log('Conversion symbol', conversionSymbol);
				console.log(`1/${this.form_localPrice} * ${this.localConversions[conversionSymbol]} / ${this.localConversions[this.form_selectedExchange.symbol]}`);
				let exchangePrice = (1/this.form_localPrice) * this.localConversions[conversionSymbol] / this.localConversions[this.form_selectedExchange.tsym];
				console.log('Resulting raw exchange price', exchangePrice);



				if(exchangePrice) {
					if(invert) {
						exchangePrice = 1 / exchangePrice;
					}

					console.log('total', total);
					console.log('form quantity', this.form_quantity);
					if(total && this.form_quantity) {
						exchangePrice = exchangePrice * this.form_quantity;
					}
				}

				console.log('Final exchange price', exchangePrice);

				//exchangePrice is currently 1 of tsym = how many fsym

				//1/exchangePrice is 1 fsym = how many tsym? which is more natural?
				exchangePrice = 1 / exchangePrice;

			let trade = {
				fname: this.form_selectedCoin.name,
				fsym: this.form_selectedCoin.symbol,
				tsym: this.form_selectedExchange.tsym,
				tradeType: this.form_tradeType,
				executedExchangePrice: exchangePrice,
				btcPrice: exchangePrice * this.localConversions['BTC'] / this.localConversions[this.form_selectedExchange.tsym],
				ethPrice: exchangePrice * this.localConversions['ETH'] / this.localConversions[this.form_selectedExchange.tsym],
				usdPrice: exchangePrice * this.localConversions['USD'] / this.localConversions[this.form_selectedExchange.tsym],
				quantity: this.form_quantity,
				exchangeName: this.form_selectedExchange.exchangeName,
				time: moment(this.form_date).unix()*1000
			}

			console.log('Adding trade', trade);

			this.$store.dispatch('portfolio/addTrade', { trade, fb: this.$firebase })

			//TODO: If succesful, close modal. If fail, show error. Show loading.
		},

		//Coin selections
		onSelectCoin (coin) {
        	this.form_selectedCoin = coin;
	    },
	    resetSelectedCoin() {
	    	this.form_selectedCoin = {}
	    },
	    selectCoinOption () {
	    	// select option from parent component
	        this.form_selectedCoin = this.options[0]
	    },

	    onSelectExchange (exchange) {
        	this.form_selectedExchange = exchange;
	    },
	    resetSelectedExchange() {
	    	this.form_selectedExchange = {}
	    },
	    selectExchangeOption () {
	    	// select option from parent component
	        this.form_selectedExchange = this.options[0]
	    },


	}
}
</script>


<style>

.portfolio-stats {
	display: flex;
	justify-content: space-between;
	align-items: center;
	flex-wrap: wrap;
	padding-bottom: 5px;
}

.stat-container {
	height: auto;
	padding: 8px;
	margin: 5px 0;
	border-radius: 2px;
	background: white;
	display: flex;
	flex-direction: column;
	align-items: center;
}

@media screen and (min-width: 1024px){
  .stat-container {
    width: 20%;
  }
}

/*###Tablet(medium)###*/
@media screen and (min-width : 768px) and (max-width : 1023px){
  .stat-container {
    width: 45%;
  }
}

/*### Smartphones (portrait and landscape)(small)### */
@media screen and (min-width : 0px) and (max-width : 767px){
  .stat-container {
    width: 100%;
  }
}

.selected-coin-img {
	height: 30px;
}


.form-item-container {
	display: flex;
	flex-direction: column;
}

.form-item-input {
	display: flex;
}

.form-basic-select {
	flex: 1;
}

.price-item-input {
	flex-direction: column;
}

.form-container {
	padding: 5px 15px 15px 15px;
}

.add-trade-btn {
	margin-left: 8px;
}

.holdings {
	display: flex;
	flex-wrap: wrap;
	padding: 10px;
	justify-content: space-between;
	overflow: auto;
	max-height: 350px;
}

.add-coin-btn {
	border-radius: 50%;
	position: absolute;
	top: 15px;
	right: 5px;
	z-index: 999;
}

.holding-container {
	height: 300px;
	width: 300px;
	position: relative;
	border-radius: 2px;
	box-shadow: 0 5px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
	background: #fbfbfb;
	margin: 10px;

	text-align: center;
}



.holding-coin-img {
	height: 80px;
}

.holding-tsyms {
	position: absolute;
	top: 0;
	right: 0;
	display: flex;
}

.holding-tsym-img {
	height: 36px;
}

.holding-top {
	display: flex;
	justify-content: center;

	border-bottom: 1px solid #eeeeee;

	padding: 4px 0;
}

.holding-middle {
	display: flex;
	flex-direction: column;
	justify-content: center;
	padding-top: 10px;
}

.holding-value-num {
	font-size: 21px;
}

.then-profit-now {
	display: flex;
	padding-top: 8px;
}

.tpn-item {
	flex: 1;
}

.profit-positive {
	background: rgba(17,198,75,.8);
	color: white;
	border-radius: 6px;
	padding: 2px 5px;
}

.profit-negative {
	background: rgba(199, 32,39,.9);
	color: white;
	border-radius: 6px;
	padding: 2px 5px;
}

.portfolio-manager {
	padding: 18px;
	min-height: 100vh;
	background: rgba(17, 88, 141, .05);
	overflow: auto;
}

.portfolio-main {
	max-height: 400px;
	background: white;
	position: relative;
}

.trade-history {
	margin-top: 20px;
	min-height: 200px;
	max-height: 400px;
	background: white;
	overflow: auto;
}

.trade-history h5 {
	padding: 5px 0 0 5px;
}
.portfolio-main h5 {
	padding: 5px 0 5px 5px;
	border-bottom: 1px solid rgba(100,100,100,.1);
}


</style>