<template>
	<div class="chart-container">
		<highstock class="chart" :options="options"></highstock>
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

function filterOutliers(someArray, valueFunction) {

  if(someArray.length < 4)
    return someArray;

  let values, q1, q3, iqr, maxValue, minValue;

  values = someArray.slice().sort( (a, b) => valueFunction(a) - valueFunction(b));//copy array fast and sort

  if((values.length / 4) % 1 === 0){//find quartiles
    q1 = 1/2 * (valueFunction(values[(values.length / 4)]) + valueFunction(values[(values.length / 4) + 1]));
    q3 = 1/2 * (valueFunction(values[(values.length * (3 / 4))]) + valueFunction(values[(values.length * (3 / 4)) + 1]));
  } else {
    q1 = valueFunction(values[Math.floor(values.length / 4 + 1)]);
    q3 = valueFunction(values[Math.ceil(values.length * (3 / 4) + 1)]);
  }

  iqr = q3 - q1;
  maxValue = q3 + iqr * iqrMultiplier;
  minValue = q1 - iqr * iqrMultiplier;

  console.log(`iqr ${iqr}, max ${maxValue}, min ${minValue}`)

  let result = values.filter((x) => (valueFunction(x) >= minValue) && (valueFunction(x) <= maxValue));

  return result;
}

export default {

	name: 'line-chart',
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
	computed: {
		options() {
			let opts = {...DEFAULT_OPTIONS, plotOptions: {...DEFAULT_OPTIONS.plotOptions, area: {...DEFAULT_OPTIONS.area}}};

            let filteredData = filterOutliers(this.data.filter(point => point && point[1]), (point) => point[1]);

            filteredData.sort((a, b) => a[0] - b[0]);

			opts.series = [{name: this.sym, data: filteredData}];

			return opts;
		}
	}

}
</script>

<style scoped>

.chart-container {
}

.chart {
    width: 100%;
    height: 100%;
}

</style>