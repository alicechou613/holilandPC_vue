<template>
    <div>
        <div class="div_help_template">
      <div class="div_aside_help">
          <myaside></myaside>
      </div>
      <div class="div_content_help">
        <h2 class="h2_title_help">购物指南</h2>
        <div class="hr_title_help">
        </div>
        <div class="div_title_help">
          <p class="p_title_help">
            蛋糕尺寸
          </p>
        </div>
        <p class="p_text">好利来蛋糕尺寸说明：</p>
        <p class="p_text p_text_indent">由于蛋糕是舶来品，好利来圆形蛋糕标注的蛋糕尺寸一般为厘米，是指蛋糕成品的直径；</p>
        <p class="p_text p_text_indent">好利来方形蛋糕的标注尺寸是边长*边长的标注方法。</p>
        <p class="p_text p_text_indent">本站常用符号如下：</p>
        <p class="p_text p_blue">Φ 代表直径</p>
        <p class="p_text p_blue">&nbsp;h 代表高度</p>
        <p class="p_city">目前官网蛋糕支持北京、天津、沈阳、成都、石家庄、长春、西安、哈尔滨、大连、鞍山、本溪、盘锦、塘沽、牡丹江等地区网上售          卖，其他城市将陆续上线，感谢您的持续关注！</p>
        <p class="p_text p_text_indent">网上各城市价格解释权归各城市所有，特此说明！</p>
      </div>
    </div>
    </div>
</template>
<script>
import myaside from "./aside.vue"
export default {
    data(){return{}},
    components:{myaside},
}
</script>
<style scoped>
.p_text{
  font-family: 微软雅黑;
  color: rgb(98, 98, 98);
  line-height: 23.4px;
}
.p_text_indent{
  text-indent: 2em;
}
.p_text_nbsp{
  line-height: 23.4px;
}
div .p_blue{
  color:rgb(107, 196, 223);
  text-indent: 6em;
}
.p_city{
  display: block;
  font-family: 微软雅黑;
  padding: 20px 0 30px;
  text-indent: 2em;
  border-top: 1px solid #c1bfc0;
  color: rgb(98, 98, 98);
  line-height: 23.4px;
}

</style>