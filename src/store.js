import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    cid:0,
    searchKws:"",
    uname:"",
    islogin:false
  },
  //读取状态
  /*getters:{
    cid:(state)=>{
      return state.cid;
    }
  },*/
   //修改状态值
  mutations: {
    setUname(state,uname){
      state.uname=uname;
    },
    setIslogin(state,islogin){
      state.islogin=islogin;
    },
    cityAlert:(state,cid)=>{
      state.cid=cid;
      localStorage.setItem('cid',cid);
    },
    search(state,searchKws){
      state.searchKws=searchKws;
    }
  },
  actions: {

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