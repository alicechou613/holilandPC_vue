<template>
    <div>       
         <!-- 轮播图 -->
        <div class="div_banner">
        <!--轮播图片-->
        <div class="div_banner_img">
            <div class="div_div_banner_img active">
            <img src="../assets/index/1457047833194068991.jpg" alt="" class="img_banner">
            </div>
            <div class="div_div_banner_img">
            <img src="../assets/index/1457047833194068991.jpg" alt="" class="img_banner">
            </div>
            <div class="div_div_banner_img">
            <img src="../assets/index/1457047833194068991.jpg" alt="" class="img_banner">
            </div>
            <div class="div_div_banner_img">
            <img src="../assets/index/1457047833194068991.jpg" alt="" class="img_banner">
            </div>
        </div>
        <!--左右箭头-->
        <p class="prev_banner" style="display:inline">
            <span class="prev_banner_icon"></span>
        </p>
        <p class="next_banner" style="display:inline">
            <span class="next_banner_icon"></span>
        </p>
        <!--轮播指示器-->
        </div>
        <!-- 类型、分类、三个系列 -->
        <div class="div_series">
        <!-- 经典系列 -->
            <div class="a_img_series">
                <img src="../assets/index/1556050944618701139.jpg" alt="" class="img_series">
            </div>
            <div class="a_img_series">
        <!-- 儿童系列 -->
            <img src="../assets/index/1556053192285643115.jpg" alt="" class="img_series">
            </div>
        <!-- 尊爱系列 -->
            <div class="a_img_series">
                <img src="../assets/index/1556051963477236297.jpg" alt="" class="img_series">
            </div>
            <div class="a_series">
                <p class="p_series p_chinsesseries">经典系列</p>
                <p class="p_series">CLASSIC SERIES</p>
            </div>
            <div class="a_series">
                <p class="p_series p_chinsesseries">儿童系列</p>
                <p class="p_series">CHILDREN SERIES</p>
            </div>
            <div class="a_series">
                <p class="p_series p_chinsesseries">尊爱系列</p>
                <p class="p_series">RESPECT AND LOVE</p>
            </div>
        </div>
        <!-- 视频 -->
        <div class="div_video">
        <img src="../assets/index/1556240157651442682.jpg" alt="" class="img_video">
        <video src="http://cloud.video.taobao.com//play/u/2455221099/p/1/e/6/t/1/50071310842.mp4" controls type="video/mp4" poster="posterimage.jpg" class="video_video">
        </video>
        </div>
        <!-- 服务与介绍 -->
        <div class="div_series">
            <div class="a_img_series">
                <img src="../assets/index/1528259724147241527.jpg" alt="" class="img_series">
            </div>
            <div class="a_img_series">
                <img src="../assets/index/1458096609174521318.jpg" alt="" class="img_series">
            </div>
            <div class="a_img_series">
                <img src="../assets/index/1458039189338219135.jpg" alt="" class="img_series">
            </div>
            <div class="a_series">
                <p class="p_series p_chinsesseries">配送包</p>
                <p class="p_series">DELIVERY PACKAGE</p>
                </div>
            <div class="a_series">
                <p class="p_series p_chinsesseries">店面形象</p>
                <p class="p_series">STORE IMAGES</p>
                </div>
            <div class="a_series">
                <p class="p_series p_chinsesseries">配送服务</p>
                <p class="p_series">DELIVERY SERVICE</p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  methods: {
    load() {
      console.log(111);
      // this.axios.get("http://192.168.3.39/api/video",{
      //         params: {
      //             "vid": 1
      //         }}).then(result=>{
      //     console.log(result)
      // })
      //测试接口。天气的
      // this.axios.get("/api/?version=v1&cityid=101110101").then(result=>{
      //     console.log(result)
      // })
      // this.axios.get("/api/video?vid=1").then(result=>{
      //     console.log(result)
      // })
      // this.axios.get("http://192.168.3.39:80/api/video?vid=1").then(result=>{
      this.axios.get("http://192.168.3.39:80/api/video?vid=1").then(result => {
        console.log(result);
      });
    }
  },
  created() {
    this.load();
  }
};
</script>

<style  scoped>

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
