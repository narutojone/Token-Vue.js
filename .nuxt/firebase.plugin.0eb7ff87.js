import Vue from 'vue'
import Firebase from 'firebase'

const firebasePlugin = {
  install () {
    if (Vue.__nuxt_firebase_installed__) {
      return
    }
    Vue.__nuxt_firebase_installed__ = true

    if (!Vue.prototype.$firebase) {
      Vue.prototype.$firebase = Firebase.initializeApp({
        apiKey: process.env.apiKey || 'AIzaSyC2mBMp_YEcgrgszocptJLWODHVDcSrYqk',
        authDomain: process.env.authDomain || 'token-recap.firebaseapp.com',
        databaseURL: process.env.databaseURL || 'https://token-recap.firebaseio.com',
        storageBucket: process.env.storageBucket || ''
      })
    }
  }

}

Vue.use(firebasePlugin)
