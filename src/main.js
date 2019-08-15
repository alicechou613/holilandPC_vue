import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import qs from 'qs'
Vue.prototype.qs=qs
//引入axios
import axios from './axios'
Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App),
  store
}).$mount('#app')

//每次跳转都回到页面顶部
router.afterEach((to, from, next) => {
  window.scrollTo(0, 0)
});