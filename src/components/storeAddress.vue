<template>
    <div>
        <div class="">
    <!-- 门店列表+线 -->
        <div class="" id="head">
            <span class="head_line"></span>
            <span class="title">北京门店列表</span>
            <span class="head_line head_line_right"></span>
        </div>
        <div>
            <table>
                <tr>
                    <th>北京市</th>
                    <th>店名</th>
                    <th>地址</th>
                    <th>电话</th>
                </tr>
                <tr>
                    <td>朝阳区</td>
                    <td>青年路店</td>
                    <td>北京市朝阳区西大望南路南口周庄嘉园南里1号楼104号（朝阳区中西医结合急诊抢救中心 向南350米）</td>
                    <td>87156992</td>
                </tr>
                <tr>
                    <td>石景山区</td>
                    <td>固安聚宝隆购物中心店</td>
                    <td>北京市朝阳区西大望南路南口周庄嘉园南里1号楼104号（朝阳区中西医结合急诊抢救中心 向南350米）</td>
                    <td>87156992</td>
                </tr>
                <tr>
                    <td>朝阳区</td>
                    <td>劲松电影院店</td>
                    <td>北京市朝阳区西大望南路南口周庄嘉园南里1号楼104号（朝阳区中西医结合急诊抢救中心 向南350米）</td>
                    <td>0316-6170127</td>
                </tr>
            </table>
        </div>

    </div>
    </div>
</template>
<script>
export default {
    data(){return{}},
}
</script>
<style scoped>
table{
    margin:10px auto;
    border-collapse: collapse;
}
td,th{
    border:1px solid rgb(127,127,127);
    vertical-align: bottom;
    text-align: center;
    height: 20px;
    padding: 1px;
}
</style>
