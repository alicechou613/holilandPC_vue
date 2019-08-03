import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//引入axios
import axios from './axios'
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

//每次跳转都回到页面顶部
router.afterEach((to, from, next) => {
  window.scrollTo(0, 0)
});