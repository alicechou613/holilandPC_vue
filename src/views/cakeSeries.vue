<template>
    <div>
        <div class="body_cakeseries">
            <div class="div_series">
                <router-link to="/classicSeries" class="a_series">
                </router-link>
            </div>
            <div class="div_series">
                <router-link to="/childrenSeries" class="a_series" id="a_series2">
                </router-link>
            </div>
            <div class="div_series">
                <router-link to="/starProducts" class="a_series" id="a_series3">
                </router-link>
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
.div_series{
  width: 996px;height: 341px;
  margin: 0 auto 10px;
}
.a_series{
  display: block;
  background-image: url(../assets/ceshi/1556066281201055112.jpg);
  background-repeat: no-repeat;
  height: 341px;
}
#a_series2{
  background-image: url(../assets/ceshi/1556068738109862476.jpg);
}
#a_series3{
  background-image: url(../assets/ceshi/1457033830198279930.jpg);
}
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
