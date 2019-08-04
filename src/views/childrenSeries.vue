<template>
<!-- 商品列表页-儿童系列 -->
    <div class="div_list">
      <div class="div_div_list">
        <div class="div_product" v-for="(elem,i) of cakeSingle" :key="i">
          <div class="a_img_product" :style="`background-image:url(${elem.img_main})`">  
          </div>
          <div class="a_title_product">                
              <p class="p_product" v-text="elem.title"></p>
              <b class="b_price_product" v-text="`￥${elem.price.toFixed(2)}`"></b>
          </div>
        </div>
       
      </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            cakeSingle:{}
        }
    },
    methods:{
        load(){
            this.axios.get("/api/cakeSingle",{params:{type:2}}).then(result=>{
                console.log(result.data.data)
                this.cakeSingle=result.data.data;
                })
        }
    },
    created(){
        this.load();
    }
}
</script>