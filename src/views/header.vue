<template>
   <div class="div_head">
      <router-link to="/" class="a_head_logo">
        <img src="../assets/index/logo.png" alt="好利来" class="img_head_logo">
      </router-link>
      <!-- 上面的地址购物车登录注册 -->
      <div class="div_head_right">
        <div class="div_head_d" id="login">
          <!-- 注销 -->
          <span href="javascript:;" v-show="isLogina=='true'" @click="logout" class="a_reg_head" v-text="`注销`"></span>
          <!-- 注册 -->
          <router-link to="/reg" v-show="isLogina!='true'" class="a_reg_head" v-text="`注册`"></router-link>
          <!-- uname -->
          <span href="javascript:;" v-show="isLogina=='true'" class="a_reg_head  a_login_head">{{$store.getters.uname}}</span>
          
          <!-- 登录 -->
          <router-link to="/login" v-show="isLogina!='true'" class="a_reg_head a_login_head" v-text="`登录`"></router-link>
          <!-- 购物车 -->
          <div class="div_trolley">
            <router-link to="/cart" class="a_trolley">
              <span class="span_a_trolley"></span>
              <span class="span_trolley" v-show="myCount>=1">件</span>
              <span class="span_trolley">{{myCount}}</span>
            </router-link>
          </div>
          <!-- 地址 -->
          <div class="div_address_head">
            <router-link to="/" class="a_address_head">
              <span class="a_reg_head">北京</span>
              <img src="../assets/index/dizhi_icon.png" class="div_a_coord_head" alt="">
            </router-link>
          </div>
          <!-- 导航栏 -->
          <div class="div_nav">
            <ul class="ul_nav">
              <li class="li_nav li_nav_2">
                <router-link to="/allproducts">
                  <span class="span_nav">All Products</span>
                  <span class="span_nav">全部产品</span>
                </router-link>
              </li>
              <li class="li_nav li_nav_2" id="li_cake">
                <div>
                  <router-link to="/cakeSeries">
                    <span class="span_nav">Cake Series</span>
                    <span class="span_nav">蛋糕系列</span>
                  </router-link>
                  <ul class="ul_cake">
                    <li class="router_cake_first router_cake">
                      <router-link to="/classicSeries">
                        经典系列
                      </router-link>
                    </li>
                    <li class="router_cake">
                      <router-link to="/childrenSeries">
                        儿童系列
                      </router-link>
                    </li>
                    <li class="router_cake">
                      <router-link to="/starProducts">
                        尊爱系列
                      </router-link>
                    </li>
                  </ul>
                </div>
                  
              </li>
              <li class="li_nav li_nav_2">
                <router-link to="/wagashi">
                  <span class="span_nav">Wagashi</span>
                  <span class="span_nav ">零食糕点</span>
                </router-link>
              </li>
              <li class="li_nav">
                <router-link to="/aboutus">
                  <span class="span_nav">About Us</span>
                  <span class="span_nav">关于我们</span>
                </router-link>
              </li>
            </ul>
          </div>

        </div>
        <div class="div_divphone">
          <img src="../assets/index/phone_icon.png" alt="客服电话" class="img_phone">
          <span class="span_phone">400-700-5999</span>
        </div>
        <div class="div_search">
          <div class="div_input_search">
            <input type="text" id="search" class="input_search" v-model="search_input">
            <img src="../assets/index/search_icon.png" class="img_search" @click="search_img()"> 
          </div>
        </div>
      </div>
    </div> 
</template>


<script>
 export default {
   data(){
     return {
         isLogina:'',
        uname:"",
        search_input:''
     }
   },
   //路由跳转时若已跳转search页。在继续跳转search页的时候刷新页面。
   watch: {
    '$route' (to, from) {
        this.$router.go(0);
    }
},
   methods:{
        load(){
          if(this.$store.getters.isLogin==''){
          //每次刷新。检测是否已经登录
              //如果首次进入网站，就设置vuex里的isLogin为false
            if(sessionStorage.getItem('isLogin')=='undefined'||sessionStorage.getItem('isLogin')=='null'){
              sessionStorage.setItem('isLogin','false')
              //如果不是首次进入网站。就把缓存的登录数据给vuex（未登录+已登录）
            }else{
              this.$store.commit('setIslogin',sessionStorage.getItem('isLogin'))
            }
            // console.log(this.$store.getters.isLogin,'147')
          }
           if(this.$store.getters.isLogin=='true'){
          //如果是已登录，把缓存中的用户名给vuex
             this.$store.commit('setUname',sessionStorage.getItem('uname'))
             //如果缓存中购物车数量为空,调用购物车数据
             if(sessionStorage.getItem('count')=='undefined'||sessionStorage.getItem('count')=='null'){
                // this.axios.post('/api/getCarts','',
                //   {headers: {'access_user_token':sessionStorage.getItem("token")||localStorage.getItem("token")}
                //   }).then(res=>{
                //       console.log(res.data.data)
                //       var list=res.data.data
                //       var count=0
                //       for(var item of list){
                //         count+=item.count
                //       }
                //       console.log(count)
                //       this.$store.commit('setCount',count)
                //       })
                //   .catch(err=>{console.log(err)})
             }else{
               //如果是已登录，缓存中有购物车数量，把缓存中的购物车商品数量给vuex
             }
               this.$store.commit('setCount',sessionStorage.getItem('count'))
              //  console.log(this.$store.getters.count,888)
           }
          this.uname=this.$store.state.uname
          this.isLogina=this.$store.getters.isLogin
        },
        
        logout(){
            this.isLogina=false
            this.$store.commit('setIslogin',false)
            this.$store.commit('setCount',null)
            this.$store.commit('setUname',null)
        },
        a_series(){
            console.log(222)
        },
        search_img(){
          console.log(11111)
          // console.log(this.search_input.trim())
          if(!this.search_input.trim()){
            alert("请输入搜索关键字")
          }else{
            // console.log(`/search/${this.search_input}`)
            this.$router.push(`/search/${this.search_input}`)
            // console.log(this.search_input)
            // this.axios.get("/api/search",{params:{"titleSearch":this.search_input}}).then(result=>{
            //   console.log(1)
            //   console.log(result.data.data)
            // })
          }
        },
    },
    mounted(){
      this.load()
    },
    computed:{
      myCount:function(){
        return this.$store.getters.count
      }
    }
 }  
 
</script>

<style scoped>
.div_head{
  width: 996px;
  height: 115px;
  margin:0 auto 10px;
  background:#fff;
  font-family: "Î¢ÈíÑÅºÚ";
}
.a_head_logo{
  float: left;
  width: 151px;
  height: 75px;
  margin-top: 33px;
}
.img_head_logo{
  float: left;
  width: 151px;height: 61px;
}
.div_head_right{
  width: 845px;height: 75px;
  margin-top:25px;
  float: right;
  color:#6bc4df;
}
.div_head_d{
  float: right;
  width: 845px;height: 25px;
  margin-top: -8px;
  margin-bottom: 8px;
  font-size: 13px;
}
.a_reg_head{
  float: right;
  color:#6bc4df;
  padding-top:8px;
}
.a_login_head{
  margin: 0 20px;
}
.div_trolley{
  height: 25px;
  float: right;
}
.a_trolley{
  float: right;
  height: 25px;
    font-size: 13px;
  color: #6bc4df;
}
.span_a_trolley{
  float: left;
  width: 20px;
  height: 25px;
  background-image: url(../assets/index/cart_icon.png);
  background-repeat: no-repeat;
  background-position: left bottom;
  background-size:20px 20px;
  padding-right: 8.2px
}
.span_trolley{
  float: right;
  padding-top: 8.2px
}
.div_address_head{
  width: auto;
  float: right;
  margin-right:20px;
}
.a_reg_head{
  width: auto;
  float: right;
}
.div_a_coord_head{
  width: 9px;height: 14px;
  padding-right:8px;
  margin-top: 10px;
}
.div_nav{
  width:664px;height: 50px;
  padding-right: 24px;
  float: left;
  text-align: center;
  font-size: 14px;
}
.ul_nav{
  width:664px;height: 50px;
  float: left;
}
.li_nav{
  float: left;
  width:164px;height: 50px;
  padding-right: 1px;
}
.li_nav_2{
  border-right: 1px solid #6bc4df;
}
a{
  color:#6bc4df;
}
.span_nav{
  display: block;
  text-align: center;
  width: 164px;height: 25px;
  line-height: 35px;
  color:#6bc4df;
}
.ul_cake{
  width:124px;height:120px;
  margin:10px 20px 0;
  background: #fff;
  z-index: 9999999;
  position: relative;
  display: none;
}
#li_cake:hover .ul_cake{
  display: block;
}
.router_cake{
    padding:9px 0px;
    font-size:13px;
}
.router_cake_first{
    padding-top:10px;
}

.div_divphone{
  width: 120px;height: 17px;
  margin:2px 32px 0 5px;
  font-size: 13px;
  float: right;
  text-align: right;
}
.img_phone{
  height:15px;
  display: inline-block;
  vertical-align: top;
}
.span_phone{
  display: inline-block;
}
.div_search{
  width:105px;
  height: 20px;
  margin: 5px 42px 0 5px;
  clear: both;
  float: right;
  position: relative;
}
.input_search{
  display: inline-block;
  color: #999;
  width: 85px;height: 17px;
  background: #fff;
  right:2px;
  top:0px;
  padding-left: 20px;
  z-index:1;
}
.img_search{
  position: absolute;
  top:1.5px;
  left: 16px;
  width: 18px;height: 16px;
  cursor: pointer;
  z-index:10;
}
.div_input_search{
  border: 1px solid #6bc4df;
  width:105px;
  height:18px;
  margin-left: 14px;
  z-index:0;
}
</style>
