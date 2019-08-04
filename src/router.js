import Vue from 'vue'
import Router from 'vue-router'

import index from './views/index.vue'
import aboutus from './views/aboutus.vue'
import reg from './views/reg.vue'
import login from './views/login.vue'
import cart from './views/cart.vue'
import search from './views/search.vue'
import allproducts from './views/allproducts.vue'
import wagashi from './views/wagashi.vue'
import detail from './views/detail.vue'
import cakeSeries from './views/cakeSeries.vue'
import classicSeries from './views/classicSeries.vue'
import childrenSeries from './views/childrenSeries.vue'
import starProducts from './views/starProducts.vue'
import account from './components/account.vue'
import address from './components/address.vue'
import aside from './components/aside.vue'
import footer_more from './components/footer_more.vue'
import blackswanrecruit from './components/blackswanrecruit.vue'
import holilandrecruit from './components/holilandrecruit.vue'
import businesslicense from './components/businesslicense.vue'
import league from './components/league.vue'
import cakeSize from './components/cakeSize.vue'
import service from './components/service.vue'
import shoppingguide from './components/shoppingguide.vue'
import storeAddress from './components/storeAddress.vue'
import message from './components/message.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',component: index},//首页
    {path: '/aboutus',component: aboutus},//关于我们页-已完成
    {path: '/reg',component: reg},//注册
    {path: '/login',component: login},//注册
    {path: '/cart',component: cart},//购物车
    {path: '/search/:search_input',component: search},//购物车
    {path: '/cakeSeries',component: cakeSeries},//蛋糕系列
    {path: '/classicSeries',component: classicSeries},//经典系列
    {path: '/childrenSeries',component: childrenSeries},//儿童系列
    {path: '/starProducts',component: starProducts},//明星系列和尊爱系列合并。展示尊爱系列产品
    {path: '/allproducts',component: allproducts},//全部商品页-数据未写活。数据库没数据
    {path: '/wagashi',component: wagashi},//零食糕点页-数据未写活。数据库没数据
    {path: '/detail',component: detail},//零食糕点页-数据未写活。数据库没数据
    {path: '/account',component: account},//我的账户页-静态页面
    {path: '/address',component: address},//我的收货地址页-静态页面
    {path: '/aside',component: aside},//帮助中心页侧边栏-静态页面
    {path: '/footer_more',component: footer_more},//蛋糕页面底部栏
    {path: '/blackswanrecruit',component: blackswanrecruit},//黑天鹅招聘-已完成
    {path: '/holilandrecruit',component: holilandrecruit},//好利来招聘-已完成
    {path: '/businesslicense',component: businesslicense},//官网营业资质-已完成
    {path: '/league',component: league},//加盟维权
    {path: '/message',component: message},//留言板
    {path: '/service',component: service},//客服中心
    {path: '/shoppingguide',component: shoppingguide},//购物流程
    {path: '/storeAddress',component: storeAddress},//地区门店列表
    {path: '/cakeSize',component: cakeSize},//蛋糕尺寸-已完成
  ],
})
