<template>
<!-- 商品列表页-全部商品 -->
    <div class="div_list">
      <div class="div_div_list">
        <div class="div_product">
          <a href="#" class="a_img_product">  
          </a>
          <a href="#" class="a_title_product">                
              <p class="p_product">生吐司</p>
              <p class="p_summary_product">不支持七天无理由</p>
              <b class="b_price_product">&yen;25.00</b>
          </a>
        </div>
       
      </div>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    },
    methods:{
        load(){
            this.axios.get("/api/allProduct").then(result=>{
                console.log(result.data.data)
            })
        }
    },
    created(){
        this.load()
    }
}
</script>



