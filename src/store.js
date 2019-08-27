import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    uname:"",
    isLogin:'',
    count:''//购物车数量
  },
  //读取状态
   getters:{
     //console.log(this.$store.getters.uname)
    
     isLogin:(state)=>{
      return state.isLogin;
    },
     uname:(state)=>{
       return state.uname
     },
     count:(state)=>{
      return state.count
    }
    // computed:{
    //   myCount:function(){
    //     return this.$store.getters.count
    //   },
    // }
   },
   //修改状态值
  mutations: {
    //购物车加一
    // this.$store.commit('addCount')
    addCount:(state)=>{
      state.count++;
      sessionStorage.setItem('count',state.count);
    },
    reduceCount:(state)=>{
      state.count--;
      sessionStorage.setItem('count',state.count);
    },
    setAddCount:(state,count)=>{

      state.count=parseInt(state.count)+parseInt(count);
      sessionStorage.setItem('count',state.count);
    },
    //设置购物车数量
    setCount:(state,count)=>{
      state.count=count;
      sessionStorage.setItem('count',count);
    },
    // 修改用户名
    // this.$store.commit('setUname','huahua')
    setUname(state,uname){
      state.uname=uname;
      sessionStorage.setItem('uname',uname);
    },
    setIslogin(state,isLogin){
      state.isLogin=isLogin;
      sessionStorage.setItem('isLogin',isLogin);
    },
  },
  actions: {
    //样例
    //异步请求。每请求一次购物车数量加一。。调用方法this.$store.dispatch('modifyDelay')
    modifyDelay:(context)=>{//接收一个与store实例具有相同方法得属性得context对象
      setTimeout(()=>{
        context.commit('addCount');
        //模拟一个两秒钟的延迟（异步操作）
        //如果需要修改数据仓库中的数据，通过mutations来完成
        //场景：列表页的加载更多。需要请求服务器的数据，数据请求到在触发mutations里的函数
      },1500)
    }
  }
})

// 原来的
// import Vue from 'vue'
// import Vuex from 'vuex'

// Vue.use(Vuex)

// export default new Vuex.Store({
//   state: {
//     cartCount:0,//购物车总数量
//   },
//   mutations: {
//     //购物车数量加1
//     increment(state){
//       state.cartCount++;
//     },
//     //购物车数量增加指定值
//     updateCount(state,c){
//       state.cartCount+=c
//     }
//   },
//   getters:{
//     getCartCount:function(state){
//       return state.cartCount
//     }
//   },
//   actions: {

//   }
// })