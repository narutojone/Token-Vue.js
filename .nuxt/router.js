import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

const _597c4f0b = () => import('..\\pages\\index.vue' /* webpackChunkName: "pages\\index" */).then(m => m.default || m)
const _a86becda = () => import('..\\pages\\wallets.vue' /* webpackChunkName: "pages\\wallets" */).then(m => m.default || m)
const _34215a81 = () => import('..\\pages\\privacy.vue' /* webpackChunkName: "pages\\privacy" */).then(m => m.default || m)
const _7c4a72b2 = () => import('..\\pages\\disclaimer.vue' /* webpackChunkName: "pages\\disclaimer" */).then(m => m.default || m)
const _7691ebe8 = () => import('..\\pages\\coin.vue' /* webpackChunkName: "pages\\coin" */).then(m => m.default || m)
const _4ee7c79d = () => import('..\\pages\\advertising.vue' /* webpackChunkName: "pages\\advertising" */).then(m => m.default || m)
const _5f57323b = () => import('..\\pages\\coins.vue' /* webpackChunkName: "pages\\coins" */).then(m => m.default || m)
const _3b2bf52e = () => import('..\\pages\\exchanges.vue' /* webpackChunkName: "pages\\exchanges" */).then(m => m.default || m)
const _65f5c801 = () => import('..\\pages\\portfolio.vue' /* webpackChunkName: "pages\\portfolio" */).then(m => m.default || m)
const _037a0d40 = () => import('..\\pages\\terms.vue' /* webpackChunkName: "pages\\terms" */).then(m => m.default || m)



const scrollBehavior = (to, from, savedPosition) => {
  // SavedPosition is only available for popstate navigations.
  if (savedPosition) {
    return savedPosition
  } else {
    let position = {}
    // If no children detected
    if (to.matched.length < 2) {
      // Scroll to the top of the page
      position = { x: 0, y: 0 }
    }
    else if (to.matched.some((r) => r.components.default.options.scrollToTop)) {
      // If one of the children has scrollToTop option set to true
      position = { x: 0, y: 0 }
    }
    // If link has anchor, scroll to anchor by returning the selector
    if (to.hash) {
      position = { selector: to.hash }
    }
    return position
  }
}


export function createRouter () {
  return new Router({
    mode: 'history',
    base: '/',
    linkActiveClass: 'nuxt-link-active',
    linkExactActiveClass: 'nuxt-link-exact-active',
    scrollBehavior,
    routes: [
		{
			path: "/",
			component: _597c4f0b,
			name: "index"
		},
		{
			path: "/wallets",
			component: _a86becda,
			name: "wallets"
		},
		{
			path: "/privacy",
			component: _34215a81,
			name: "privacy"
		},
		{
			path: "/disclaimer",
			component: _7c4a72b2,
			name: "disclaimer"
		},
		{
			path: "/coin",
			component: _7691ebe8,
			name: "coin"
		},
		{
			path: "/advertising",
			component: _4ee7c79d,
			name: "advertising"
		},
		{
			path: "/coins",
			component: _5f57323b,
			name: "coins"
		},
		{
			path: "/exchanges",
			component: _3b2bf52e,
			name: "exchanges"
		},
		{
			path: "/portfolio",
			component: _65f5c801,
			name: "portfolio"
		},
		{
			path: "/terms",
			component: _037a0d40,
			name: "terms"
		}
    ],
    fallback: false
  })
}
