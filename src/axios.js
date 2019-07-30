//将引入axios库单独保存一个文件中
//减少main.js代码量
//1：引入vue实例
import Vue from "vue"
//2：引入axios库
import axios from "axios"
//3：发送请求时保存session信息
// axios.defaults.withCredentials=true

//4：设置请求基础路径
// axios.defaults.baseURL="http://127.0.0.1:3000"
axios.defaults.baseURL="http://192.168.3.39:80"
// axios.defaults.baseURL="https://www.tianqiapi.com"
//5：将axios注册vue实例
Vue.prototype.axios=axios
//6：在main.js引入axios.js文件
// import axios from "axios";
// import qs from "qs";
// import store from './store'

// const Axios=axios.create({
//   baseURL:"http://localhost:5050/",
//   withCredentials:true
// })
// Axios.interceptors.request.use(
//   config=>{
//     console.log("进入请求拦截器...");
//     //this.axios.post(
//       //"user/signin",
//       //{uname:dingding , upwd:123456}
//     //)
//     if(config.method==="post"){
//       config.data=qs.stringify(config.data)
//     }
//     if(localStorage.getItem("token")){
//       config.headers.token=localStorage.getItem("token");
//     }
//     if(sessionStorage.getItem("token")){
//       config.headers.token=sessionStorage.getItem("token");
//     }
//     return config;
//   },
//   error=>{
//     console.log("===发送请求拦截器报错===")
//     console.log(error);
//     console.log("===end===");
//     Promise.reject(error);
//   }
// );
// Axios.interceptors.response.use(
//   res=>{
//     console.log("触发响应拦截器...")
//     if(res.data.status==403){
//       localStorage.removeItem("token");
//       sessionStorage.removeItem("token");
//       store.commit("setIslogin",false);
//       store.commit("setUname","");
//     }else if(res.data.code==-1){
//       store.commit("setIslogin",false);
//       store.commit("setUname","");
//       //alert(res.data.msg+" 请先登录 !");
//     }else if(res.data.token){
//       store.commit("setUname",res.data.uname);
//       store.commit("setIslogin",true);
//       if(res.remember==="true"){
//         localStorage.setItem("token",res.data.token);
//       }else{
//         sessionStorage.setItem("token",res.data.token);
//       }
//     }
//     return res;
//   },
//   error=>{
    
//   }
// )
// export default {
//   install: function(Vue, Option){
//     Vue.prototype.axios=Axios;
//   }
// }