<template>
    <div class="div_w">
        <div class="div_r">
            <div class="div_body1">
                <h3>
                    我的收货地址簿
                </h3>
                <span>共添加了<strong>2</strong>个地址&nbsp;&nbsp;</span>
                <a href="#">[新增]</a>
                <div style="clear: both;"></div>
            </div>
            <div class="div_body2">
                <table>
                    <tr>
                        <th>收货人</th>
                        <th>详情</th>
                        <th>操作</th>
                    </tr>
                    <tr>
                        <td>周小沫</td>
                        <td>
                            <p>奥德赛发送到发送到发放案发生的发生发发呆时啊发发</p>
                            <p>asdadasdadada</p>
                        </td>
                        <td>
                            <a href="#">[设为默认]</a>
                            <a href="#">[修改]</a>
                            <a href="#">[删除]</a>
                            <div style="clear: both;"></div>
                        </td>
                    </tr>
                    <tr>
                            <td>周小沫</td>
                            <td>
                                <p>奥德赛发送到发送到发放案发生的发生发发呆时啊发发</p>
                                <p>asdadasdadada</p>
                            </td>
                            <td>
                                <a href="#">[设为默认]</a>
                                <a href="#">[修改]</a>
                                <a href="#">[删除]</a>
                                <div style="clear: both;"></div>
                            </td>
                        </tr>
                </table>
            </div>
            <div class="div_body3">
                <h3>
                    编辑收货地址簿
                </h3>
                <table>
                    <tr>
                        <td><p><span>*</span>收&nbsp;货&nbsp;人：</p></td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td><p><span>*</span>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</p></td>
                        <td>
                            <select name="" id="">
                                <option value="">北京</option>
                            </select>
                            <select name="" id="">
                                <option value="">北京</option>
                            </select>
                            <select name="" id="">
                                <option value="">请选择区</option>
                            </select>
                            <select name="" id="">
                                <option value="">请选择街道</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><p><span>*</span>详细地址：</p></td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td><p><span>*</span>手机号码：</p></td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <button>
                                确定
                            </button>
                        </td>
                    </tr>
                </table>
            </div>
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
    .div_w{
    width:996px;
    margin:auto;
}
.div_r{
    width: 775px;
    float: right;
}
.div_body1{
    height:36px;
    line-height: 36px;
    margin-bottom: 15px;
    border-bottom:1px solid #c1bfc0;
}
.div_body1 h3{
    float:left;
    margin:0 15px 0 10px;
    font-size:14px;
}
.div_body1 span{
    display: block;
    float: left;
}
.div_body1 a{
    float: left;
    color:#87d0e3;
    margin:0 10px 0 0;
}
.div_body2 table{
    width:100%;
    border-collapse: collapse;
}
.div_body2 table th{
    background:#ededed;
    padding-left: 10px;
    font-weight: lighter;
    text-align: left;
    padding: 5px 0 5px 10px;
}
.div_body2 table th:first-child~th{
    border-left:10px solid #fff;
}
.div_body2 table th:first-child{
    width:10%;
}
.div_body2 table th:last-child{
    width:16%;
}
.div_body2 td{
    padding-left: 10px;
    text-align: left;
    padding: 12px 0 12px 20px;
    line-height: 1.6;
    border-bottom:1px solid #c1bfc0;
}
.div_body2 a{
    display: block;
    color:#626262;
}
.div_body2 a:hover{
    color:#87d0e3;
}
.div_body3 h3{
    float:left;
    margin:15px 15px 10px 10px;
    padding: 0 0 15px 15px;
    font-size:14px;
}
.div_body3{
    margin-bottom: 35px;
}
.div_body3 table{
    clear: both;
}
.div_body3  td p span{
    color:red;
    margin-right: 5px;
    font-weight: bold;
}
.div_body3 td{
    font-size:14px;
}
.div_body3 p{
    margin-bottom: 20px;
    text-align: left;
    margin-right:10px;
}
input{
    width:270px;
    height:23px;
    padding: 4px 0 0 5px;
    border:1px solid #bebebe;
    margin-bottom: 20px;
}
select{
    width:100px;
    padding:3px;
    margin-bottom: 20px;
    font-size: 14px;
    line-height: 17.6px;
}
button{
    cursor: pointer;
    height:40px;
    width:105px;
    line-height: 40px;
    margin-right:10px;
    background: #87d0e3;
    color:#fff;
    font-size:16px;
    font-weight:bold;
    border:none;
}
</style>

