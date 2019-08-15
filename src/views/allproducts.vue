<template>
<!-- 商品列表页-全部商品 -->
    <div class="div_list">
      <div class="div_div_list">
        <div class="div_product" v-for="(elem,i) of products" :key="i">
            <router-link :to="'/'+elem.url+'/'+elem.pid">
                <div class="a_img_product" :style='`backgroundImage:url("${elem.img_main}")`'>  
                </div>
                <div class="a_title_product">                
                    <p class="p_product">{{elem.title}}</p>
                    <b class="b_price_product" v-text="`¥${elem.price.toFixed(2)}`"></b>
                </div>
            </router-link>
        </div>
       
      </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            products:[]
            }
    },
    methods:{
        load(){
            this.axios.get("/api/allProduct").then(result=>{
                
                this.products=result.data.data
                this.products=this.products.reverse()
                console.log(this.products,'111')
            })
        }
    },
    created(){
        this.load()
    }
}
</script>



