<template>
    <div>
        <div class="div_more">
      <h4 class="h4_more">更多精彩</h4>
      <div class="div_div_more">
        <div class="div_div_1">
          <a href="#" class="a_img_more"></a>
          <a href="#" class="a_more">
            <p class="p_title">玫瑰之爱</p>
            <p class="p_summary">沈阳需提前3小时以上预定</p>
            <b class="b_price">&yen;0.00</b>
          </a>
        </div>
        <div class="div_div_1">
          <a href="#" class="a_img_more"></a>
          <a href="#" class="a_more">
            <p class="p_title">玫瑰花园</p>
            <p class="p_summary"></p>
            <b class="b_price">&yen;0.00</b>
          </a>
        </div>
        <div class="div_div_1">
          <a href="#" class="a_img_more"></a>
          <a href="#" class="a_more">
            <p class="p_title">玫瑰物语</p>
            <p class="p_summary">STORY OF ROSES</p>
            <b class="b_price">&yen;0.00</b>
          </a>
        </div>
      </div>
    </div>
    </div>
</template>
<script>
export default {
    data(){return{}}
}
</script>
<style scoped>
.h4_more{
  display: block;
  width: 996px;
  margin: 0 auto;
  color: #6bc4df;
}
.div_more{
  width: 996px;
  margin: 0 auto 10px;
}
.div_div_more{
  width: 996px;height: 332px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.div_div_1{
  width: 325px;height: 325px;
  position: relative;
  margin-top: 10px;
}
.a_img_more{
  width: 325px;height: 270px;
  background-image: url(../assets/ceshi/78_G_1457044972677.jpg);
  background-position:left top;
  background-repeat: no-repeat;
  position: absolute;
  bottom: 55px;
  left: 0px;
}
.a_more{
  width: 325px;height: 55px;
  position: absolute;
  background: #87d0e3;
  bottom: 0px;
  left: 0px;
  color:#fff;
}
.p_title{
  display: block;
  width: 325px;height: 28px;
  padding-left: 15px;
  line-height: 35px;
}
.p_summary{
  display: block;
  width: 205px;height: 20px;
  padding:1px 0 0 15px;
  font-size: 12px;
  line-height: 22px;
}
.b_price{
  display: block;
  position: absolute;
  right: 0px;
  bottom: 7px;
  padding-right: 20px;
}

</style>

