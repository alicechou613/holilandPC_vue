<template>
<!-- 商品列表页-零食糕点 -->
    <div class="div_list">
      <div class="div_div_list">
        <div class="div_product" v-for="(elem,i) of wagashiSingle" :key="i">
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
            wagashiSingle:{}
        }
    },
     methods:{
        load(){
            console.log(1)
            this.axios.get("/api/wagashiSingle").then(result=>{

                console.log(2)
                console.log(result.data.data)
                this.wagashiSingle=result.data.data;
                })
        }
    },
    created(){
        this.load();
    }
}
</script>


