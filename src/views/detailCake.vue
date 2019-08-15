<template>
<!-- 商品详情页 -->
    <div style="z-index:-1">
        <div class="content">
        <div class="div_top">
        <!--商品轮播图-->
        <div class="carousel">
            <div class="div_carousel">
            <!--轮播图-->
                <div class="carousel_inner" :style="styles">
                    <div class="div_img" v-for="(elem,i) of img_lg" :key="i" >
                        <img :src="elem" alt="" class="img_carousel"/>
                    </div>
                </div>
            <!--左右箭头-->
                <span class="a_prev a_prev_left" @click="move(-1)">
                </span>
                <span class="a_prev a_prev_right" @click="move(1)">
                </span>
                <!--轮播指示器-->
                <ul class="carousel_indicatos">
                    <li :class="i==lg?'li_active':''" v-for="(elem,i) of img_lg" :key="i" @click="moveTo(i)"></li>
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
    data(){return{
        id:'',
        cake:{price:0},
        img_lg:[],
        img_body:[],
        pattr:[],
        attr:0,//选择了哪一种口味
        count:1,//商品数量
        lg:0,//左边图显示的第几张
        styles:{
            width:'',
            marginLeft:''
            // marginLeft:-this.lg*485+'px'
        }
    }},
    methods:{
        add(){
            // console.log(this.cake.pid)
            // console.log(this.pattr[this.attr])
            // console.log(this.attr)
            
            // console.log(this.count)
            // console.log(this.cake.pid)
            // type:cake
        if(this.attr==0){this.attr="-1"}
            var data=this.qs.stringify({type:'2',pid:this.cake.pid,pattr:this.attr,count:this.count})
            console.log(data)
            // this.axios.post('/api/addCart','type=2&pid=1&pattr='+encodeURI('7味全家福系列')+'&count=5',
            this.axios.post('/api/addCart',data,
            {headers: {'access_user_token':sessionStorage.getItem("token")||localStorage.getItem("token")}
                // headers:{"access_user_token":sessionStorage.getItem("token")||localStorage.getItem("token")}
                }).then(res=>{console.log(res.data)})
                .catch(err=>{console.log(err)})
        },
        move(n){
            // if(n==-1&&this.lg>=1){
            //     this.lg+=n
            // }else if(n==1&&this.lg<=this.img_lg.length-1){
            //     this.lg+=n
            // }
            if(n==-1){
                if(this.lg==0){
                    return
                }else{
                    this.lg+=n
                this.styles.marginLeft=-this.lg*485+'px'
                }
            }else if(n==1){
                if(this.count==(this.lg+1)){
                    return
                }else{
                    this.lg+=n
                    this.styles.marginLeft=-this.lg*485+'px'
                }
            }
        },
        moveTo(i){
            this.lg=i;
            this.styles.marginLeft=-this.lg*485+'px'
        },
        btncount(n){
            if(n==-1&&this.count==1){
                return
            }else{
                this.count+=n
            }
            
        },
        load(){
            // console.log(this.$route.params.id)
            this.id=this.$route.params.id
            this.axios.get("/api/cake",{
                params: {
                    "type": this.id
              }}).then(result=>{
                  this.cake=result.data.data[0];
          console.log(this.cake)
          this.img_lg=this.cake.img_lg.split(',')
          this.count=this.img_lg.length
            var width=485*this.img_lg.length+"px"
           this.styles.width=width;
        //   console.log(this.count)
          this.img_body=this.cake.img_body.split(',')
          this.pattr=this.cake.pattr.split(',')
          console.log(this.pattr)
            this.count=1;
      })
        }
    },
    created(){
        this.load()
    },
    computed:{
        marginLeft(){
            var marginLeft=-this.lg*485+'px';
            this.styles.marginLeft=marginLeft
            // console.log(this.styles.marginLeft)
            return(this.styles.marginLeft)
        },
    },
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
