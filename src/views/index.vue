<template>
    <div>aaaa
        <div @click="load()">3333</div>
    </div>
</template>
<script>
export default {
    data(){return{}},
    methods:{
        load(){
            console.log(111)
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
            this.axios.get("/api/video?vid=1").then(result=>{
                console.log(result)
            })
        }
    },
    created(){
        this.load()
    }
}
</script>
