<template>
    <div class="advance-chart-container">
        <iframe style="width:100%; height:520px" :srcdoc='            
            thClassValue(sym)
            '/>
    </div>    
</template>

<script>

import Vue from 'vue';
import VueHighcharts from 'vue-highcharts';

function displayAdvanceChart() {
    new TradingView.widget({
      "symbol": "COINBASE:BTCUSD",
      "interval": "D",
      "timezone": "Etc/UTC",
      "theme": "Black",
      "style": "1",
      "locale": "en",
      "toolbar_bg": "rgba(0, 0, 0, 1)",
      "hide_top_toolbar": true,
      "save_image": false,
      "hideideas": true
    });
}


Vue.use(VueHighcharts);

const iqrMultiplier = 5; //original 1.5

export default {
	name: 'advance-chart',
	props: {
		data: {
			type: Array,
			required: true 
		},
    sym: {
      type: String,
      required: true
      }
    },
    methods: {
        thClassValue: function (id) {
            var value = '<script src="https://d33t3vvu2t2yu5.cloudfront.net/tv.js">';
            value += '<'; value += '/script>';
            value += '<script>' 
            value += 'new TradingView.widget({"symbol":"';
            value += id; 
            value += "USD";
            value += '","interval": "D","timezone": "Etc/UTC", "theme": "Black","style": "1","locale": "en","hide_top_toolbar": true,"save_image": false,"hideideas": true, "hide_side_toolbar": false});';
            value += '<'; value +='/script>';
          
            return value;
       }
    }
}

</script>

<style scoped>

.advance-chart-container {
}

</style>