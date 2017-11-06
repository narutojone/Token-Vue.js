<template>
	<div class="chart-container">
		<highstock class="chart" :options="options"></highstock>
	</div>
</template>


<script>

const DEFAULT_OPTIONS = {

        rangeSelector: {
            selected: 1
        },
        
        yAxis: [{
            labels: {
                align: 'right',
                x: -3
            },
            title: {
                text: 'OHLC'
            },
            height: '60%',
            lineWidth: 2,
            resize: {
                enabled: true
            }
        }, {
            labels: {
                align: 'right',
                x: -3
            },
            title: {
                text: 'Volume'
            },
            top: '65%',
            height: '35%',
            offset: 0,
            lineWidth: 2
        }],

        tooltip: {
            split: true
        },

        rangeSelector: {
            buttons: [{
                type: 'hour',
                count: 1,
                text: '1h'
            }, {
                type: 'day',
                count: 1,
                text: '1d'
            }, {
                type: 'day',
                count: 3,
                text: '3d'
            }, {
                type: 'week',
                text: '1w'
            }, {
                type: 'month',
                count: 1,
                text: '1m'
            }, {
                type: 'all',
                text: 'All'
            }]
        }
    }
export default {

	name: 'candle-volume-chart',
	props: {
		data: {
			type: Array,
			required: true 
		},
        title: {
            type: String,
            required: true
        },
        sym: {
            type: String,
            required: true
        }
	},
	computed: {
		options() {
            let data = this.data.map(candle => {
                return [
                    candle.time,
                    candle.open,
                    candle.high,
                    candle.low,
                    candle.close,
                    candle.volumefrom + candle.volumeto
                ]
            });

            var ohlc = [],
                volume = [],
                dataLength = data.length,
                // set the allowed units for data grouping
                groupingUnits = [[
                    'week',                         // unit name
                    [1]                             // allowed multiples
                ], [
                    'month',
                    [1, 2, 3, 4, 6]
                ]],

                i = 0;

            for (i; i < dataLength; i += 1) {
                ohlc.push([
                    data[i][0], // the date
                    data[i][1], // open
                    data[i][2], // high
                    data[i][3], // low
                    data[i][4] // close
                ]);

                volume.push([
                    data[i][0], // the date
                    data[i][5] // the volume
                ]);
            }

			let opts = {...DEFAULT_OPTIONS};

			opts.series = [{
                type: 'candlestick',
                name: this.sym,
                data: ohlc,
                dataGrouping: {
                    units: groupingUnits
                }
            }, {
                type: 'column',
                name: 'Volume',
                data: volume,
                yAxis: 1,
                dataGrouping: {
                    units: groupingUnits
                }
            }]

            opts.title = { text: this.title };

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