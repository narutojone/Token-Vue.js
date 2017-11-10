<template>
<footer class="tr-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-6 col-footer">
						<div class="nav-panel">
							<div class="nav-header"><h4>Our company</h4></div>
							<ul class="nav-pills">
								<li><nuxt-link to="privacy">Privacy policy</nuxt-link></li>
								<li><nuxt-link to="terms">Terms &amp; Conditions</nuxt-link></li>
								<li><nuxt-link to="disclaimer">Website Disclaimer</nuxt-link></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 col-footer panel-min-height">
						<div class="nav-panel">
							<div class="nav-header"><h4>Marketing</h4></div>
							<ul class="nav-pills">
								<li><a @click="$modal.show('advertise-modal')" href="#advertise">Advertise</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 col-footer">
						<div class="nav-panel">
							<div class="nav-header"><h4>Get in touch</h4></div>
							<ul class="nav-pills">
								<li><a @click="$modal.show('tip-modal')" href="#tip">Tip Token Recap</a></li>
								<li><a @click="$modal.show('contact-us-modal')" href="#contact">Contact Us</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12 mt-0">
						<ul class="soc">
							<li><a class="fa fa-facebook" href="https://www.facebook.com/tokenrecap" target="_blank"></a></li>
							<li><a class="fa fa-twitter" href="https://twitter.com/tokenrecap" target="_blank"></a></li>
							<li><a class="fa fa-telegram" href="https://t.me/joinchat/BF1ToQw4xcQjSEKi6FAPPA" target="_blank"></a></li>
							<li><a class="fa fa-youtube" href="https://www.youtube.com/channel/UChQpO-x-L6Kve2DiZJZDL8w" target="_blank"></a></li>
							<li><a class="fa fa-facebook" href="https://www.facebook.com/groups/TokenRecapGroup" target="_blank"></a></li>
							
							<li>
								<a href="https://discord.gg/MqKFKsM" class="discord-link" target="_blank"><svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 245 240"><style>.st0{fill:#ffffff;}</style><path class="st0" d="M104.4 104c-5.7 0-10.2 5-10.2 11s4.6 11 10.2 11c5.7 0 10.2-5 10.2-11s-4.5-11-10.2-11zm36.5 0c-5.8 0-10.3 5-10.3 11s4.6 11 10.2 11 10-5 10-11-4.4-11-10-11z"/><path class="st0" d="M189.5 20h-134C44.2 20 35 29.2 35 40.6v135.2c0 11.4 9.2 20.6 20.5 20.6H169l-5.4-18.5 12.8 11.8 12 11.2 21.6 19V40.6c0-11.4-9.2-20.6-20.5-20.6zM151 150.6l-6.7-8c13-3.8 18-12 18-12-4 2.7-8 4.6-11.4 6-5 2-10 3.4-14.6 4.2-9.6 1.8-18.4 1.3-26 0-5.6-1.2-10.5-2.8-14.6-4.4-2.3-1-4.8-2-7.3-3.4l-1-.5-.3-.3-2.8-1.7s4.8 8 17.5 11.8l-6.8 8.3c-22-.7-30.5-15.2-30.5-15.2C64.7 103.2 79 77 79 77c14.5-10.7 28.2-10.4 28.2-10.4l1 1.2c-18 5.2-26.3 13-26.3 13s2-1 5.8-2.8c10.7-4.7 19.2-6 22.7-6.3l1.7-.2c6-.8 13-1 20.2-.2 9.5 1 19.7 4 30 9.6 0 0-7.8-7.6-24.8-12.8l1.4-1.6s13.7-.3 28 10.5c0 0 14.5 26.2 14.5 58.4 0 0-8.5 14.5-30.6 15.2z"/></svg></a>
							</li>
						</ul>
						<!--<div class="nav-panel clearfix">
							<ul class="nav nav-pills nav-centered">
								<li><a> <i class="fa fa-user"></i> <span class="footer-cryptopains-count">279,074</span> registered Cryptopians</a></li>
								<li><a>Made with <i class="fa fa-heart love"></i> in London</a></li>
							</ul>
						</div>-->
					</div>
				</div>
			</div>

			<!-- Modals -->


			<modal name="tip-modal" :adaptive="true" height="auto" width="400px">
				<div class="mdl-title text-light">
					Tip Token Recap
				</div>
				<div class="mdl-body text-dark tip-body">
					<h4>Love our free service?</h4>
					<h5>A small donation goes a long way! :D</h5>

					<br />
					<h6>Bitcoin (BTC)</h6>

					<span class="address">15tUoqZpQkWnPLo1HP5DnZ8WNSMpDuRMba</span>

					<h6>Litecoin (LTC)</h6>
					<span class="address">LPGAJ1opYFpFU5Cztnt8yY4ay1WjjH65Mn</span>

					<h6>Ethereum (ETH)</h6>
					<span class="address">0xEc837E3F3915374A05a8B1dbEf9B27ce65A273fD</span>

					<h6>DigitalCash (DASH)</h6>
					<span class="address">Xf1WVJA94EsX5jpfNVMAS8kNeWBzvDeQ1y</span>
				</div>
			</modal>


			<modal name="contact-us-modal" :adaptive="true" height="auto" width="400px">
				<div class="mdl-title text-light">
					Contact Us
				</div>
				<div class="mdl-body text-dark contact-body">
					<small>Thank you for taking the time to write to Token Recap. We really look forward to getting in touch.</small>
					<br />

					<select v-model="selected">
						<option disabled value="">Request Type</option>
						<option>Listing</option>
						<option>Advertising</option>
						<option>Support</option>
						<option>Feedback</option>
						<option>Bug Report</option>
						<option>Other</option>
					</select>
					<!--<span>Request Type</span>-->
					<!--<b-dropdown size="sm">-->
						<!--<b-dropdown-item>Listing</b-dropdown-item>-->
						<!--<b-dropdown-item>Advertising</b-dropdown-item>-->
						<!--<b-dropdown-item>Support</b-dropdown-item>-->
						<!--<b-dropdown-item>Feedback</b-dropdown-item>-->
						<!--<b-dropdown-item>Bug Report</b-dropdown-item>-->
						<!--<b-dropdown-item>Other</b-dropdown-item>-->
					<!--</b-dropdown>-->

					<b-form-textarea v-model="contactMessage" placeholder="Please provide any relevant information about issue, request or suggestion." :rows="3" :max-rows="6"></b-form-textarea>
				</div>
				<div class="mdl-footer">
					<!--<b-btn variant="info"><i class="fa fa-envelope" aria-hidden="true" @click="sendContactMessage"></i> Send 123</b-btn>-->
					<button @click.prevent="sendemail" class="btn btn-info"><i class="fa fa-envelope"></i> Send</button>
					<button class="btn btn-danger" @click="$modal.hide('contact-us-modal')"><i class="fa fa-times"></i> Close</button>
				</div>
			</modal>

			<modal name="advertise-modal" :adaptive="true" height="auto" width="400px">
				<h4>Please send all queries related to advertisement to: <a href="mailto:vegeta@tokenrecap.com">vegeta@tokenrecap.com</a></h4>
			</modal>
		</footer>
</template>
<script>
export default {
	name: 'my-footer',
	data() {
    return {
      socialMedia: [
        {icon: '', url: 'https://www.facebook.com/tokenrecap'},
        {icon: '', url: 'https://twitter.com/tokenrecap'},
        {icon: '', url: 'https://t.me/joinchat/BF1ToQw4xcQjSEKi6FAPPA'},
        {icon: '', url: 'https://www.youtube.com/channel/UChQpO-x-L6Kve2DiZJZDL8w'},
        {icon: '', url: 'https://www.facebook.com/groups/TokenRecapGroup'},
        {icon: '', url: 'https://discord.gg/zu2VRN'}
      ],
      contactMessage: '',
	  contactType:'',
	  selected: ''
    }
  },
  methods: {
  	sendContactMessage() {
  	   console.log("clicke");
//  		if(this.contactMessage && this.contactMessage.length) {
//
//  		}
  	},
      sendemail(){
  	    emailjs.init("user_keQvpKjn83sR4OyYUEHCz");

          emailjs.send("mailgun","template_wlEinhb2",{
              to_name: "Derek",
              message_html: this.contactMessage,
              category:this.selected
          })
              .then(
                  function(response) {
                      console.log("SUCCESS", response);
                      alert('Mail Sent Successfully !!');
                  },
                  function(error) {
                      alert('Mail not sent successfully. Please try again');
                      console.log("FAILED", error);
                  }
              );
          	this.selected='';
          	this.contactMessage= '';
         	this.$modal.hide('contact-us-modal');
	  }
  }
}
</script>

<style scoped>

footer {
	margin-top: 25px;
	padding-top: 10px;
}

li > a {
    color: #2c4c76;
    padding-top: 2px;
    padding-bottom: 2px;
    font-size: 14px;
    border-radius: 4px;
    border-bottom: 1px solid transparent;
}

ul.soc {
	text-align: left;
	display: flex;
	flex-wrap: wrap;
}

.nav-panel {
	position: relative;
    overflow: hidden;
}

.nav-pills {
	padding-top: 5px;
    padding-bottom: 5px;
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}

.nav-pills li a {
	color: #bababa;
}

.container {
	padding: 10px;
}

li {
	display: block;
    margin-left: 2px;
    padding: 1px;
}

.discord-link {
/*	background: black !important;
*/}

.soc {
	text-align: right !important;
}

.soc li {
	display: flex;
	justify-content: flex-end;
}

.soc li a {
	    font-style: normal;
    font-weight: 400;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -ms-box-sizing: border-box;
    -o-box-sizing: border-box;
    box-sizing: border-box;
    -o-transition: .1s;
    -ms-transition: .1s;
    -moz-transition: .1s;
    -webkit-transition: .1s;
    transition: .1s;
    -webkit-transition-property: transform;
    transition-property: transform;
    -webkit-transform: translateZ(0);
    transform: translateZ(0);
    overflow: hidden;
    text-decoration: none;
    text-align: center;
    display: block;
    position: relative;
    z-index: 1;
    width: 40px;
    height: 40px;
    line-height: 36px;
    font-size: 20px;
    -webkit-border-radius: 100px;
    -moz-border-radius: 100px;
    border-radius: 0px;
    color: #ffffff;
    border: 1px solid #ffffff;
}

.nav-header {
	background: none;
    font-weight: bold;
    /*border-radius: 4px;*/
    border-bottom: 2px solid #aaaaaa;
}

.address {
	padding: 3px;
	background: #eea323;
	border-radius: 3px;
}

.tip-body, .contact-body {
	padding: 10px;
}

</style>