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
                        <!-- <img :src="img_lg[0]" alt="" class="img_carousel" /> -->
                        <!-- <img :src="img_lg[1]" alt="" class="img_carousel" /> -->
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
            <img :src="wagashi.img_right" alt="" class="img_detail"/>
            <div class="div_title">
                <h2 class="h2_title" v-text="wagashi.title"></h2>
                <p class="delivery">&nbsp;</p>
            </div>
            <h2 class="h2_price" v-text="`￥${wagashi.price.toFixed(2)}`"></h2>
            <div class="div_btn  btn_left btn_padding" v-show="pattr.length>1">
                <span class="a_btn">规格</span>
                <!-- <div class="div_select"> -->
                    <select name="attr" class="select_attr" id="attr" v-model="attr">
                        <option value="-1">请选择</option>
                        <option :value="i" v-for="(elem,i) of pattr" :key="i">{{elem}}</option>
                    </select>
                <!-- </div> -->
            </div>
            <div class="div_btn btn_left">
                <div class="a_btn" @click="add">加入购物车</div>
            </div>
            <div class="div_btn  btn_left btn_padding">
                <span class="a_btn btn_count">数量</span>
                <button @click="btncount(-1)">-</button>
                <span class="span_count">{{count}}</span>
                <button @click="btncount(1)">+</button>
            </div>
            <div class="div_btn btn_left btn_yellow">
                <div class="a_btn a_buy"  @click="add(0)">立即购买</div>
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
        id:'',
        wagashi:{price:0},
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
        add(n){
            // console.log(this.wagashi.pid)
            // console.log(this.pattr,5)
            // console.log(this.pattr[this.attr])
            // console.log(this.attr)
            if(this.attr=='-1'){
                alert('请选择口味')
                return
            }
            // console.log(this.count)
            // console.log(this.wagashi.pid)
            // type:wagashi
            if(this.pattr[this.attr]==''){this.pattr[this.attr]='空'}
            var data=this.qs.stringify({type:'2',pid:this.wagashi.pid,pattr:this.pattr[this.attr],count:this.count})
            // console.log(data)
            this.axios.post('/api/addCart',data,
            {headers: {'access_user_token':sessionStorage.getItem("token")||localStorage.getItem("token")}
                }).then(res=>{
                    // console.log(this.count)
                    //设置每次添加商品，修改购物车商品数量
                    this.$store.commit('setAddCount',this.count)
                    // console.log(res.data)
                    //如果用户点的是立即购买的话会传入0，n=0的话自动在添加购物车以后跳转购物车页
                        if(n==0){
                            this.$router.push('/cart')
                        }
                    }
                    )
                .catch(err=>{console.log(err)})

            // this.axios.post('/api/addCart','type=2&pid=1&pattr='+encodeURI('7味全家福系列')+'&count=5',
        //         axios.post('http://localhost:80/api/addCart', 
        //     'type=2&pid=1&pattr='+encodeURI('7味全家福系列')+'&count=5',
        //     {headers: {
        //         'Content-Type':'application/x-www-form-urlencoded',
        //         'access_user_token': sessionStorage['token']
        //     }}
        // )
        //     .then((res)=>{
        //         console.log(res)
        //     }).catch((err)=>console.log(err))
        // }
        
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
            this.axios.get("/api/wagashi",{
                params: {
                    "type": this.id
              }}).then(result=>{
                  this.wagashi=result.data.data[0];
          console.log(this.wagashi)
          this.img_lg=this.wagashi.img_lg.split(',')
          this.count=this.img_lg.length
            var width=485*this.img_lg.length+"px"
           this.styles.width=width;
        //   console.log(this.count)
          this.img_body=this.wagashi.img_body.split(',')
          this.pattr=this.wagashi.pattr.split(',')
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
        // width(){
        //     var width=485*this.img_lg.length+"px"
        //    this.width=width;
        //     },
    },
    watch:{
        
            
    }

}
</script>
<style scoped>
.content {
  margin: 0 auto;
  width: 996px;
  z-index: -1;
}
.div_top {
  width: 996px;
  height: 485px;
}
.carousel {
  float: left;
  width: 485px;
  height: 485px;
  z-index: -1;
}
.div_carousel {
  position: relative;
  overflow: hidden;
  height: 485px;
}
.carousel_inner {
  /* width:100%; */
  border: 1px solid #ddd;
}
.div_img {
  width: 485px;
  float: left;
}
.img_carousel {
  width: 100%;
}
.div_divdetail {
  width: 485px;
  height: 485px;
  float: right;
  /* overflow: hidden; */
}
.img_detail {
  display: block;
  width: 485px;
  height: 290px;
  margin-bottom: 10px;
}
h2 {
  color: #2093cc;
  font-size: 20px;
}
.div_title {
  float: left;
  width: 300px;
  margin-top: 12px;
}
.h2_title {
  height: 30px;
  width: 100%;
}
.h2_price {
  float: right;
  width: 130px;
  margin-top: 31.8px;
  text-align: right;
}
.delivery {
  margin-top: 1px;
}
.div_btn {
  height: 50px;
  width: 230px;
  /*padding-left:20px;*/
  margin: 12px 12px 0 0;
  background-color: #87d0e3;
  text-align: center;
  line-height: 50px;
}
.btn_left {
  float: left;
}
.btn_padding {
  text-align: left;
  box-sizing: border-box;
  padding-left: 20px;
  position: relative;
}
.btn_count {
  margin-right: 27px;
}
.span_count {
  display: block;
  position: absolute;
  top: 12px;
  left: 123.5px;
  width: 29px;
  height: 28px;
  background: #fff;
  color: #4fa9d7;
  text-align: center;
  line-height: 27px;
}
.btn_padding button {
  width: 29px;
  height: 28px;
  vertical-align: middle;
  border: 1px solid #fff;
  color: #fff;
  text-align: center;
  line-height: 25px;
  background: #87d0e3;
  margin: 0 18px;
  outline: none;
}
select {
  width: 142px;
  margin-left: 15px;
  height: 25px;
}
/* .div_select{
     display: inline-block; 
    float: right;
    margin:0px 0px 0px 0px;
    width:138px;
    height:25px;
    overflow: hidden;
    background-image: url(../assets/select.png);
    background-repeat: no-repeat;
    background-position: right 
} */
.select_attr {
  outline: none;
  border: none;
}
.select_attr option {
  border: none;
  outline: none;
}
.a_btn {
  color: #fff;
  cursor: pointer;
}
.btn_yellow {
  background-color: #ffff00;
}
.a_buy {
  color: #626262;
}
.div_details {
  width: 996px;
  clear: both;
  margin-top: 18px;
  margin-bottom: 20px;
}
.img_details {
  width: 996px;
  margin-top: -3px;
}
.a_prev {
  display: block;
  position: absolute;
  width: 23px;
  height: 25px;
  background-image: url(../assets/bj_4.png);
  background-repeat: no-repeat;
}
.a_prev_left {
  background-position: 0px -201px;
  bottom: 6px;
  left: 15px;
}
.a_prev_right {
  background-position: 0px -165px;
  bottom: 6px;
  right: 15px;
}
.carousel_indicatos {
  position: absolute;
  /*left:45%;*/
  display: flex;
  justify-content: center;
  bottom: 10px;
  left: 45%;
}
.carousel_indicatos li {
  bottom: 5px;
  display: block;
  width: 10px;
  height: 10px;
  border: 1px solid #626262;
  border-radius: 50%;
  margin: 10px 5px;
}
.li_active {
  background-color: #626262;
}
</style>
