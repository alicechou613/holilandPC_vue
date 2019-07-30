<template>
    <div>
        <div id="head">
            <span class="head_line"></span>
            <span class="title">我的账户</span>
            <span class="head_line head_line_right"></span>
        </div>
        <div class="body_w">
            <div class="div_body">
                <div class="div_body1">
                    <p>您好，15175215880&nbsp;&nbsp;&nbsp;&nbsp;欢迎您回来！</p>
                    <p>您上一次登录时间：2019-07-02 15:03:09</p>
                </div>
                <div class="div_body2">
                    <span>
                        添加一个亲友信息赠送积分50，亲友可以用注册手机号码，默认密码：123456登陆本站。
                    </span>
                    <a href="#">
                        添加我的亲友
                    </a>
                </div>
                <div class="div_body3">
                    <p>您目前的级别：</p>
                    <p>在本商城购物可享受折扣：</p>
                    <p>账户积分：<span>100积分</span></p>
                    <p>可用积分：<span>100积分</span></p>
                    <div style="clear:both;"></div>
                </div>     
                <div class="div_body4">
                    <h3>会员公告</h3>
                    <p>欢迎入驻好利来！</p>
                </div>
                <div class="div_body5">
                    <h3>订单列表</h3>
                    <a href="#">更多订单>></a>
                </div>
                <div class="div_body6">
                    <table>
                        <tr>
                            <th>订单号</th>
                            <th>收货人姓名</th>
                            <th>总价</th>
                            <th>状态</th>
                            <th>应付</th>
                            <th>支付</th>
                            <th>操作</th>
                            
                        </tr>
                        <tr>
                            <td colspan="7">无</td>                        
                        </tr>
                    </table>
                </div>
            </div>
            <div style="clear:both"></div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    }
}
</script>
<style scoped>
.body_w{
    width:996px;
    margin:auto;
}
.div_body{
    width:775px;
    float: right;
    
}
.div_body1{
    width:760px;
    color:#939393;
    text-align:right;
    padding: 0px 15px 16px;
}
.div_body1>p:first-child{
    font-size:14px;
    float:left;
    font-weight: bold;
}
.div_body2{
    width:760px;
    padding: 15px;
}
.div_body2>span{
    color:#a3a3a3;
}
.div_body2>a{
    text-decoration:underline;
    margin-left:30px;
    color:#626262;
}
.div_body2>a:hover{
    color:#87d0e3;
    text-decoration: none;
}
.div_body3{
    width:773px;
    border:1px solid #dfdfdf;
    margin-bottom: 15px;
    color:#686868;
    padding: 12px 0 10px;
}
.div_body3>p{
    display: block;
    width:47%;
    float:left;
    height:20px;
    line-height: 20px;
    padding-top: 3px;
    padding-left: 3%;
}
.div_body3 span{
    color:#d21c23;
}
.div_body4{
    width: 760px;
    padding: 20px 15px 15px;
}
.div_body4>h3{
    padding-bottom: 8px;
}
.div_body4>p{
    padding-top: 3px;
}
.div_body5{
    height:36px;
    line-height: 36px;
    border-bottom: 1px solid #c1bfc0;
    margin-bottom: 15px;
}
.div_body5>a{
    float: right;
    color:#87d0e3;
    text-decoration:underline;
    margin:0 10px 0 0;
}
.div_body5>h3{
    float: left;
}
.div_body6>table{
    width:100%
}
.div_body6 th{
    height:30px;
    background-color:#ededed;
    font-weight: lighter;  
    padding-left: 10px;
    text-align: left;
    border-left:10px solid #fff;
}
.div_body6 th:nth-child(2)~th{
    width:14%;   
}
.div_body6 th:nth-child(2){
    width:15%;
}
.div_body6  tr th:last-child{
    width:10%;
}
.div_body6 td{
    height:30px;
    font-weight: lighter;
    padding-left: 10px;
    text-align: left;
    border-left:10px solid #fff;
    padding: 12px 0px 18px 20px;
}
table td:last-child{
    border-bottom:1px solid #c1bfc0;
}
</style>


