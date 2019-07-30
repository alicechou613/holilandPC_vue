<template>
    <!-- 注册页 -->
    <div>
        <div class="">
      <!-- 用户注册+线 -->
		<div class="" id="head">
			<span class="head_line"></span>
			<span class="title">用户注册</span>
			<span class="head_line head_line_right"></span>
		</div>
      <div class="integral">
        <span id="heart"></span>
        <span>注册赠送积分：100</span>
      </div>
      <div class="reg">
		<div>
			<table class="table">
				<tr>
					<td class="promptcenter"></td>
					<td class="td_title">手机号</td>
					<td class="td_input">
						<input type="text" autofocus spellcheck ="false" id="uname"  v-on:focus="phonefocus(1)" @blur="phonefocus(0)" v-model.trim="phone"/>
					</td>
					<td class="prompt">
						<span v-show="phonemsg.length>=1">{{phonemsg}}</span>
					</td>
				</tr>
				<tr>
					<td class="promptcenter"></td>
					<td class="td_title">验证码</td>
					<td class="td_input">
						<input type="text" v-on:focus="code1focus(1)" @blur="code1focus(0)" v-model.trim="code1" />
					</td>
					<td class="prompt">
						<span v-show="code1msg.length>=1">{{code1msg}}</span>
					</td>
				</tr>
				<tr>
					<td class="promptcenter"></td>
					<td class="td_title">短信验证码</td>
					<td class="td_input">
						<input type="text" class="input_code" v-on:focus="code2focus(1)" @blur="code2focus(0)" v-model.trim="code2" />
						<a href="#" class="code">获取短信验证码</a>
					</td>
					<td class="prompt">
						<span  v-show="code2msg.length>=1">{{code2msg}}</span>
					</td>
				</tr>
				<tr>
					<td class="promptcenter"></td>
					<td class="td_title">密码</td>
					<td class="td_input">
						<input type="password" v-on:focus="pwdfocus(1)" @blur="pwdfocus(0)" v-model.trim="pwd"/>
					</td>
					<td class="prompt">
						<span  v-show="pwdmsg.length>=1">{{pwdmsg}}</span>
					</td>
				</tr>
                <tr>
                    <td class="promptcenter"></td>
					<td style="background:#fff"></td>
                    <td style="background:#fff;font-size:12px;">
                        密码强度：弱
                        <p style="display:inline-block;position:relative;">
                            <span class="pwd_span">
                                <span class="pwdd" style="left:0px;"></span>
                                <span class="pwdd" style="left:30px;"></span>
                                <span class="pwdd" style="left:60px;"></span> 
                            </span>
                            <span style="position:absolute;left:98px;bottom:-16px;">强</span>
                        </p>
                    </td>
                    <td class="prompt"></td>
                </tr>
				<tr>
					<td class="promptcenter"></td>
					<td class="td_title">确认密码</td>
					<td class="td_input">
                        <input type="password" v-on:focus="repwdfocus(1)" @blur="repwdfocus(0)" v-model.trim="repwd"/>
                    </td>
					<td class="prompt">
						<span v-show="repwdmsg.length>=1">{{repwdmsg}}</span>
					</td>
				</tr>
				<tr>
					<td class="promptcenter"></td>
					<td colspan="2" class="checkbox">
						<input type="checkbox"/>
						<a href="#">我已阅读并接受“服务条款”</a>
					</td>
					<td class="prompt">
					</td>
				</tr>
				<tr>
					<td class="promptcenter"></td>
					<td colspan="2" class="submit">
						<div @click="submit">
							注册
						</div>
					</td>
					<td class="prompt">
					</td>
				</tr>
			</table>
		</div>
	  </div>
      </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            phone:'',
            phonemsg:'',
            code1:'',
            code1msg:'',
            code2:'',
            code2msg:'',
            pwd:'',
            pwdmsg:'',
            repwd:'',
            repwdmsg:'',
        }
    },
    methods:{
        // submit(){
        //     console.log(this.uname,this.upwd,this.reupwd)
        //     let data = {"phone":"1234","upwd":"yyyy"};
        //     this.axios.post("http://192.168.3.39:80/api/register",data).then(result=>{
        //         console.log(result)
        //     })
        // },
        phonefocus(n){
            if(n==1){
                this.phonemsg='请输入您的手机号'
            }else{
                this.phonemsg=''
            }
        },
        code1focus(n){
            if(n==1){
                this.code1msg='请输入验证码'
            }else{
                this.code1msg=''
            }
        },
        code2focus(n){
            if(n==1){
                this.code2msg='请输入短信验证码'
            }else{
                this.code2msg=''
            }
        },
        pwdfocus(n){
            if(n==1){
                this.pwdmsg='密码必须输入6-20位字符'
            }else{
                this.pwdmsg=''
            }
        },
        repwdfocus(n){
            if(n==1){
                this.repwdmsg='请再次输入密码'
            }else{
                this.repwdmsg=''
            }
        },
        submit(){
            console.log(1)
            if(!/^[1]([3-9])[0-9]{9}$/.test(this.phone)){
                this.phonemsg='手机格式错误'
            }
            console.log(2)
            //手机已注册
            // this.axios.get()
             this.axios.post("/api/checkLogin",{
                     data: {
                         "phone": this.phone
                    }}).then(result=>{
                console.log(result)
            })
            console.log(3)
            // if(this.qwd.length<6||this.qwd.length>20){
            //     this.qwd='密码必须输入6-20位字符'
            // }
            console.log(4)
            // if(this.qwd!==this.reqwd){
            //     this.reqwdmsg='两次密码不一致'
            // }
            // return
        }
    }
}
</script>
<style scoped>
html,body{font-size:13px; }
  #hr1,#hr2{width:45%;border-top:1px dashed #d5d5d5}
  #phone,#code,#note_code,#upwd,#reupwd{width:208px;height:38px;padding:0px 0px 0px 10px;border-width:1px}
a{
  color:#989898;
  margin:0 auto;
}
a:hover{color:dodgerblue;text-decoration:underline;}

.integral{
  color:#87D0E3;
  width:906px;
  margin:0 auto;
  text-align:right;
  font-size:14px;
  display:block;
}
#heart{
  background-image: url(../assets/heart.jpg);
  width:23px;height:26px;
  display:inline-block;
  background-repeat: no-repeat;
  background-position: center;
  vertical-align: middle;
}
.reg>div{
  width:996px;
  margin:0 auto 20px;
  padding:45px 0 55px;
}
.table{
  /*width:310px;*/
  
  background-color:#ededed ;
  color:#626262;
  font-size:14px;
  margin:0 auto;
  border:none;
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
  width:70px;
  padding:0 3px 0 10px;
  text-align: center;
}
.td_input{
  width:208px;
  padding-left: 10px;
}
table{
  border-spacing:0px;
}
input{
  background-color:#ededed ;
  width:208px;
  height:38px;
}
input:focus{
    text-decoration:none;
}
.checkbox{
  background-color: #fff;
  text-align: center;
  padding-top:5px;
  padding-bottom: 5px;
}
.checkbox>input{
  height:13px;
  width:13px;
}
.checkbox>a:hover{
  color:#87D0E3;
}
.submit{
  background-color: #fff;
  text-align: center;
}
.submit>div{
  display: block;
  height:40px;
  line-height: 40px;
  background-color:#87D0E3;
  font-size:16px;
  font-weight: bold;
  color:#fff;
  text-decoration:none;
  cursor: pointer;
}
.input_code{
  height:38px;
  line-height: 38px;
  width:98px;
}
.code{
  display:inline-block;
  background-color: #87D0E3;
  padding:0 6px;
  height: 30px;
  line-height: 30px;
  margin-top: 5px;
  color:#626262;
  font-size: 13px;
}
.code:hover{
  color:#626262;
  text-decoration:none;
}
/*鎻愮ず璇?*/
.prompt{
  background-color: #ffffff;
  font-size:13px;
  width:203px;
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
  width:203px;
}
/* 密码强度条 */
.pwd_span{
    display:inline-block;
    width:90px;
    height:8px;
    position:absolute;
    border:1px solid #87d0e3;
}
.pwdd{
    display: block;
    position: absolute;
    /* background:#87d0e3; */
    bottom:-3px;
    width:30px;
    /* border-top:1px solid #87d0e3;  */
    height:11px;
}
.pwdd:first-child{
    border-left:1px solid #87d0e3; 
}
.pwdd:last-child{
    border-right:1px solid #87d0e3; 
}
.pwdb{
    background:#87d0e3;    
}
</style>
