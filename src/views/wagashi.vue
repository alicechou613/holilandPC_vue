<template>
<!-- 商品列表页-零食糕点 -->
    <div class="div_list">
      <div class="div_div_list">
        <div class="div_product">
          <a href="#" class="a_img_product">  
          </a>
          <a href="#" class="a_title_product">                
              <p class="p_product">生吐司</p>
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
            console.log(1)
            this.axios.get("/api/wagashiSingle").then(result=>{

                console.log(2)
                console.log(result.data.data)
                // this.cakeSingle=result.data.data;
                })
        }
    },
    created(){
        this.load();
    }
}
</script>


