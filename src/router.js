import Vue from 'vue'
import Router from 'vue-router'

import index from './views/index.vue'
import aboutus from './views/aboutus.vue'
import reg from './views/reg.vue'
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
import blackswanrecruit from './components/blackswanrecruit.vue'
import businesslicense from './components/businesslicense.vue'
import cakeSize from './components/cakeSize.vue'

Vue.use(Router)

export default new Router({
  routes: [

    {path: '/',component: index},//首页
    {path: '/aboutus',component: aboutus},//关于我们页-已完成
    {path: '/reg',component: reg},//注册
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
    {path: '/blackswanrecruit',component: blackswanrecruit},//黑天鹅招聘-已完成
    {path: '/businesslicense',component: businesslicense},//官网营业资质-已完成
    {path: '/cakeSize',component: cakeSize},//蛋糕尺寸-已完成
  
  ]
})
