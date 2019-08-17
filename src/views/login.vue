<template>
    <div>
        <div class="">
    <!-- 用户登录+线 -->
    <div class="" id="head">
      <span class="head_line"></span>
      <span class="title">用户登录</span>
      <span class="head_line head_line_right"></span>
    </div>
    <div class="login">
      <div>
        <table class="table">
          <tr>
            <td class="promptcenter"></td>
            <td class="td_title">用户名</td>
            <td class="td_input">
              <input type="text" autofocus id="uname" placeholder="手机|邮箱"  v-on:focus="phonefocus(1)" @blur="phonefocus(0)" v-model.trim="phone" />
            </td>
            <td class="prompt">
              <span v-show="phonemsg.length>=1" v-text="phonemsg"></span>
            </td>
          </tr>
          <tr>
            <td class="promptcenter"></td>
            <td class="td_title">密&nbsp;码</td>
            <td class="td_input_upwd">
              <input type="password" placeholder="请输入6-20位字符" v-on:focus="pwdfocus(1)" @blur="pwdfocus(0)" v-model.trim="pwd" />
              <router-link to="">忘记密码？</router-link>
            </td>
            <td class="prompt">
              <span  v-show="pwdmsg.length>=1"  v-text="pwdmsg"></span>
            </td>
          </tr>
          <tr>
            <td class="promptcenter"></td>
            <td colspan="2" class="submit" >
              <div>

              <slidingVerification @sliding="verification"></slidingVerification>   
              </div>
            </td>
            <td class="prompt">
              <p></p>
            </td>
          </tr>
          <tr>
            <td class="promptcenter"></td>
            <td colspan="2" class="submit">
              
                  <input type="checkbox" id="upwd" v-model="remember" style="width:20px;vertical-align:middle;margin-right:10px;">
                  <label for="upwd">记住密码</label>
              
            </td>
            <td class="prompt">
              <p></p>
            </td>
          </tr>
          <tr>
            <td class="promptcenter"></td>
            <td colspan="2" class="submit">
              <span @click="submit">
                登&nbsp;录
              </span>
              <router-link to="/reg">
                免费注册
              </router-link>
            </td>
            <td class="prompt">
              <p></p>
            </td>
          </tr>
        </table>
      </div>
      </div>
    </div>
    </div>
</template>
<script>
import slidingVerification from '../components/slidingVerification.vue';
export default {
    data(){return{
        phone:'',
        phonemsg:'',
        pwd:'',
        pwdmsg:'',
        loginStatus:'',
        verificationcode:'false',
        remember:''
    }},
    components:{
        slidingVerification
    },
    methods:{
        verification(n){
            this.verificationcode=n;
        },
        submit(){
            if(!this.phone||!this.pwd){
                alert('请输入用户名和密码')
                return
            }
            if(this.verificationcode=='false'){
                alert('请拖动滑动条完成验证')
                return
            }
            // api/login  phone   upwd
            var data=this.qs.stringify({phone:this.phone,upwd:this.pwd})
            // var data={phone:this.phone,upwd:this.pwd}
            this.axios.post("/api/login",data).then(res=>{
                this.loginStatus=res.data.message
                var token=res.data.data.token
                //vuex存用户名
                var uname=res.data.data.name
                this.$store.commit('setUname',uname)
                console.log(uname)
                //vuex设置登录状态
                this.$store.commit('setIslogin','true')
                console.log(this.$store.getters.isLogin,333)
                if(this.loginStatus=='登录成功'){
                    if(this.remember=='true'){
                        localStorage.setItem('token',token)
                    }else{
                        sessionStorage.setItem('token',token)
                    }
                this.axios.post('/api/getCarts','',
                  {headers: {'access_user_token':sessionStorage.getItem("token")||localStorage.getItem("token")}
                  }).then(res=>{
                      var list=res.data.data
                      var mycount=0
                      for(var item of list){
                        mycount+=item.count
                      }
                      this.$store.commit('setCount',mycount)
                        this.$router.go(-1)
                      })
                  .catch(err=>{console.log(err)})
                //如果登录失败
                }else{
                    alert('您还未注册，请先注册')
                }
            }).catch(err=>{console.log(err)})
        },
        phonefocus(n){
            if(n==1){
                this.phonemsg="请您确认填写您的邮箱或手机号"
            }else{
                this.phonemsg=""
            }
        },
        pwdfocus(n){
            if(n==1){
                this.pwdmsg='密码必须输入6-20位字符'
            }else{
                this.pwdmsg=''
            }
        },
    }
}
</script>
<style scoped>
#hr1,#hr2{width:45%;border-top:1px dashed #d5d5d5}
#phone,#code,#note_code,#upwd,#reupwd{width:208px;height:38px;padding:0px 0px 0px 10px;border-width:1px}
a{
    color:#989898;
    margin:0 auto;
}
a:hover{color:dodgerblue;text-decoration:underline;}

.login>div{
    width:996px;
    margin:0 auto 20px;
    padding:45px 0 55px;
}
.table{
    background-color:#ededed ;
    color:#626262;
    font-size:14px;
    margin:0 auto;
    border:none;
    border-spacing:0px;
}
.table>tr{
    height:40px;
    width:310px;
    line-height: 40px;
    margin-bottom:10px;
}
td{
    border-top: 5px solid #fff;
}
.td_title{
    border-right: 5px solid #fff;
    height:40px;
    width:51px;
    padding:0 8px 0 8px;
    text-align: center;
}
.td_input{
    width:208px;
    padding-left: 10px;
}
input{
    background-color:#ededed ;
    width:224px;
    height:38px;
    font-size: 13px;
    color:#626262;
}
.submit{
    background-color: #fff;
    text-align: center;
}
.submit>span:first-child{
    display: inline-block;
    height:40px;
    width: 190px;
    line-height: 40px;
    background-color:#87D0E3;
    font-size:16px;
    font-weight: bold;
    color:#fff;
    text-decoration:none;
    cursor:pointer;
}
.submit>a:last-child{
    display: inline-block;
    height:40px;
    line-height: 40px;
    width: 100px;
    margin-left: 10px;
    background-color:#ededed;
    color: rgb(98,98,98);
    font-size:13px;
}
.submit>a:last-child:hover{
    color:#87D0E3;
    text-decoration:none;
}
.prompt{
    background-color: #ffffff;
    font-size:13px;
    width:242px;
    /*display: none;*/
}
.prompt>span{
    padding: 6px 20px 10px 40px;
    background-image: url(../assets/bj_3.png);
    background-repeat: no-repeat;
    color:red;
}
.promptcenter{
    background-color: #ffffff;
    width:242px;
}
.td_input_upwd>input{
    float: left;
    width: 128px;
    padding-left: 10px;
    line-height: 39px;
    font-size: 14px;
    color:#626262;
}
.td_input_upwd>a{
    display: block;
    float: right;
    height:39px;
    line-height: 39px;
    color:rgb(98,98,98);
    padding-right: 10px;
    font-size: 13px;
}
.td_input_upwd>a:hover{
    color:#87D0E3;
}
</style>
