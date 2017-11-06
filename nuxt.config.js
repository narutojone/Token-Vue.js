module.exports = {
  /*
  ** Headers of the page
  */
  head: {
    title: 'Token Recap',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: 'Token Recap is the best crypto website!' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ],
    script: [
      { src: 'https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js' }
    ]
  },
  /*
  ** Customize the progress bar color
  */
  loading: { color: '#3B8070' },
  /*
  ** Build configuration
  */
  build: {
  },

  plugins: ['~plugins/vue-js-modal', { src: '~plugins/highstock', ssr: false }, { src: '~plugins/ga.js', ssr: false }],

  modules: [
    ['@nuxtjs/bootstrap-vue'],
    ['@nuxtjs/font-awesome'],
    {
      src: '@rafamaciel/firebase',
      options: {
        apiKey: "AIzaSyC2mBMp_YEcgrgszocptJLWODHVDcSrYqk",
        authDomain: "token-recap.firebaseapp.com",
        databaseURL: "https://token-recap.firebaseio.com",
        projectId: "token-recap",
        storageBucket: "",
        messagingSenderId: "1079292668"
      }
    }
  ],
}
