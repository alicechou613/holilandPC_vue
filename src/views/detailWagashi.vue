<template>
<!-- 商品详情页 -->
    <div style="z-index:-1">
        <div class="content">
        <div class="div_top">
        <!--商品轮播图-->
        <div class="carousel">
            <div class="div_carousel">
            <!--轮播图-->
                <div class="carousel_inner">
                    <div class="div_img">
                        <!-- <img :src="elem" alt="" class="img_carousel" v-for="(elem,i) of img_lg" :key="i" /> -->
                        <!-- <img :src="img_lg[0]" alt="" class="img_carousel" /> -->
                        <img :src="img_lg[1]" alt="" class="img_carousel" />
                    </div>
                </div>
            <!--左右箭头-->
                <a href="" class="a_prev a_prev_left">
                </a>
                <a href="" class="a_prev a_prev_right">
                </a>
                <!--轮播指示器-->
                <ul class="carousel_indicatos">
                    <li class="li_active"></li>
                    <li class=""></li>
                    <li class=""></li>
                    <li class=""></li>
                </ul>
            </div>
        </div>
        <div class="div_divdetail">
            <img :src="wagashi.img_right" alt="" class="img_detail"/>
            <div class="div_title">
                <h2 class="h2_title" v-text="wagashi.title"></h2>
                <p class="delivery">&nbsp;</p>
            </div>
            <h2 class="h2_price" v-text="`￥${wagashi.price.toFixed(2)}`"></h2>
            <div class="div_btn  btn_left btn_padding">
                <span class="a_btn">规格</span>
                <select name="attr" id="attr">
                    <option value="-1">请选择</option>
                    <option :value="i" v-for="(elem,i) of pattr" :key="i">{{elem}}</option>
                </select>
            </div>
            <div class="div_btn btn_left">
                <div class="a_btn">加入购物车</div>
            </div>
            <div class="div_btn  btn_left btn_padding">
                <span class="a_btn btn_count">数量</span>
                <button>-</button>
                <span class="span_count">5</span>
                <button>+</button>
            </div>
            <div class="div_btn btn_left btn_yellow">
                <div class="a_btn a_buy">立即购买</div>
            </div>
        </div>
        </div>
        <div class="div_details">
            <img :src="elem"  class="img_details" alt="" v-for="(elem,i) of img_body" :key="i" />
            
        </div>
    </div>
    </div>
</template>
<script>
export default {
    data(){return{
        wagashi:{},
        img_lg:[],
        img_body:[],
        pattr:[]
    }},
    methods:{
        load(){
            this.axios.get("/api/wagashi",{
              params: {
                  "type": 1
              }}).then(result=>{
          this.wagashi=result.data.data[0];
          console.log(this.wagashi)
          this.img_lg=this.wagashi.img_lg.split(',')
          this.img_body=this.wagashi.img_body.split(',')
          this.pattr=this.wagashi.pattr.split(',')
          console.log(this.pattr)

      })
        }
    },
    created(){
        this.load()
    }

}
</script>
<style scoped>
.content{
    margin:0 auto;
    width:996px;
    z-index:-1;
}
.div_top{
    width:996px;height: 485px;
}
.carousel{
    float:left;
    width:485px;height:485px;
    z-index: -1;
}
.div_carousel{
    position: relative;
    height:485px;
}
.carousel_inner{
    width:100%;
    border:1px solid #ddd;
}
.div_img{width:100%}
.img_carousel{
    width:100%;
}
.div_divdetail{
    width:485px;
    height:485px;
    float:right;
    overflow: hidden;
}
.img_detail{
    display: block;
    width:485px;
    height:290px;
    margin-bottom: 10px;
}
h2{
    color:#2093cc;
    font-size: 20px;
}
.div_title{
    float: left;
    width: 300px;
    margin-top:12px;
}
.h2_title{
    height:30px;
    width: 100%;
}
.h2_price{
    float:right;
    width: 130px;
    margin-top:31.8px;
    text-align: right;
}
.delivery{
    margin-top:1px;
}
.div_btn{
    height:50px;
    width:230px;
    /*padding-left:20px;*/
    margin:12px 12px 0 0;
    background-color: #87d0e3;
    text-align: center;
    line-height: 50px;
}
.btn_left{
    float:left;
}
.btn_padding{
    text-align: left;
    box-sizing: border-box;
    padding-left:20px;
    position: relative;
}
.btn_count{
    margin-right: 27px;
}
.span_count{
    display:block;
    position: absolute;
    top:12px;
    left:123.5px;
    width:29px;
    height:28px;
    background: #fff;
    color:#4fa9d7;
    text-align: center;
    line-height: 27px;
}
.btn_padding button{
    width:29px;
    height:28px;
    vertical-align: middle;
    border:1px solid #fff;
    color:#fff;
    text-align: center;
    line-height: 25px;
    background: #87d0e3;
    margin:0 18px;
}
select{
    width:142px;
    margin-left: 15px;
    height:25px;
}
.a_btn{
    color:#fff;
}
.btn_yellow{
    background-color: #ffff00;
}
.a_buy{
    color:#626262;
}
.div_details{
    width:996px;
    clear:both;
    margin-top:18px;
    margin-bottom: 20px;
}
.img_details{
    width:996px;
    margin-top: -3px;
}
.a_prev{
    display: block;
    position: absolute;
    width: 23px;height:25px;
    background-image: url(../assets/bj_4.png);
    background-repeat: no-repeat;

}
.a_prev_left{
    background-position: 0px -201px;
    bottom:6px;
    left:15px;
}
.a_prev_right{
    background-position: 0px -165px;
    bottom:6px;
    right:15px;
}
.carousel_indicatos{

    position: absolute;
    /*left:45%;*/
    display: flex;
    justify-content:center;
    bottom:10px;
    left:45%;

}
.carousel_indicatos li{
    bottom:5px;
    display: block;
    width: 10px;height: 10px;
    border:1px solid #626262;
    border-radius:50%;
    margin: 10px 5px;
}
.li_active{
    background-color:#626262 ;
}
</style>
