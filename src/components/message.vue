<template>
    <div><div class="div_body">
            <div class="message_title">留言板</div>
            <div class="div_div_body">
                <div class="notice">注意：带<span>*</span>项目为必填项，请认真填写各项内容。</div>                                 
                <div class="div_table">
                    <table>
                        <tr>
                            <td>
                                <span>*</span>留言类型：
                            </td>
                            <td colspan="2">
                                <select name="" id="">
                                    <option value="1">请选择</option>
                                    <option value="2">投诉建议</option>
                                    <option value="3">产品咨询</option>
                                    <option value="4">业务咨询</option>
                                    <option value="5">团购业务</option>
                                    <option value="5">其他</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span>*</span>姓名：
                            </td>
                            <td colspan="2">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span>*</span>Email：
                            </td>
                            <td colspan="2">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span>*</span>联系电话：
                            </td>
                            <td colspan="2"><input type="text"></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top">
                                <span>*</span>留言内容：
                            </td>
                            <td colspan="2">
                              <textarea name="l" id="1" cols="30" rows="10"></textarea>  
                            </td>
                        </tr>
                        <tr>
                            <td>验证码：</td>
                            <td  colspan="2"><input type="text" class="code_input"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><div class="btn submit">提交</div></td>
                            <td><div class="btn reset">重置</div></td>
                        </tr>
                    </table>
                </div>
            </div>
      </div></div>
</template>
<script>
export default {
    data(){return{}}
}
</script>
<style scoped>
.div_body{
    width:996px;
    margin:auto;
}
.message_title{
    width:986px;
    height:30px;
    line-height:30px;
    margin:10px auto;
    overflow: hidden;
    background: #ededed;
    font-size:16px;
    padding-left: 10px;
}
.div_div_body{
    padding: 0px 10px 30px;
}
.notice{
    padding: 10px 0 20px;
    font-size:13px;
}
.notice>span{
    color:red;
}
.div_table{
    width:376px;
    margin:20px 500px 30px 100px;
}
.div_table span{
    color:red;
}
.div_table{
    font-size:14px;
}
tr>td:first-child{
    text-align: right;
}
table td{
    padding-top: 13px;
}
table input{
    width:270px;
    height:23px;
    padding:4px 0 2px 5px;
    border:1px solid #bebebe;    
}
textarea{
    width:275px;
    height:50px;
    padding: 4px 0 2px 5px;
    border:1px solid #bebebe;
    resize:none;
}
.code_input{
    width:100px;
    height:23px;
}
select{
    padding: 6px 0;
}
.btn{
    height:40px;
    width:105px;
    margin-bottom:20px;
    margin-top:10px;
    font-size:16px;
    font-weight: bold;
    text-align: center;
    line-height: 40px;
}
.submit{
    background: #89d0e3;
    color:#fff;
}
.reset{
    background: #ededed;
    color:#1e1e1e;
}
</style>

