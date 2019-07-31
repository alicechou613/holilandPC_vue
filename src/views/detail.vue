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
                        <img src="../assets/ceshi/953_P_1548877338484.jpg" alt="" class="img_carousel"/>
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
            <img src="../assets/ceshi/1548877338311837328.jpg" alt="" class="img_detail"/>
            <div class="div_title">
                <h2 class="h2_title">生吐司</h2>
                <p class="delivery">不支持7天无理由</p>
            </div>
            <h2 class="h2_price">￥25.00</h2>
            <div class="div_btn btn_left">
                <a href="" class="a_btn">加入购物车</a>
            </div>
            <div class="div_btn  btn_right">
                <a href="" class="a_btn">数量</a>
            </div>
            <div class="div_btn btn_left btn_yellow">
                <a href="" class="a_btn a_buy">立即购买</a>
            </div>
        </div>
        </div>
        <div class="div_details">
            <img src="../assets/ceshi/1548905843270365.jpg"  class="img_details" alt="" />
            <img src="../assets/ceshi/1548905848545800.jpg"  class="img_details" alt="" />
            <img src="../assets/ceshi/1548905852218083.jpg"  class="img_details" alt="" />
            <img src="../assets/ceshi/1548905856985087.jpg"  class="img_details" alt="" />
            <img src="../assets/ceshi/1548905865876152.jpg"  class="img_details" alt="" />
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
    margin-top:33.4px;
    text-align: right;
}
.delivery{
    margin-top:1px;
}
.div_btn{
    height:50px;
    width:235px;
    /*padding-left:20px;*/
    margin:12px 12px 0 0;
    background-color: #87d0e3;
    text-align: center;
    line-height: 50px;
}
.btn_left{
    float:left;
}
.btn_right{
    float:right;
    margin-right:0px;
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
