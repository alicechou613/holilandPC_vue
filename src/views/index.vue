<template>
    <div>       
         <!-- 轮播图 -->
        <carousel> </carousel>     
        <!-- 类型、分类、三个系列 -->
        <div class="div_series">
        <!-- 经典系列 -->
        <!-- 儿童系列 -->
        <!-- 尊爱系列 -->
            <div class="a_img_series" v-for="(elem,i) of series" :key="'seriesimg'+i">
                <img :src="elem.simgurl" alt="" class="img_series">
            </div>
            <div class="a_series" v-for="(elem,i) of series" :key="'seriesp'+i">
                <p class="p_series p_chinsesseries" v-text="elem.stitle"></p>
                <p class="p_series" v-text="elem.stitleE"></p>
            </div>
        </div>
        <!-- 视频 -->
        <div class="div_video">
        <img src="http://www.holiland.com/data/afficheimg/1556240157651442682.jpg" alt="" class="img_video">
        <video :src="videourl" controls type="video/mp4" poster="posterimage.jpg" class="video_video">
        </video>
        </div>
        <!-- 服务与介绍 -->
        <div class="div_series">
            <div class="a_img_series" v-for="(elem,i) of service" :key="'seriesimg'+i">
                <img :src="elem.serviceimg" alt="" class="img_series">
            </div>
            <div class="a_series"  v-for="(elem,i) of service" :key="'seriesp'+i">
                <p class="p_series p_chinsesseries">{{elem.servicetitle}}</p>
                <p class="p_series">{{elem.servicetitleE}}</p>
                </div>
        </div>
    </div>
</template>
<script>
import carousel from "../components/carousel.vue"
export default {
  data() {
    return {
        videourl:'',
        service:[],
        series:[],
        banner:[]
    };
  },
  methods: {
    load() {
      //获取视频数据
       this.axios.get("/api/video",{
              params: {
                  "vid": 1
              }}).then(result=>{
        //   console.log(result.data)
          this.videourl=result.data.data[0].url;
      }).catch((err)=>{console.log(err)})
      //获取服务数据
        this.axios.get("/api/service").then(result=>{
        //    console.log(result.data.data)
           this.service=result.data.data.reverse();
      })
      //获取蛋糕系列数据
        this.axios.get("/api/series").then(result=>{
        //    console.log(result.data.data)
           this.series=result.data.data.reverse();
      })
    //   测试接口。天气的
    //   this.axios.get("https://www.tianqiapi.com/api/?version=v1&cityid=101110101").then(result=>{
    //       console.log(result)
    //   })
  
    
    }
  },
  created() {
    this.load();
  },
  components:{
      carousel
  }
}
</script>

<style  scoped>
/*轮播*/
.div_banner{
    width:996px;height:450px;
    position:relative;
    margin:0 auto 10px;
    z-index: -1;
}

.img_banner{
    width:100%;
    position:absolute;
    display:block;
}

.active{
    display: block;
}
.prev_banner,.next_banner{
    width:15%;
    position:absolute;
    top:0;
    bottom:0;
    height:450px;
    cursor: pointer;
}
.prev_banner{
    left:0;
}
.next_banner{
    right: 0;
}
.prev_banner_icon,.next_banner_icon{
    display:block;
    position:relative;
    width:37px;height: 39px;
    background-image: url(../assets/bj_4.png);
    background-color: transparent;
    background-repeat: no-repeat;
    top:205.5px;
}
.prev_banner_icon{
    background-position: -2px 0px;
    left:20px;
}
.next_banner_icon{
    background-position: -2px -41px;
    right:-92.4px;
}
/***/
.div_series{
  width:996px;height:270px;
  display:flex;
  margin:0 auto 10px;
  justify-content: space-between;
  flex-wrap:wrap;
}
.a_img_series{
  width:325px;height:220px;
  display:block;
    overflow: hidden;
    cursor: pointer;
}
.img_series{
  width:325px;height:220px;
}
.img_series:hover{
    transform:scale(1.07);
    width:325px;height:220px;
    transition: 1s;
}
.a_series{
  width:325px;height:50px;
  display:block;
  background:#87d0e3;
  cursor: pointer;
}
.p_series{
  color:#fff;
  padding-left: 15px;
}
.p_chinsesseries{
  margin-top:8px;
}
.div_video{
  width: 996px;height: 420px;
  margin:10px auto;
}
.img_video{
  width:240px;height:420px;
  float: left;
}
.video_video{
  width:745px;height:420px;
  float: right;
  outline:none;
}

.holiland_header{
    height:148px;
    width: 1525px;
}
.my_footer{
    height:352px;
    width:1519px;
}
.aaa{
    background:red;
    color:yellow;
}
</style>
