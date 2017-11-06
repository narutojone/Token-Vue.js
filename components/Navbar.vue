<template>
	<b-navbar toggleable="md" type="dark" variant="info" class="tr-bg">
		<b-nav-toggle target="nav_collapse"></b-nav-toggle>

		<b-navbar-brand><nuxt-link to="/" class="logo-link"><img class="logo-img" src="~/assets/logo.png"></img></nuxt-link></b-navbar-brand>

		<b-collapse is-nav id="nav_collapse">

			<b-nav is-nav-bar>
				<li class="nav-item" v-for="link in links">
					<nuxt-link class="nav-link" :to="link.to">{{link.title}}</nuxt-link>
				</li>
			</b-nav>

			<!-- Right aligned nav items -->
			<b-nav is-nav-bar class="ml-auto">

				<div class="global-data hidden-sm hidden-xs">
					<small class="datum">Total Market <span class="val">${{formatDecimal(globalData.total_market_cap_usd, 0)}}</span></small>
					<small class="datum">24h Volume <span class="val">${{formatDecimal(globalData.total_24h_volume_usd, 0)}}</span></small>
					<small class="datum">BTC Dominance <span class="val">{{globalData.bitcoin_percentage_of_market_cap}}%</span></small>
				</div>

				<b-nav-form>
					 <basic-select class="form-basic-select" :options="searchOptions"
			                :selected-option="form_selectedSearchOption"
			                placeholder="Search For Anything"
			                @select="onSelectSearchOption">
			  				</basic-select>
				</b-nav-form>


				<div v-if="!loggedIn" class="login-container">
					<a class="login-link" @click="$modal.show('login-modal')" href="#login"><i class="fa fa-cogs" aria-hidden="true"></i> Login/Register</a>
				</div>
				<div v-else>
					<b-nav-item-dropdown right>
						<!-- Using button-content slot -->
						<template slot="button-content" >
							<em><img class="profile-img" :src="user.photoURL"></img></em>
							<em>{{user.name}}</em>
						</template>
						<b-dropdown-item href="#">Profile</b-dropdown-item>
						<b-dropdown-item href="#" @click="logOut">Signout</b-dropdown-item>
					</b-nav-item-dropdown>
				</div>

			</b-nav>

		</b-collapse>


		<!--  Modals -->
		<modal name="login-modal" :adaptive="true" height="auto" width="400px">
				<div class="mdl-title text-light">
					Login/Register
				</div>
				<div class="mdl-body text-dark">
					<div class="external-logins">
						<button class="loginBtn loginBtn--google" @click="loginGoogle">
							Google Login
						</button>
						<button class="loginBtn loginBtn--facebook" @click="loginFacebook">
							Facebook Login
						</button>
						<button class="loginBtn loginBtn--twitter" @click="loginTwitter">
							Twitter Login
						</button>

					</div>

					<b-tabs ref="tabs" card>
				    	<b-tab title="LOGIN" active>
				           <div class="login-container">
				           		 <b-form @submit="onLoginSubmit" class="login-form">
							      <b-form-group id="login_emailInputGroup"
							                    label="Email:" label-for="login_emailInput"
							                    description="">
							        <b-form-input id="login_emailInput"
							                      type="email" v-model="loginForm.email" required
							                      placeholder="Enter email"
							        ></b-form-input>
							      </b-form-group>
							      <b-form-group id="login_passwordInputGroup"
							                    label="Password:" label-for="login_passwordInput"
							                    description="">
							        <b-form-input id="login_passwordInput"
							                      type="password" v-model="loginForm.password" required
							                      placeholder="Enter password"
							        ></b-form-input>
							      </b-form-group>

							      <div v-if="logInError" class="log-in-error">Login Error: {{logInError.message}}</div>
							      <b-button type="submit" variant="primary" class="login-btn">Login</b-button>
							    </b-form>
				           </div>
				        </b-tab>
				        <b-tab title="REGISTER">
				        	<div class="register-container">
				           		 <b-form @submit="onRegisterSubmit" class="register-form">
							      <b-form-group id="register_emailInputGroup"
							                    label="Email:" label-for="register_emailInput"
							                    description="We'll never share your email with anyone else.">
							        <b-form-input id="register_emailInput"
							                      type="email" v-model="registerForm.email" required
							                      placeholder="Enter email"
							        ></b-form-input>
							      </b-form-group>
							      <b-form-group id="register_passwordInputGroup"
							                    label="Password:" label-for="register_passwordInput"
							                    description="Choose a secure password.">
							        <b-form-input id="register_passwordInput"
							                      type="password" v-model="registerForm.password" required
							                      placeholder="Enter password"
							        ></b-form-input>
							      </b-form-group>

							      <div v-if="registerError" class="log-in-error">Register Error: {{registerError.message}}</div>
							      <b-button type="submit" variant="primary" class="register-btn">Register</b-button>
							    </b-form>
				           </div>
				        </b-tab>
				    </b-tabs>
				</div>


			</modal>

	</b-navbar>
</template>

<script>
import BasicSelect from '~/components/BasicSelect.vue'

var numeral = require('numeral');

import { mapGetters } from 'vuex'

	export default {
		name: 'navbar',
		components: {
			BasicSelect
		},
		data() {
		    return {
		      links: [
		        {
		          to: '/coins',
		          title: 'Coins'
		        },
		        {
		        	to: '/portfolio',
		        	title: 'Portfolio'
		        },
		        {
		          to: '/exchanges',
		          title: 'Exchanges'
		        },
		        // {
		        //   to: '/mining',
		        //   title: 'Mining'
		        // },
		        {
		          to: '/wallets',
		          title: 'Wallets'
		        },
		        // {
		        //   to: '/guides',
		        //   title: 'Guides'
		        // },
		        
		      ],
		      loginForm: {
		      	email: '',
		      	password: ''
		      },
		      registerForm: {
		      	email: '',
		      	password: ''
		      },
		      form_selectedSearchOption: {},
		    }
		  },
		  computed: {
		  	...mapGetters({
		  		user: 'user/getUser',
		  		logInError: 'user/getSignInError',
		  		registerError: 'user/getRegisterError',
		  		loggedIn: 'user/hasCurrentUser',
		  		globalData: 'globalData/getGlobalData',
		  		coinInfos: 'coinInfos/getCoinInfos',
		  		exchanges: 'exchanges/getExchanges',
		  		wallets: 'wallets/getWallets'
		  	}),
		  	searchOptions() {
		  		let searchOptions = [];

		  		searchOptions = searchOptions.concat(this.coinInfos ? this.coinInfos.map(coinInfo => ({...coinInfo, text: coinInfo.name + '(' + coinInfo.symbol + ')'})) : []);
		  		searchOptions = searchOptions.concat(this.exchanges ? this.exchanges.map(exchange => ({...exchange, text: exchange.name})) : []);
		  		searchOptions = searchOptions.concat(this.wallets ? this.wallets.map(wallet => ({...wallet, text: wallet.name})) : []);


		  		return searchOptions;
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
			}
		  },
		  methods: {
		  	loginGoogle() {
				this.$store.dispatch('user/logIn', { method: 'external', provider: 'google' });	       
			},
			loginFacebook() {
				this.$store.dispatch('user/logIn', { method: 'external', provider: 'facebook' });	       
			},
			loginTwitter() {
				this.$store.dispatch('user/logIn', { method: 'external', provider: 'twitter' });	       
			},
			onLoginSubmit(e) {
				e.preventDefault();
				this.$store.dispatch('user/logIn', { method: 'email', email: this.loginForm.email, password: this.loginForm.password });
			},
			onRegisterSubmit(e) {
				e.preventDefault();
				this.$store.dispatch('user/register', { email: this.registerForm.email, password: this.registerForm.password })
			},
			logOut() {
				this.$store.dispatch('user/logOut')
			},
			onSelectSearchOption(searchOption) {
				if(searchOption.price_usd) {
					//coin
					this.$router.push('/coin?name=' + searchOption.name)
				}
				else if(searchOption.country) {
					//exchange
					this.$router.push('/exchanges#' + searchOption.name)
				}
				else {
					//wallet
					this.$router.push('/wallets#' + searchOption.name);
				}
			}
		  },
		  watch: {
		  	user(val) {
		  		if(this.user && this.user.uid) {
		  			if(this.$modal) this.$modal.hide('login-modal')
		  		}
		  	}
		  }
	}
</script>

<style>


/**
LOGIN BUTTONS
*/


/* Shared */
.loginBtn {
  box-sizing: border-box;
  position: relative;
  /* width: 13em;  - apply for fixed size */
  margin: 0.2em;
  padding: 0 15px 0 46px;
  border: none;
  text-align: left;
  line-height: 34px;
  white-space: nowrap;
  border-radius: 0.2em;
  font-size: 16px;
  color: #FFF;
}
.loginBtn:before {
  content: "";
  box-sizing: border-box;
  position: absolute;
  top: 0;
  left: 0;
  width: 34px;
  height: 100%;
}
.loginBtn:focus {
  outline: none;
}
.loginBtn:active {
  box-shadow: inset 0 0 0 32px rgba(0,0,0,0.1);
}
.loginBtn:hover {
	cursor: pointer;
}


/* Facebook */
.loginBtn--facebook {
  background-color: #4C69BA;
  background-image: linear-gradient(#4C69BA, #3B55A0);
  /*font-family: "Helvetica neue", Helvetica Neue, Helvetica, Arial, sans-serif;*/
  text-shadow: 0 -1px 0 #354C8C;
}
.loginBtn--facebook:before {
  border-right: #364e92 1px solid;
  background: url('~/assets/icon_facebook.png') 6px 6px no-repeat;
}
.loginBtn--facebook:hover,
.loginBtn--facebook:focus {
  background-color: #5B7BD5;
  background-image: linear-gradient(#5B7BD5, #4864B1);
}


/* Google */
.loginBtn--google {
  /*font-family: "Roboto", Roboto, arial, sans-serif;*/
  background: #DD4B39;
}
.loginBtn--google:before {
  border-right: #BB3F30 1px solid;
  background: url('~/assets/icon_google.png') 6px 6px no-repeat;
}
.loginBtn--google:hover,
.loginBtn--google:focus {
  background: #E74B37;
}

/* Twitter */
.loginBtn--twitter {
  /*font-family: "Roboto", Roboto, arial, sans-serif;*/
  background: #1bb2e9;
}
.loginBtn--twitter:before {
  border-right: #10516A 1px solid;
  background: url('~/assets/icon_twitter.png') 6px 6px no-repeat;
}
.loginBtn--twitter:hover,
.loginBtn--twitter:focus {
  background: #33C1F5;
}
/**
END LOGIN BUTTONS
*/

.profile-img {
	height: 20px;
	margin: 0 5px;
}

.global-data {
	display: flex;
	flex-direction: column;
}

.datum {
	color: hsla(0,0%,100%,.5);
	font-size: 10px;
	margin-right: 15px;
}

.datum .val {
	color: hsla(0,0%,100%,.8);
}

.logo-link {
	text-decoration: none;
	color: white;
}

.logo-link:hover {
	text-decoration: none !important;
	color: rgba(255,255,255,.8) !important;
}

.logo-img {
	height: 36px;
}

.nuxt-link-active {
	color: white !important;
	text-shadow: #ffffff 0 0 10px;
}

.login-container {
	display: flex;
	align-items: center;
}

.external-logins {
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
	margin: 10px 0;
}

.login-link {
	color: white;
	text-decoration: none !important;
}

.login-link:hover {
	color: white;
	text-shadow: #ffffff 0 0 10px;
}

.nav.card-header-tabs {
	justify-content: space-around;
}

.login-container,.register-container {
	display: flex;
	justify-content: center;
	padding: 10px;
}

.login-btn,.register-btn {
	width: 100%;
}

form.login-form,form.register-form {
	width: 100%;
}

.log-in-error,.register-error {
	color: #b13133;
}

</style>