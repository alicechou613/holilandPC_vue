<template>
    <div class="div_aside_help" id="help">
      <div>
        <h3>购物指南</h3>
        <ul >
          <li class="li_help">
            <router-link to="/shoppingguide" class="a_help">
              购物流程
            </router-link>
          </li>
          <li class="li_help">
            <router-link to="/cakeSize" class="a_help">
              蛋糕尺寸
            </router-link>
          </li>
        </ul>
      </div>
      <div>
          <h3>订购范围</h3>
        <ul>
          <li class="li_help">
            <span @click="map" class="a_help">
              地图查询
            </span>
          </li>
          <li class="li_help">
            <router-link to="/message" class="a_help">
              团购业务
            </router-link>
          </li>
          <li class="li_help">
            <router-link to="/storeAddress" class="a_help">
              北京门店
            </router-link>
          </li>
        </ul>
      </div>
      <div>
          <h3>公司服务</h3>
        <ul>
          <li class="li_help">
            <span @click="chu" class="a_help">
              储值卡
            </span>
          </li>
          <li class="li_help">
            <router-link to="/businesslicense" class="a_help">
              官网营业资质
            </router-link>
          </li>
        </ul>
      </div>
    <div class="">
        <h3>企业招聘</h3>
      <ul>
        <li class="li_help">
          <router-link to="/holilandrecruit" class="a_help">
            好利来招聘
          </router-link>
        </li>
        <li class="li_help">
          <router-link to="/blackswanrecruit" class="a_help">
            黑天鹅招聘
          </router-link>
        </li>
      </ul>
    </div>
    <div class="">
        <h3>售后服务</h3>
      <ul>
        <li class="li_help">
          <router-link to="/message" class="a_help">
            投诉渠道
          </router-link>
        </li>
        <li class="li_help">
          <router-link to="/service" class="a_help">
            客服中心
          </router-link>
        </li>
        <li class="li_help">
          <router-link to="/league" class="a_help">
            加盟维权
          </router-link>
        </li>
      </ul>
    </div>
    <div>
        <h3>友情链接</h3>
      <ul>
        <li class="li_help">
          <span  @click="black" class="a_help">
            黑天鹅蛋糕官网
          </span>
        </li>
        <li class="li_help">
          <span @click="luo" class="a_help">
            罗红摄影艺术馆
          </span>
        </li>
        <li class="li_help">
          <span @click="bai" class="a_help">
            百度
            </span>
          <!-- </a> -->
        </li>
      </ul>
    </div>
    </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  methods: {
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
