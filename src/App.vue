<template>
  <div id="app">
    <myheader></myheader>
    <!-- <div id="nav"> -->
      <!-- <router-link to="/">Home</router-link> | -->
      <!-- <router-link to="/about">About</router-link> -->
    <!-- </div> -->
    <router-view/>
    <myfooter></myfooter>
  </div>
</template>
<script>
import myheader from "./views/header.vue"
import myfooter from "./views/footer.vue"
export default {
  data(){return{}},
  components:{
    myheader,
    myfooter
  }
}
</script>

<style>
#app {
  width:996px;
  margin:0 auto;
  font-size:13px;
  color:rgb(98,98,98);
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
blockquote,body,button,dd,dl,dt,fieldset,form,h1,h2,h3,h4,h5,h6,hr,input,legend,li,ol,p,pre,td,textarea,th,ul{margin:0;padding:0;}
ol,ul{list-style:none;}
a{text-decoration:none;}

input{
  outline:none;
  border:none;
}
html,body{
  font-size: 13px;
  color:rgb(98, 98, 98);
}
/*页面头部两条线+标题的样式*/
#head{
  width:996px;height:30px;
  margin-bottom:10px;
  margin:0 auto;
  text-align:center;
  background:#fff;
  line-height:30px;
  font-size:13px;
}
.head_line{
  width:40%;
  float:left;
  border-top:1px dashed #d5d5d5;
  margin-top:14px;
}
.head_line_right{
  float:right;
}
.title{
  width:15%;
  display:inline-block;
  color:#909090;
  font-weight:bold;
  font-size:16px;
}
/*帮助中心模板*/
.div_help_template{
  width: 996px;
  margin: 0 auto;
}
.div_aside_help{
  width: 210px;
  padding-bottom: 20px;
  float: left;
}
.div_content_help{
  float: left;
  width: 786px;
}
.h2_title_help{
  display: block;
  font-size: 16px;
  color: #626262;
  padding: 10px 0 2px;
}
.hr_title_help{
  width: 98%;
  border-bottom: 1px dashed #cececb;
  padding: 0 1% 18px;
  margin:0 auto;
  text-align: center;
}
.div_title_help{
  width: 786px;
  padding: 20px 0;
}
.p_title_help{
  font-size: 24px;
  height: 85.818px;
  color: #00ccff;
  text-align: center;
  font-weight: bold;
  text-decoration: underline;
  font-family: 黑体;
  line-height: 1.8;
}
/* 商品列表样式 */
.div_list{
  width: 996px;
  margin:0 auto;
}
.div_div_list{
  width: 996px;
  margin: 0 auto 10px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.div_product{
  width: 325px;height: 325px;
  position: relative;
  margin-top: 10.5px;
  overflow: hidden;
}
.a_img_product{
  width: 325px;height: 270px;
  position: absolute;
  background-image: url(./assets/ceshi/953_G_1548877338289.jpg);
  background-position:top left;
  border-right:1px solid #fff;
}
.a_img_product:hover{
  transform: scale(1.05);
  transition: 2s;
}
.a_title_product{
  display: block;
  position: absolute;
  width: 325px;height: 55px;
  background: #87d0e3;
  bottom: 0;left: 0px;
  color: #fff;
}
.p_product{
  display: block;
  height: 28px;
  padding-left: 15px;
  line-height: 35px;
}
.p_summary_product{
  display: block;
  width: 205px;height: 15px;
  padding:3px 0 0 15px;
  font-size: 12px;
  float: left;

}
.b_price_product{
  display: block;
  width: 80px;height: 20px;
  padding-right: 20px;
  float: right;
  text-align: right;
}
</style>
