<template>
    <div>
        <div id="allmap"></div>
        <div class="mask">
            <div class="nav_map">
                <div class="aroundType">
                    <div class="elem" v-for="(item,i) of tags" :key="i" @click="arroundType(item)" :class="{selected:item.title==floor_one}">{{item.title}}
                    <div class="itemTagBox" :class="{selected:item.title==floor_one}">
                        <span @click="search(item)">{{item.subtitle[0]}}</span>
                        <span>{{item.subtitle[1]}}</span>
                    </div>
                    </div>
                </div>
                <div id="r-result"></div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            search_address:"曲江新村北苑",
            search_title:"超市",
            floor_one:"交通",
            tags:[
                {title:"交通",subtitle:["地铁站","公交站"]},
                {title:"教育",subtitle:["幼儿园","学校"]},
                {title:"医疗",subtitle:["医院","药店"]},
                {title:"购物",subtitle:["商城","超市"]},
                {title:"生活",subtitle:["银行","餐厅"]},
            ]
        }
    },
    methods:{
        arroundType(item){
            this.floor_one=item.title;  
        },
        search(){

        }
    },
    mounted() {
        var map = new BMap.Map("allmap");
        var point = new BMap.Point(108.952806,34.240016);
        //添加控件
        map.addControl(new BMap.NavigationControl());    
        map.addControl(new BMap.ScaleControl());    
        map.addControl(new BMap.OverviewMapControl());    
        map.addControl(new BMap.MapTypeControl()); 
        // 创建地址解析器实例--找到房源所在小区
       var myGeo = new BMap.Geocoder();
        // 将地址解析结果显示在地图上,并调整地图视野
         var map_1=myGeo.getPoint(this.search_address, function(point){
            console.log(point)
            if (point) {
                map.centerAndZoom(point, 17);
                var myIcon = new BMap.Icon("img/background/2.gif", new BMap.Size(50,50));
                var marker2 = new BMap.Marker(point,{icon:myIcon});  // 创建标注
                map.addOverlay(marker2);              // 将标注添加到地图中
                //添加文本标签
                var opts = {
                    position : point,    // 指定文本标注所在的地理位置
                    offset   : new BMap.Size(-45, -60)    //设置文本偏移量
                }
                var label = new BMap.Label("时代明丰苑", opts);  // 创建文本标注对象
                label.setStyle({
                    color : "white",
                    fontSize : "15px",
                    fontFamily:"微软雅黑",
                    backgroundColor:"#5184f9",
                    border:"0",
                    boxSizing:"border-box",
                    padding:"10px"
                });
                map.addOverlay(label);   
                var local = new BMap.LocalSearch(point, {
                    renderOptions: {map: map, panel: "r-result",autoViewport: true,  }
                });
                local.searchNearby("公交站",point,1000);
                local.disableFirstResultSelection(true)   //禁用自动选择第一个检索结果
            }else{
                alert("您选择地址没有解析到结果!");
            }
        }, "西安市");
        //根据查询的小区地址查询周边设施
          //
    }
}
</script>
<style>
@import url("../assets/css/map.css");  
</style>