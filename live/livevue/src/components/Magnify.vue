<template>
    <div>
        <div class="magnify">
            <div class="top">
                <img :src="pics[i].bg">
                <div class="mask" v-show="maskShow" :style="maskStyle"></div>
                <div class="super-mask" @mouseover="toggle" @mouseout="toggle" @mousemove="maskMove"></div>
                <div class="div-bg" v-show="maskShow">
                    <img :src="pics[i].bg" :style="imgStyle">
                </div>
            </div>
            <div class="bottom">
                <div :class="{disabled:leftDisabled,on:btnleft}" @click="move(-1)" class="btn_right iconfont icon-dayuhao"></div>
                <div class="sm_pic">
                    <ul :style="ulStyle">
                        <li v-for="(item,i) of pics" :key="i" @mouseover="changei(i)">
                            <img :src="item.sm">
                        </li>
                        <!--<li>
                            <img src="img/detail/01_bg.jpg">
                        </li>
                        <li>
                            <img src="img/detail/01_bg.jpg">
                        </li>
                        <li>
                            <img src="img/detail/01_bg.jpg">
                        </li>
                        <li>
                            <img src="img/detail/01_bg.jpg">
                        </li>-->
                    </ul>
                </div>
                <div :class="{disabled:rightDisabled,on:btnright}" @click="move(+1)" class="btn_right iconfont icon-arrow-right"></div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            maskWidth:176,
            maskHeight:176,
            superWidth:710,
            superHeight:400,
            maskShow:false,
            maskStyle:{
                left:0,
                top:0
            },
            imgStyle:{
                left:0,
                top:0
            },
            liWidth:124,
            ulStyle:{  //控制ul的样式
                "margin-left":0,  //绑定margin-left
            },
            times:0,//记录左移的次数
            i:0,    //记录当前正在显示第几张图片
            pics:[
               {
                   bg:"img/detail/01_bg.jpg",
                   sm:"img/detail/01_sm.jpg"
               },
               {
                   bg:"img/detail/02_bg.jpg",
                   sm:"img/detail/02_sm.jpg"
               },
               {
                   bg:"img/detail/03_bg.jpg",
                   sm:"img/detail/03_sm.jpg"
               },
               {
                   bg:"img/detail/04_bg.jpg",
                   sm:"img/detail/04_sm.jpg"
               },
               {
                   bg:"img/detail/05_bg.jpg",
                   sm:"img/detail/05_sm.jpg"
               },
               {
                   bg:"img/detail/06_bg.jpg",
                   sm:"img/detail/06_sm.jpg"
               },
               {
                   bg:"img/detail/01_bg.jpg",
                   sm:"img/detail/01_sm.jpg"
               }
              
           ]
        }
    },
    computed:{
        leftDisabled(){  //左边按钮的禁用状态
            return this.times==0;
        },
        btnleft(){  //左边按钮的禁用状态
            return this.times==0;
        },
        rightDisabled(){  //右边按钮的禁用状态
            return this.pics.length<=5||this.times==this.pics.length-5;
        },
        btnright(){  //右边按钮的禁用状态
            return this.pics.length<=5||this.times==this.pics.length-5;
        },
    },
    watch:{
        times(){   //当times自动变化时，自动修改ul的左边距
            this.ulStyle["margin-left"]=-this.times*this.liWidth+"px";   //带特殊符号要用中括号加引号，不能用点
        },
        pics(){
            this.ulStyle.width=this.pics.length*this.liWidth+'px';
        },
    },
    methods:{
        maskMove(e){
            var left=e.offsetX-this.maskWidth/2;
            var top=e.offsetY-this.maskWidth/2;
            if(left<0){left=0}
            else if(left>this.superWidth-this.maskWidth){left=this.superWidth-this.maskWidth}
            if(top<0){top=0}
            else if(top>this.superHeight-this.maskHeight){top=this.superHeight-this.maskHeight}
            top+="px";
            left+="px";
            this.maskStyle={left,top}
            var bgleft=parseInt(left)*2;
            var bgtop=parseInt(top)*2;
            this.imgStyle.left=-bgleft+"px";
            this.imgStyle.top=-bgtop+"px";
        },
        toggle(){
            this.maskShow=!this.maskShow;
        },
        move(i){
        //当点的时左边按钮，且左边按钮未被禁用或者点的时右边按钮，且右边按钮未被禁用
            if((i==-1&&this.leftDisabled==false)||(i==1&&this.rightDisabled==false)){
                this.times+=i;
                if(this.times<0){
                this.times==0
                }else if(this.times>this.pics.length-4){
                this.times=this.pics.length-4
                }
            }
        },
        //当鼠标进入每个li时，修改data中i变量的值，为当前li的下标。
        changei(i){
        this.i=i;
        //data中i改变，导致中图片的src和大图片的background-image自动同时变化。
        }
    }
}
</script>
<style scoped>
    *{
        margin:0;
        padding:0;
    }
    .magnify{
        width:710px;
    }
    .top{
        width:100%;
        height:400px;
        position: relative;
    }
    .top img{
        width:100%;
        height:400px;
    }
    .top .mask{
        position: absolute;
        top:0px;
        left:0px;
        z-index:2;
        opacity:.5;
        width: 176px;
        height: 176px;
        background-color: #666;
        opacity:.7;
    }
    .top .super-mask{
        width:100%;
        height:100%;
        border:1px solid #ddd;
        position: absolute;
        top:0px;
        left:0px;
        z-index:10;
        cursor:move;
    }
    .top .div-bg{
        width:400px;
        height:400px;
        position: absolute;
        top:0px; left:100%;
        border:1px solid #ddd;
        overflow:hidden;
        margin-left:20px;
    }
    .top .div-bg img{
        width:1467px;
        height:845px;
        position:absolute;
        left:0px;
        left:0px;
    }

    .bottom{
        width:100%;
        height:90px;
        display: flex;
        justify-content: center;
        align-items: center;
        margin:5px 0px;
    }
    .bottom div.sm_pic{
        width:640px;
        height:100%;
        overflow:hidden;
    }
    .bottom div.iconfont{
        width:40px;
        height:100%;
        border:1px solid #ddd;
        font-size: 40px;
        line-height: 90px;
        box-sizing: border-box;
        cursor: pointer;
        background:#aaa;
    }
    .bottom div.on{
        border:0;
        background:#fff;
        color:#fff;
    }
    .bottom ul{
        width:1630px;
        height:100%;
        list-style: none;
        overflow: hidden;
    }
    .bottom ul li{
        width:126px;
        height:100%;
        padding:5px;
        box-sizing: border-box;
        cursor: pointer;
        float:left;
        border:1px solid #ddd;
    }
    .bottom ul li:hover{
        border:1px solid #f00;
    }
    .bottom ul li img{
        width:100%;
        height:100%;
    }
</style>