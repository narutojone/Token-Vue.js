<template>
	<div class="chart-container">
		<highcharts class="chart" :options="options"></highcharts>
	</div>
</template>


<script>
import Vue from 'vue';
import VueHighcharts from 'vue-highcharts';

Vue.use(VueHighcharts);

const DEFAULT_OPTIONS = {
            // chart: {
            //     type: 'area',
            //     backgroundColor: null,
            //     borderWidth: 0,
            //     margin: [4, 0, 2, 0],
            //     style: {
            //         overflow: 'visible'
            //     },
            //     zoomType: 'x',

            //     // small optimalization, saves 1-2 ms each sparkline
            //     skipClone: true
            // },
            // title: {
            //     text: ''
            // },
            // credits: {
            //     enabled: false
            // },
            // xAxis: {
            //     labels: {
            //         enabled: false
            //     },
            //     title: {
            //         text: null
            //     },
            // },
            // yAxis: {
            //     labels: {
            //         enabled: false
            //     },
            //     title: {
            //         text: null
            //     },
            // },
            // legend: {
            //     enabled: false
            // },
            // tooltip: {
            //     backgroundColor: null,
            //     borderWidth: 0,
            //     shadow: false,
            //     useHTML: true,
            //     hideDelay: 0,
            //     shared: true,
            //     padding: 10,
            //     positioner: function (w, h, point) {
            //         return { x: point.plotX - w / 2, y: point.plotY - h };
            //     }
            // },
            // plotOptions: {
            //     series: {
            //         animation: true,
            //         lineWidth: 3,
            //         shadow: false,
            //         states: {
            //             hover: {
            //                 lineWidth: 4
            //             }
            //         },
            //         marker: {
            //             radius: 1,
            //             states: {
            //                 hover: {
            //                     radius: 2
            //                 }
            //             }
            //         },
            //         fillOpacity: 0.25
            //     },
            //     column: {
            //         negativeColor: '#910000',
            //         borderColor: 'silver'
            //     },
            //     area: {
            //         color: 'rgba(253,2,2,.7',
            //         fillColor: 'rgba(253,2,2,.58)'
            //     }
            // }
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
                },
                title: {
                    text: null
                },
                lineWidth: 0,
                tickWidth: 0,
                lineWidth: 0,
                minorGridLineWidth: 0,
                lineColor: 'transparent',
                labels: {
                    enabled: false
                },
                minorTickLength: 0,
                tickLength: 0
            },
            yAxis: {
                labels: {
                    enabled: false
                },
                title: {
                    text: null
                },
                lineWidth: 0,
                tickWidth: 0,
                gridLineColor: 'transparent'
            },
            plotOptions: {
                series: {
                    animation: true,
                },
                line: {
                    marker: {
                        enabled: false
                    }
                }
            },
            legend: {
                enabled: false
            },
        }
export default {

	name: 'sparkline',
	props: {
		data: {
			type: Array,
			required: true 
		},
        baseColor: {
            type: Object,
            required: false
        },
        sym: {
            type: String,
            required: true
        }
	},
	computed: {
		options() {
			let opts = {...DEFAULT_OPTIONS, plotOptions: {...DEFAULT_OPTIONS.plotOptions, area: {...DEFAULT_OPTIONS.area}}};

            let baseColor = this.baseColor;
            if(!baseColor) baseColor = {r: 0, g: 100, b: 60};

            opts.plotOptions.line = {...opts.plotOptions.line, fillColor: `rgba(${baseColor.r},${baseColor.g},${baseColor.b},.33)`, color: `rgba(${baseColor.r},${baseColor.g},${baseColor.b},.57)`};

            //opts.yAxis.min = this.data[0] ? this.data[0][1] : 0;

			opts.series = [{data: this.data, name: this.sym}];

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