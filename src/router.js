import Vue from 'vue'
import Router from 'vue-router'

import index from './views/index.vue'
// import header from './views/header.vue'
import aboutus from './views/aboutus.vue'
import reg from './views/reg.vue'
import allproducts from './views/allproducts.vue'
import account from './components/account.vue'
import address from './components/address.vue'
import aside from './components/aside.vue'

Vue.use(Router)

export default new Router({
  routes: [

    {path: '/',component: index},//首页
    {path: '/aboutus',component: aboutus},//关于我们页-已完成
    {path: '/reg',component: reg},//关于我们页-已完成
    // {path: '/header',component: header},//头部
    {path: '/allproducts',component: allproducts},//零食糕点页-数据未写活。数据库没数据
    {path: '/account',component: account},//我的账户页-静态页面
    {path: '/address',component: address},//我的收货地址页-静态页面
    {path: '/aside',component: aside},//帮助中心页侧边栏-静态页面
   
  ]
})
