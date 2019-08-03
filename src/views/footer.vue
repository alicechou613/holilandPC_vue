<template>
    <div>
            <!-- 帮助中心鼠标点击出现内容，并且箭头方向改变的效果没出来 -->
        <div class="div_help" id="footer" @click="open_footer">
        <div class="div_div_help openimg" id="divhelp">
            <p class="p_help">帮助中心</p>
            <i class="i_help" :class="p_footer"></i>
        </div>
        <div class="div_detail" v-show="div_footer==true">

        <!-- 购物指南 -->
            <div class="div_title">
                <!-- <img src="./images/index/bj3.png" class="img_help"> -->
                <i class="i_help_title"></i>
                <span class="span_title_help">购物指南</span>
                <router-link to="/shoppingguide" class="a_help">购物流程</router-link>
                <router-link to="/cakeSize" class="a_help">蛋糕尺寸</router-link>
            </div>
        <!-- 订购范围 -->
            <div class="div_title">
            <i class="i_help_title"></i>
            <span class="span_title_help">订购范围</span>
            <span @click="map" class="a_help">地图查询</span>
            <router-link to="/message" class="a_help">团购业务</router-link>
             <router-link to="/storeAddress" class="a_help">北京门店</router-link>
            </div>
        <!-- 公司服务 -->
            <div class="div_title">
            <i class="i_help_title"></i>
            <span class="span_title_help">公司服务</span>
            <span @click="chu" class="a_help">储值卡</span>
            <router-link to="/businesslicense" class="a_help">官网营业资质</router-link>
            </div>
        <!-- 企业招聘 -->
            <div class="div_title">
            <i class="i_help_title"></i>
            <span class="span_title_help">企业招聘</span>
            <router-link to="/holilandrecruit" class="a_help">好利来招聘</router-link>
            <router-link to="/blackswanrecruit" class="a_help">黑天鹅招聘</router-link>
            </div>
        <!-- 售后服务 -->
            <div class="div_title">
            <i class="i_help_title"></i>
            <span class="span_title_help">售后服务</span>
            <router-link to="/message" class="a_help">投诉渠道</router-link>
            <router-link to="/service" class="a_help">客服中心</router-link>
            <router-link to="/league" class="a_help">加盟维权</router-link>
            </div>
        <!-- 友情链接 -->
            <div class="div_title">
            <i class="i_help_title"></i>
            <span class="span_title_help">友情链接</span>
            <span  @click="black" class="a_help">黑天鹅蛋糕官网</span>
            <span @click="luo" class="a_help">罗红摄影艺术馆</span>
            <span @click="bai" class="a_help">百度</span>
            </div>
        </div>
        </div>
        <div class="div_summary">
        <!-- 版权 -->
        <div class="div_copyright">
            <div class="div_followus">
            <h4 class="h4_followus">FOLLOW US</h4>
            <p href="#" class="a_followus"></p>
            <!--微信-->
            <div>
                <p>在微信上关注我们</p>
                <img src="http://sinacloud.net/holiland/index/weixin.jpg?KID=sina,2f2aez4Edrw2kGVHCHF9&Expires=1564807684&ssig=ZM9B%2B2UuAD" alt="微信">
            </div>
            </div>
            <p>Copyright2010 &copy;北京市好利来食品有限公司 版权所有</p>
            <p>京icp备15012142号</p>
            <p>好利来官方邮箱：info@holiland.com</p>
        </div>
        <div class="div_phone">
            <p>客服电话：400-700-5999</p>
        </div>
        <div class="div_address">
            <p>注册地址：北京市朝阳区观音堂文化大道甲6号北201室</p>
            <p>食品流通许可证号：</p>
            <p>统一社会信用代码：91110105721420005Y</p>
        </div>
        <!-- 客服电话 -->
        <!-- 地址 -->
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      p_footer: { openimg: false },
      div_footer: false
    };
  },
  methods: {
    open_footer() {
      if (this.div_footer == false) {
        this.div_footer = true;
        this.p_footer.openimg = true;
      } else {
        this.div_footer = false;
        this.p_footer.openimg = false;
      }
    },
    chu() {
      window.open(
        "http://c.jdpay.com/login?ReturnUrl=http%3A%2F%2Fc.jdpay.com%2FcardDetail"
      );
    },
    bai() {
      window.open("https://www.baidu.com/");
    },
    black() {
      window.open("http://www.blackswancake.com/city");
    },
    luo() {
      window.open("http://www.luohongartmuseum.com/");
    },
    map() {
      window.open("https://map.baidu.com/");
    }
  }
};
</script>
<style>
.div_help {
  width: 996px;
  margin: 0 auto;
  clear: both;
  font-size: 13px;
}
.div_div_help {
  width: 976px;
  height: 25px;
  padding-left: 20px;
  background-color: #ededed;
  line-height: 25px;
  float: left;
}
.p_help {
  float: left;
}
.i_help {
  width: 22px;
  height: 14px;
  margin: 6px 6px;
  float: left;
  background-image: url(../assets/bj_4.png);
  background-position: 96px -83px;
}
#divhelp:focus {
  background-position: 121px -83px;
}
.div_detail {
  width: 996px;
  height: 97.44px;
  margin: 0 auto;
  clear: both;
  padding: 15px 0px;
  color: #626262;
  background-color: #ededed;
}
.open {
  display: block;
}
.div_title {
  float: left;
  width: 155px;
  padding-left: 11px;
}
.i_help_title {
  float: left;
  background-image: url(../assets/bj3.png);
  background-repeat: no-repeat;
  background-position: 2px 1px;
  width: 23px;
  height: 23px;
  padding-right: 5px;
  vertical-align: middle;
  font-style: italic;
}
.span_title_help {
  display: block;
  font-size: 20px;
  margin-bottom: 8px;
}
.a_help {
  display: block;
  width: 100px;
  height: 20px;
  padding-left: 35px;
  text-align: left;
  color: #626262;
}
.a_help:hover {
  text-decoration: underline;
}
.div_summary {
  width: 996px;
  height: 178.88px;
  margin: 10px auto;
  color: #898989;
  font-size: 12px;
  line-height: 20px;
  border-top: 1px solid #d5d5d5;
}
.div_copyright {
  width: 996px;
  height: 59.52px;
  margin: 10px 0;
}
.div_phone {
  width: 996px;
  height: 19.84px;
  margin: 10px 0;
}
.div_address {
  width: 996px;
  height: 59.52px;
  margin: 10px 0;
}
.div_followus {
  float: right;
  width: 90px;
  position: relative;
  font-size: 13px;
}
.h4_followus {
  text-align: right;
  font-weight: normal;
}
.a_followus {
  float: right;
  position: absolute;
  width: 31px;
  height: 35px;
  background-image: url(../assets/bj_2.png);
  background-repeat: no-repeat;
  background-position: -1px -58px;
  margin: 5px 0 0 13px;
  right: 33px;
}
.div_followus > div {
  border-radius: 5px;
  position: absolute;
  left: -100px;
  top: -200px;
  border: 1px solid #ccc;
  background-color: #fff;
  display: none;
  z-index: 1000;
}
.div_followus > div > p {
  display: block;
  border-bottom: 1px solid #ccc;
  height: 25px;
  padding-left: 15px;
  margin: 10px 0;
  color: #898989;
}
.div_followus > div > img {
  width: 150px;
  height: 150px;
  margin: 5px 15px;
}
.div_followus:hover.div_followus > div {
  display: block;
}
.openimg {
  background-position: 123px -83px;
}
</style>
