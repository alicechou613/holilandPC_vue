<template>

<!-- 商品列表页-查询 -->
    <div class="div_list">
      <div class="div_div_list">
        <div class="div_product" v-for="(elem,i) of search" :key="i">
          <div class="a_img_product" :style="`background-image:url(${elem.img_main})`">  
          </div>
          <div class="a_title_product">                
              <p class="p_product" v-text="elem.title"></p>
              <b class="b_price_product" v-text="`￥${elem.price.toFixed(2)}`"></b>
          </div>
        </div>
        <div v-show="search_null">
            <h2>未查到相关内容</h2>
        </div>
      </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      search_input: "",
      search: {},
      search_null: false
    };
  },
  methods: {
    load() {
      this.search_input = this.$route.params.search_input;
      this.axios
        .get("/api/search", { params: { titleSearch: this.search_input } })
        .then(result => {
          console.log(result.data.data);
          this.search = result.data.data;
          if (this.search.length == 0) {
            this.search_null = true;
            setTimeout(()=>{
              this.search_null = false;
              this.$router.push("/allproducts");
            }, 3000);
            
          }
        });
    }
  },
  created() {
    this.load();
  }
};
</script>
<style scoped>
h2{
    text-align: center;
}
</style>

