<template>
    <div>
        <div class="div_w">
        <div id="head">
            <span class="head_line"></span>
            <span class="title">购物车</span>
            <span class="head_line head_line_right"></span>
        </div>
        <div class="div_body1" id="table1">
            <table>
                <tr>
                    <th>商品名称</th>
                    <th>属性</th>
                    <th>积分</th>
                    <th>单价</th>
                    <th>购买数量</th>
                    <th>小计</th>
                    <th>操作</th>
                </tr>
                <tr v-for="(item,i) of list" :key="i">
                    <td>
                        <input type="checkbox">
                        <img :src="item.img_main" alt="">
                        <a href="">{{item.title}}</a>    
                    </td>
                    <td v-text="item.pattr=='空'?'':item.pattr"></td>
                    <td>{{item.price}}积分</td>
                    <td v-text="`￥${parseFloat(item.price).toFixed(2)}`"></td>
                    <td class="td_btn">
                        <button @click="count(-1,i)">-</button>
                        <span v-html="item.count" style="margin-left: 8px;"/>
                        <button @click="count(1,i)" style="margin-left: 8px;">+</button>
                    </td>
                    <td  v-text="`￥${(item.price*item.count).toFixed(2)}`"></td>
                    <td>
                        <a href="" style="padding-bottom: 5px;">删除</a>   
                        <a href="">放入收藏夹</a>
                    </td>
                </tr>
                <tr v-show="list.length==0">
                    <p>购物车暂无商品</p>
                </tr>
                
            </table>
        </div>
        <div class="div_body2">
            <div>
                <p @click="body2_open">可选好利来专属附加产品<span></span></p>
                <a href="">继续购物</a>
                <div>
                    <table :class="{body_open}">
                        <tr>
                            <th>商品信息</th>
                            <th>单价</th>
                            <th>操作</th>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="div_body3">
            <div>
                <span href="#">全选</span>
                <span href="#">×删除选中商品</span>
            </div>
            <div>
                <span>总计:</span>
                <span>{{totalPrice}}</span>
                <!-- <span>{{total}}</span> -->
                <span>下一步</span>
            </div>
        </div>
    </div>
    </div>
</template>
<script>
export default {
    data(){return{
        body_open:true,//附加产品按钮开关
        list:[{price:0,count:0}],
        totalPrice:0
    }},
    methods:{
        // totalPrice1(){
        //     let total=0;
        //     for(var i=0;i<this.list.length;i++){
        //         let item=list[i]
        //         total+=item.price*item.count
        //     }
        //     this.totalPrice=total.toString().replace(/\B(?=(\d{3})+$)/g,',')
        // },
        count(c,i){
            if(c==-1&&this.list[i].count==1){
                //删除商品
                alert('该商品无法再减少，如果需要删除商品请点击右侧的删除按钮')
            }else{
                console.log(this.list[i])
                console.log(this.list[i].cartid,159)
                //给服务器传购物车某商品数量的修改,vuex购物车数量修改
                if(c==1){
                    //如果是增加的话
                    var data=this.qs.stringify({cartid:this.list[i].cartid})
                    this.axios.post('/api/upCart',data,
                    {
                        headers:{'access_user_token':sessionStorage.getItem("token")||localStorage.getItem("token")}
                    }).then(res=>{
                        console.log(res.data.data)
                        var code=res.data.data;
                        console.log(code)
                            if(code==true){
                                this.$store.commit('addCount')
                            }
                        }).catch(err=>{console.log(err)})
                }else{
                    //如果是减少的话
                    var data=this.qs.stringify({cartid:this.list[i].cartid})
                    this.axios.post('/api/downCart',data,
                    {
                        headers:{'access_user_token':sessionStorage.getItem("token")||localStorage.getItem("token")}
                    }).then(res=>{
                        console.log(res.data.data)
                        var code=res.data.data;
                        console.log(code)
                            if(code==true){
                                this.$store.commit('reduceCount')
                            }
                        }).catch(err=>{console.log(err)})
                }
                //页面显示的数量更新
                this.list[i].count+=c;
            }
            return this.list[i].count
        },
        //附加产品按钮开关
        body2_open(){
            console.log(1)
            if(this.body_open==false){
                this.body_open=true;
            }else{
            console.log(2)
                this.body_open=false;
            }
        },
        load(){
            // var isLoginb=this.$store.getters.isLogin
            // this.$store.getters.isLogin00
            // console.log(123)
            // console.log(isLoginb)
            // console.log(456)
            if(this.$store.getters.isLogin=='true'){
                this.axios.post('/api/getCarts','',
                {headers: {'access_user_token':sessionStorage.getItem("token")||localStorage.getItem("token")}
                    }).then(res=>{
                        console.log(res.data.data)
                        this.list=res.data.data
                        })
                    .catch(err=>{console.log(err)})
            }else{
                this.$router.push('/login')
                
            }
        }
    },
    mounted(){
        this.load()
    }
    
}
</script>
<style scoped>
.div_w{
    width:996px;
    margin:auto;
}
.div_body1 table{
    border-collapse: collapse;
    table-layout: fixed;
}
.div_body1 th{
    background: #ededed;
    text-align: center;
    height:27px;
    line-height: 27px;
    margin:0 5px 0 0;
    padding-left: 20px;
}
.div_body1 th:first-child{
    width:180px;
    padding-left: 98px;    
    text-align: left; 
}
.div_body1 th:nth-child(2){
    width: 105px;
}
.div_body1 th:nth-child(3){
    width: 70px;
}
.div_body1 th:nth-child(4){
    width:90px;   
}
.div_body1 th:nth-child(5){
    width: 130px;
}
.div_body1 th:nth-child(6){
    width: 90px;
}
.div_body1 th:last-child{
    width:85px;
}
.div_body1 table img{
    width:65px;
    height:65px;
    margin:10px 10px 10px 5px;
}
.div_body1 td:first-child{
    display: flex;
    align-items: center;
}

.div_body1 td{
    font-size:14px;
    overflow: hidden;
    text-align: center;
    padding-left: 20px;
}
.div_body1 td:first-child~td{
    font-size:13px;
}
.div_body1 td:first-child input{
    width:20px;
    height:20px;    
}
.div_body1 a{
    display: block;
    width:178px;
    text-decoration: none;
}
.td_btn{
    display: flex;
    justify-content: center;
}
.td_btn button{
    width:20px;
    height:20px;
    cursor: pointer;
    border:1px solid #d5d5d5 ;
    background: #fff;
    text-align: center;
}
.td_btn input{
    width:18px;
    height:18px;
    cursor: pointer;
    border:1px solid #d5d5d5 ;
    background: #fff;
    text-align: center;
}
.div_body1 a:visited{
    color:#626262;
}
.div_body1 a:hover{
    color:#6bc4df;
    text-decoration: underline;
}
.div_body1 tr{
    border-bottom: #d5d5d5 1px solid;
}
.div_body1 td:nth-child(2){
    padding-left:10px;
}
/*div_body2*/
.div_body2 p{
    display: inline-block;
}
.div_body2 a{
    float: right;
    color:#6bc4df;
    padding:10px 10px;
}
.div_body2 a:hover{
    text-decoration:underline;
}
.div_body2 p{
    height: 30px;
    line-height: 30px;
    width: 200px;
    background: #ededed;
    border:1px solid #d5d5d5;    
    padding-left: 20px;
}
.div_body2 p span{
    display: inline-block;
    width: 22px;
    height:15px;
    margin:0px 6px -2px;
    background-image: url(../assets/bj_4.png);
    background-repeat: no-repeat;
    background-position: 0px -82px;
}
.body_open{
    display:none;
}
.div_body3{
    margin-top:20px;
}
.div_body3>div:first-child{
    display: inline-block;
    width:140px;
    height:60px;
    line-height: 60px;
}
.div_body3>div:first-child>span{
    color:rgb(98, 98, 98);
}
.div_body3>div:first-child>span:last-child{
    margin-left: 15px;
}
.div_body3>div:last-child{
    display: block;
    /* min-width:230px; */
    float: right;
    height:60px;
    line-height: 60px;
    font-size:16px;
    margin-bottom: 20px;
    border:#d5d5d5 1px solid;
    background: #ededed;
    text-align: left;
    padding-left: 20px;
    position: relative;
}
.div_body3>div:last-child>span:last-child{
    background-color: #ff0;
    display: block;
    font-size: 14px;
    height:30px;
    line-height: 30px;
    padding: 0 13px 0 13px;
    letter-spacing:0.2em;
    position: absolute;
    right:10px;
    top:16px;
    float:right;
}
.div_body3>div:last-child>span:nth-child(2){
    display: block;
    float:right;
    margin-right:100px;
}
</style>

