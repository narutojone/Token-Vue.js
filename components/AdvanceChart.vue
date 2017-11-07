<template>
	<div>  
        <iframe style="width:100%; height: 600px;" src="https://demo_chart.tradingview.com/"></iframe>        
    </div>
</template>

<script>
import Vue from 'vue';
import VueHighcharts from 'vue-highcharts';


Vue.use(VueHighcharts);

const DEFAULT_OPTIONS = {
    chart: {
        type: 'line'
    },
    title: {
        text: ''
    },
    credits: {
        enabled: false
    },
    xAxis: {
        type: 'datetime',
        labels: {
            enabled: false
        }
    },
    yAxis: {
    },
    plotOptions: {
        series: {
            animation: true,
        }
    }
}

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
	}
}

</script>