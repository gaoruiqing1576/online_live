<template>
    <div>
        <div class="rec">
            <div class="btn_left iconfont icon-dayuhao" @click="move(-1)" :class="{disabled:leftDisabled}"></div>
            <div class="outer">
                <ul class="pro_rec" :style="ulStyle" :class="ulClass">
                    <li v-for="(pro,i) of product" :key="i">
                        <img :src="pro.img" alt="">
                        <p class="title" v-text="pro.title"></p>
                        <p class="price"><span v-text="pro.price">225万</span><span v-text="pro.size">4室2厅 139m²</span></p>
                    </li> 
                </ul>
            </div>
            <div class="btn_right iconfont icon-arrow-right" @click="move(1)" :class="{disabled:rightDisabled}"></div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            liWidth:264,
            product:[
                {
                    img:"img/index/bl/01.jpg",
                    title:"碑林区 柿园路 兴庆公园对面 兴庆宫 新装修没住过人 可按揭",
                    price:"200万",
                    size:"3室2厅 120m²"
                },
                {
                    img:"img/index/bl/02.jpg",
                    title:"钟楼南大街 朱雀门 六中 中行家属院二室东西通透1楼 证在手",
                    price:"205万",
                    size:"3室2厅 109m²"
                },
                {
                    img:"img/index/bl/03.jpg",
                    title:"不夜城 龙湖曲江盛景 急售上叠 全配 送双车库",
                    price:"150万",
                    size:"2室2厅 99m²"
                },
                {
                    img:"img/index/bl/04.jpg",
                    title:"高新区 高新国际学校对面 精装修  一室一厅小户型！",
                    price:"225万",
                    size:"4室2厅 139m²"
                },
                {
                    img:"img/index/bl/05.jpg",
                    title:"158跳楼价 业主现场签 园林社区大三室 中间楼层可按揭",
                    price:"171万",
                    size:"3室2厅 165m²"
                },
                {
                    img:"img/index/bl/06.jpg",
                    title:"二环边 佳家花园 好房来袭 大三室 大型运动社区 采光好",
                    price:"156万",
                    size:"3室2厅 149m²"
                },
                {
                    img:"img/index/bl/07.jpg",
                    title:"四条地铁 二环内 融创东方宸院 精装小高层 拎包入住",
                    price:"98万",
                    size:"2室2厅 90m²"
                },
                {
                    img:"img/index/bl/08.jpg",
                    title:"华山十七街坊 两室低层带花园 可按揭随时看房",
                    price:"83万",
                    size:"2室2厅 76m²"
                }
            ],
            times:0,
            ulClass:{ hasTrans:true },
            timer:null
        }
    },
    methods:{
        move(i){
            console.log(this.times)
            if((i==-1&&this.leftDisabled==false)||(i==1&&this.rightDisabled==false)){
                this.times+=i;
                if(this.times<0){
                    this.times==0
                }else if(this.times>this.product.length-4){
                    this.times=this.product.length-4
                }
            }
        }
    },
    computed:{
        ulStyle(){
          var marginLeft=-this.liWidth*this.times+"px";
          var width=this.liWidth*(this.product.length+1)+"px";
          return { width, marginLeft }
        },
        leftDisabled(){  //左边按钮的禁用状态
            return this.times==0;
        },
        rightDisabled(){  //右边按钮的禁用状态
            return this.times==this.product.length-4;
        }
    }
}
</script>  
<style scoped>
    /* 下边推荐房源 */
    .rec{
        width:100%;
        padding:20px 60px 0px 60px;
        position: relative;
        overflow: hidden;
        box-sizing: border-box;
        border:1px solid #ddd;
        margin:20px 0px;
    }
    .rec div.outer{
        width:100%;
        overflow: hidden;
    }

    .rec .btn_left{
        width:40px;
        height:40px;
        text-align: center;
        line-height: 40px;
        position: absolute;
        top:50%;
        font-size: 20px;
        left:2%;
    }
    .rec .btn_right{
        width:40px;
        height:40px;
        text-align: center;
        line-height: 40px;
        position: absolute;
        top:50%;
        font-size: 20px;
        left:96%;
    }
    .rec .btn_left:hover,.rec .btn_right:hover{
        background: #ddd;
        cursor: pointer;
    }
    .rec ul{
        width:100%;
        height:250px;
        box-sizing: border-box;
        overflow: hidden;
    }
    .rec ul.hasTrans{
        transition:all .2s linear;
    }

    .rec ul li{
        width:264px;
        padding:20px;
        text-align: center;
        list-style: none;
        float: left;
        box-sizing: border-box
    }
    .rec ul li:hover{
        background: #eee;
        border:1px solid #ddd;
    }
    .rec ul li img{
        width:100%;
        height:168px;
    }
    .rec ul li p{
        width:100%;
        height:23px;
        color:#666;
        font-size: 16px;
        /* 将超出的文字用三个点表示 */
        overflow: hidden;
        white-space: nowrap;   /*段落不换行*/
        text-overflow: ellipsis;
    }

    .rec ul p.price{
        display: flex;
        justify-content: space-between
    }
    .rec ul p.price span:first-child{
        color: #e54b00;
        font-size: 16px;
    }
    .rec ul p.price span:last-child{
        color: #aaa;
        font-size: 14px;
    }
</style>