<template>
    <div>
        <div class="div_help_template">
            <div class="div_aside_help">
                <myaside></myaside>
            </div>
            <div class="div_content_help">
                <h2 class="h2_title_help">售后服务</h2>
                <div class="hr_title_help">
                </div>
                <div class="div_title_help">
                    <p class="p_title_help">
                        客服中心
                    </p>  
                </div>
                <div>
                    <p class="p_font1">
                        客服热线
                    </p>
                    <p class="p_font2">
                        现在，我们为您开通了400免费热线电话：400-700-5999，如果遇到网络故障，请拨打010-56412699可以联系到我们。
                    </p>
                    <p class="p_font2">
                        温馨提示：拨打400电话收取您的市话费，
                    </p>
                    <p class="p_font1">
                        在线客服：     
                    </p>
                    <p class="p_font2">
                        如果您的电脑安装有屏蔽软件，可能不会弹出TQ的对话框，请您关闭屏蔽软件再试，谢谢！
                    </p>
                    <p class="p_font3">
                        如果您对我们的客户服务不满意或有好的建议，请拨打客服专线400-700-5999，我们将竭诚为您服务。
                    </p>
                    <br>
                    <p class="p_font3">
                        客服在线时间：9：00-22：00。
                    </p>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import myaside from "./aside.vue"
export default {
    data(){return{}},
    components:{myaside},
}
</script>
<style scoped>
p{
    font-family: "微软雅黑";
    font-size:13px;
    line-height: 23.4px;
}
.p_font1{
    color:rgb(107,196,223);
}
.p_font2{
    color:rgb(98,98,98);
}
.p_title_help{
  font-size: 24px;
  height: 85.818px;
  color: #00ccff;
  text-align: center;
  font-weight: bold;
  text-decoration: underline;
  font-family: 黑体;
  line-height: 1.8;
}
</style>
