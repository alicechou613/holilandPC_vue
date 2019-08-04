<template>
    <div>
         <!-- 轮播图 -->
        <div class="div_banner"  @mouseenter="stop" @mouseleave="start">
        <!--轮播图片-->
        <div class="div_banner_img"  :class="ulClass"  :style="ulStyle">
            <div class="div_div_banner_img" v-for="(elem,i) of bannerimg" :key="i">
                    <img :src="elem.cimgurl" alt="" class="img_banner">
            </div>
            <div class="div_div_banner_img" >
                    <img :src="bannerimg[0].cimgurl" alt="" class="img_banner">
            </div>
        <!--左右箭头-->
        <p class="prev_banner" style="display:inline">
            <span class="prev_banner_icon"  @click="move(-1)"></span>
        </p>
        <p class="next_banner" style="display:inline">
            <span class="next_banner_icon"  @click="move(1)"></span>
        </p>
        <!--轮播指示器-->
        <ul class="indicators_banner">
            <li v-for="(elem,a) of bannerimg" :key="a" :class="a==i?'active':''" @click="moveTo(a)"></li>
        </ul>
        </div>
    </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      bannerimg: [],
      ulClass: {
        //定义所有图片的容器div上是否有transition
        hasTrans: true //在css中提前定义好的样式类，其中包含transition属性
        //如果值为true，则当前图片容器的div上就有过渡属性
        //如果不想让图片容器的div上有过渡属性，则设置该值为false
      },
      i: 0, //控制当前正在选中第几张图片
      canClick: true,
      timer:null
    };
  },
  methods: {
      stop(){
      clearInterval(this.timer);
    },
    start(){
      this.timer=setInterval(()=>{
        this.move(1);
      },3000)
    },
    moveTo(i) {
      if (this.canClick) {
        this.i = i;
        this.canClick = false;
        setTimeout(() => {
          this.canClick = true;
        }, 600);
      }
    },
    move(i) {
      if (this.canClick) {
        //防抖/节流
        this.canClick = false; //立刻禁止单击，即使再单击，if也不成立了
        //第一张跳最后一张的时候
        if (i == -1 && this.i == 0) {
          this.ulClass.hasTrans = false;
          setTimeout(() => {
            this.i = this.bannerimg.length;
            setTimeout(() => {
              this.ulClass.hasTrans = true;
              this.i += i;
              setTimeout(() => {
                this.canClick = true;
              }, 200);
            }, 50);
          }, 50);
          //第四张跳第一张的时候
        } else if (i == 1 && this.i == this.bannerimg.length - 1) {
          this.i += i; 
          setTimeout(() => {
            this.ulClass.hasTrans = false;
            setTimeout(() => {
              this.i = 0;
              setTimeout(() => {
                this.ulClass.hasTrans = true;
                setTimeout(() => {
                  this.canClick = true;
                });
              }, 50);
            }, 50);
          }, 200);
        } else {
          this.i += i; 
          setTimeout(() => {
            this.canClick = true;
          }, 300);
        }
      }
    },
    load() {
      //获取轮播图数据
      this.axios.get("/api/banner").then(result => {
        this.bannerimg = result.data.data;
      });
    }
  },
  created() {
    this.load();
  },
  computed: {
    ulStyle() {
      var marginLeft = -this.i * 996 + "px";
      return { marginLeft };
    }
  }
};
</script>
<style scoped>
.div_banner {
  width: 100%;
  height: 450px;
  position: relative;
  margin: 0 auto 10px;
  overflow: hidden;
}
.div_banner_img {
  height: 450px;
  width: 4980px;
}
.hasTrans {
  transition: all 0.2s linear;
}
.div_div_banner_img {
  width: 996px;
  height: 450px;
  float: left;
}

.img_banner {
  width: 100%;
  position: absolute;
  display: block;
}

.prev_banner,
.next_banner {
  width: 15%;
  position: absolute;
  top: 0;
  bottom: 0;
  height: 450px;
  cursor: pointer;
}
.prev_banner {
  left: 0;
}
.next_banner {
  right: 0;
}
.prev_banner_icon,
.next_banner_icon {
  display: block;
  position: relative;
  width: 37px;
  height: 39px;
  background-image: url(../assets/bj_4.png);
  background-color: transparent;
  background-repeat: no-repeat;
  top: 205.5px;
}
.prev_banner_icon {
  background-position: -2px 0px;
  left: 20px;
}
.next_banner_icon {
  background-position: -2px -41px;
  right: -92.4px;
}
/*轮播指示器*/
.indicators_banner {
  position: absolute;
  bottom: 10px;
  display: flex;
  left: 50%;
  margin-left: -40px;
}
.indicators_banner li {
  width: 10px;
  height: 10px;
  color: #626262;
  margin: 0 4px;
  border: 1px solid #626262;
  border-radius: 50%;
  z-index: 100;
}
.active {
  background: #626262;
}
</style>
