<template>
    <div>
        <my-header />
        <div class ="container">
            <h5>西安房产网 > 西安二手房</h5>
            <!-- 按条件搜索 -->
            <div class="search">
                <!-- 更多和多选 -->
                <div class="resolution">
                    <div class="left">区域 :</div>
                    <div class="right">
                        <ul class="list">
                            <li :class="{on:item.value==selected_address}" v-for="(item,index) of address" :key="index" v-text="item.value" @click="search_address(item)"></li>
                        </ul>
                        <!--<div>
                            <div class="chb" @click="address_chb">多选</div>
                        </div>-->
                    </div>
                    <!--<div v-if="display_chb" class="multify">
                        <div class="left_more">区域 :</div>
                        <div class="right_more">
                            <ul>
                                <li v-for="(item,i) of address" :key="i">
                                    <label><input type="checkbox"  v-model="val_address" :value="item.value">{{item.value}}</label> 
                                </li>
                            </ul>
                            <ul>
                                <button class="confirm" v-show="display_confirm">确认</button>
                                <button class="cansel" @click="address_cansel">取消</button>
                            </ul>
                        </div>
                    </div>-->
                </div>
                <!-- 普通搜索样式 -->
                <div class="search_price">
                    <div class="left">售价</div>
                    <div class="right">
                        <ul>
                            <li :class="{on:item.value==selected_sprice}" v-for="(item,i) of sprice" :key="i" @click="search_sprice(item)">{{item.value}}</li>
                        </ul>
                        <div class="input">
                            <input type="text" v-model="min_sprice">
                            -
                            <input type="text" v-model="max_sprice">
                            万
                            <input v-show="display_sprice"  @click="confirm_sprice" type="button" value="确定">
                        </div>
                    </div>
                </div>
                <div class="search_area">
                    <div class="left">面积</div>
                    <div class="right">
                        <ul>
                            <li :class="{on:item.value==selected_size}" v-for="(item,i) of size" :key="i" @click="search_size(item)">{{item.value}}</li>
                        </ul>
                        <div class="input">
                            <input type="text" v-model="min_size">
                            -
                            <input type="text" v-model="max_size">
                            m²
                            <input v-show="display_size" @click="confirm_size" type="button" value="确定">
                        </div>
                    </div>
                </div>
                <div class="search_model">
                    <div class="left">房型</div>
                    <ul>
                        <li :class="{on:item.value==selected_spec}" v-for="(item,index) of spec" :key="index" v-text="item.value" @click="search_spec(item)"></li>
                    </ul>
                    <!--<ul>
                        <li v-for="(item,i) of spec" :key="i">
                            <label><input type="checkbox"  v-model="val_spec" :value="item.value">{{item.value}}</label> 
                        </li>
                    </ul>-->
                </div>
                <!-- 高级选项 -->
                <div class="option">
                    <div class="left">高级选项：</div> 
                    <select v-model="val_build">
                        <option value="建造年代">建造年代</option>
                        <option value="2014年以后">2014年以后</option>
                        <option value="2012年以后">2012年以后</option>
                        <option value="2009年以后">2009年以后</option>
                        <option value="2008年以前">2008年以前</option>
                    </select>
                    <!--<div class="menu">
                        建造年代
                        <ul class="menu_list1">
                            <li><a href="#">2010年以后</a></li>
                            <li><a href="#">2005年以后</a></li>
                            <li><a href="#">2000年以后</a></li>
                            <li><a href="#">2000年以前</a></li>
                            <div class="chb">多选</div>
                        </ul>
                    </div>
                        <div class="d1">
                            <ul class="menu_list2">
                                <li>
                                    <input type="checkbox" id="one">
                                    <label for="one">2010年以后</label> 
                                </li>
                                <li>
                                    <input type="checkbox" id="two">
                                    <label for="two">2005年以后</label> 
                                </li>
                                <li>
                                    <input type="checkbox" id="three">
                                    <label for="three">2000年以后</label> 
                                </li>
                                <li>
                                    <input type="checkbox" id="four">
                                    <label for="four">2000年以前</label> 
                                </li>
                            </ul>
                            <ul>
                                <button class="confirm">确认</button>
                                <button class="cansel">取消</button>
                            </ul>
                        </div>-->
                        <!-- 下拉菜单-->
                    <select v-model="val_floor">
                        <option value="楼层">楼层</option>
                        <option value="低层">低层</option>
                        <option value="中层">中层</option>
                        <option value="高层">高层</option>
                    </select>
                </div>
            </div>
            <div class="sale">
                <div class="sale_detail">
                    <div class="detail" v-for="(pro,i) of products" :key="i">
                        <router-link :to="pro.href">
                            <img :src="pro.img" alt="">
                            <div class="detail_right">
                                <h4 class="title" v-text="pro.title"></h4>
                                <p class="subtitle">
                                    <span v-text="pro.spec">4室2厅</span>
                                    <b> | </b>
                                    <span>{{pro.size}}m²</span>
                                    <b> | </b>
                                    <span v-text="pro.floor">低层(共33层)</span>
                                    <b> | </b>
                                    <span>{{pro.build_times}}年建造</span>
                                </p>
                                <p class="address" v-text="pro.address">金地湖城大境天字一号  雁塔-南湖-池北路1369号</p>
                                <p class="tags"><span v-text="pro.tags.substr(0,4)">环境优雅</span><span v-text="pro.tags.substr(5,4)">品质小区</span><span v-text="pro.tags.substr(10,4)">环境优美</span></p>
                                <div class="detail_bottom">
                                    <p><span>安选</span><span>真实在售</span></p>
                                    <p class="landlord"><span>发布人</span>:{{pro.landlord}}</p>
                                    <p class="price"><span>{{pro.sprice}}万</span><span>{{pro.aprice}}元/m²</span></p>
                                </div>	
                            </div>
                        </router-link>
                    </div>
                    <div class="page" v-show="!like">
                        <ul>
                            <li :class="{disabled:pno==0}"><a href="javascript:;" @click="goto(-1)">上一页</a></li>
                            <li v-for="(n,i) of pageCount" :key="i" :class="{active:i==pno}"><a href="javascript:;" @click="page(i)">{{n}}</a></li>
                            <li :class="{disabled:pno==pageCount-1}"><a href="javascript:;" @click="goto(+1)">下一页</a></li>
                        </ul>
                        <!--<div>
                            <button>上一页</button>
                            <router-link :to="javascript:;" v-for="(n,i) of pageCount" :key="i" :class="{active:i==pno}">{{n}}</router-link>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#">4</a>
                            <a href="#">...</a>
                            <button>下一页</button>
                            <input type="text" value="1">
                            <input type="button" value="跳转">
                        </div>-->
                    </div>
                    <div class="like" :class="{on:like}">
                        <div class="nofond">没有找到相关的房源</div>
                        <h1>猜你喜欢</h1>
                        <div class="detail">
                            <router-link :to="href">
                                <img src="img/index/wy/01.jpg" alt="">
                                <div class="detail_right">
                                    <h4 class="title">龙首原地铁口 地段好 城市新苑 两室两厅 户型方正 满三满二</h4>
                                    <p class="subtitle">
                                        <span>二室二厅</span>
                                        <b> | </b>
                                        <span>89m²</span>
                                        <b> | </b>
                                        <span>低层(共23层)</span>
                                        <b> | </b>
                                        <span>2009年建造</span>
                                    </p>
                                    <p class="address">城市雅苑 未央-北二环西段-二环北路西段49号</p>
                                    <p class="tags"><span>环境优雅</span><span>品质小区</span><span>环境优美</span></p>
                                    <div class="detail_bottom">
                                        <p><span>安选</span><span>真实在售</span></p>
                                        <p class="landlord"><span>发布人</span>:孙召</p>
                                        <p class="price"><span>95万</span><span>(10623/m²)</span></p>
                                    </div>	
                                </div>
                            </router-link>
                        </div>
                    </div>
                </div>
                <div class="sale_right">
                    <h3>热推房源</h3>
                    <div class="pro_rec">
                        <img src="img/index/bl/01.jpg" alt="">
                        <p class="title">与南湖为伴 毗邻芙蓉园 天字一号改善4居室</p>
                        <p class="price"><span>225万</span><span>4室2厅 139m²</span></p>
                    </div>
                    <!-- 热门问答 -->
                    <div class="question">
                        <h3>热门问答 ></h3>
                        <ul>
                           <li v-for="(item,i) of questions" :key="i">
                                <span><p v-text="item.question" class="question"></p><p @click="open(item)" class="btn"></p></span>
                                <div v-text="item.answer" v-show="item.isShow"></div>
                            </li>
                        </ul>
                    </div>
                    <!-- 西安房价趋势-->
                    <div class="line">
                        <h3>西安房价趋势 ></h3>
                        <p><span>西安08月均价</span><span>12652/m²</span></p>
                        <p><span>环比07月</span><span>下降0.03%</span></p>
                        <div id="lineDiv">
                            <img src="../../public/img/background/line.png">  
                        </div>
                    </div> 
                    <!-- 小轮播图 -->
                    <div class="carousel">
                        <carousel></carousel>
                    </div>
                </div>
            </div>
            <!-- 推荐房源 -->
            <recommend />
            <!-- <div class="rec">
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
            </div> -->
            <!-- 右侧导航栏 -->
            <div class="nav">
                <div class="side_top">
                    <a href="javascript:;">
                        <span class="iconfont icon-kefu"></span>
                        <p>客服</p>
                        <div>在线客服</div>	
                    </a>
                    <a href="javascript:;">
                        <span class="iconfont icon-maifangrenminbifangzixianxing"></span>
                        <p>卖房</p>
                        <div>房东卖房</div>	
                    </a>
                    <a href="javascript:;">
                        <span class="iconfont icon-bangzhu"></span>
                        <p>帮助</p>
                        <div>使用帮助</div>	
                    </a>
                    <a href="javascript:;">
                        <span class="iconfont icon-tiaoyan"></span>
                        <p>调研</p>
                        <div>用户调研</div>	
                    </a>
                    <a href="javascript:;">
                        <span class="iconfont icon-tuiguang"></span>
                        <p>推广</p>
                        <div>推广咨询</div>	
                    </a>
                </div>
                <div class="side_bottom">
                    <a href="#">
                        <span class="iconfont icon-dayuhao1"></span>
                        <div>返回顶部</div>	
                    </a>
                </div>
		    </div>
        </div>
        <my-footer />
    </div>
</template>
<script>
import carousel from "../components/Carousel"
import recommend from "../components/Recommend"
export default {
    data(){
        return {
            href:"details",
            like:false,
            //当前第几页
            pageCount:0,
            //一共几页
            pno:0,
            //全部房源
            products:[],
            //val_address:[],
            display_chb:false,
            display_confirm:false,
            display_sprice:false,
            display_size:false,
            val_build:"建造年代",
            val_floor:"楼层",
            min_sprice:"",
            max_sprice:"",
            min_size:"",
            max_size:"",
            specd:"",
            selected_address:"全部",
            selected_sprice:"全部",
            selected_size:"全部",
            selected_spec:"全部",
            /*热门问答数据*/
            questions:[
                {
                    question:"什么是装配式建筑？它的优缺点有哪些？",
                    answer:"装配式建筑的墙体是可反复拆卸的，可以重复利用，且不会由于拆墙而产生建筑垃圾!",
                    isShow:false
                },
                {
                    question:"什么是双拼户型？有什么优劣势？",
                    answer:"双拼户型是指将两个90平米以下的小户型拼凑在一起捆绑销售，一般在发达城市比较常见。双拼户型有总面积大、双房产证以及减少契税的优势，但是，也存在购买困难、手续复杂、居住不便和装修麻烦等劣势。",
                     isShow:false
                },
                {
                    question:"经济适用房转商品房流程是怎样的？",
                    answer:"根据相关规定，经济适用住房在取得房屋所有权证后五年内不得上市出售。个人购买住房以取得房屋产权证或契税完税证明上注明的时间作为其购买房屋的时间，按“孰前原则”确认。",
                     isShow:false
                },
                {
                    question:"房地产公司需要什么资质？如何查询？",
                    answer:"为了加强对房地产开发企业管理，规范房地产开发企业行为，建设部于2000年3月发布了《房地产开发企业资质管理规定》。 房地产开发企业资质按照企业条件为一、二、三、四等四个资质等级。",
                     isShow:false
                }
            ],
            address:[
                {
                    type:"address",
                    value:"全部"
                },
                {
                    type:"address",
                    value:"未央区"
                },
                {
                    type:"address",
                    value:"雁塔区"
                },
                {
                    type:"address",
                    value: "碑林区"
                },
                {
                    type:"address",
                    value:"新城区"
                }
            ],
            sprice:[
                {
                    type:"sprice",
                    value:"全部"
                },
                {
                    type:"sprice",
                    value:"0万-50万"
                },
                {
                    type:"sprice",
                    value:"50万-100万"
                },
                {
                    type:"sprice",
                    value:"100万-150万"
                },
                {
                    type:"sprice",
                    value:"150万-200万"
                },
                {
                    type:"sprice",
                    value:"200万-"
                }
            ],
            size:[
                {
                    type:"size",
                    value:"全部"
                },
                {
                    type:"size",
                    value:"0m²-50m²"
                },
                {
                    type:"size",
                    value:"50m²-80m²"
                },
                {
                    type:"size",
                    value:"80m²-120m²"
                },
                {
                    type:"size",
                    value:"120m²-160m²"
                },
                {
                    type:"size",
                    value:"160m²-"
                }
            ],
            spec:[
                {
                    type:"spec",
                    value:"全部"
                },
                {
                    type:"spec",
                    value:"一室"
                },
                {
                    type:"spec",
                    value:"二室"
                },
                {
                    type:"spec",
                    value:"三室"
                },
                {
                    type:"spec",
                    value:"四室"
                },
                {
                    type:"spec",
                    value:"五室以上"
                }
            ],
            kw:{},
        }
    },
    watch:{
        products(val){
            console.log(val.length)
            if(val.length==0){
                this.like=true;
            }else{
                this.like=false;
            }
        },
        //监听建造年代
        val_build:function(val){
            this.val_build=val; 
           console.log(this.val_build)
           if(this.val_build!="建造年代"){
                this.kw.build=this.val_build;
           }else{
                delete(this.kw.build);
                this.kw.pno=0;
           }
           console.log(this.kw);
           this.load();
        },
        //监听楼层
       val_floor:function(val){
           this.val_floor=val;
           console.log(this.val_floor)
           if(this.val_floor!="楼层"){
                this.kw.floor=this.val_floor;
           }else{
                delete(this.kw.floor);
                this.kw.pno=0;
           }
           console.log(this.kw);
           this.load();
       },
       //监听input
       min_sprice:function(val){
           console.log(this.min_sprice);
           if(this.min_sprice!=""){
               this.display_sprice=true;
           }else{
               this.display_sprice=false;
               this.kw.pno=0;
           }
       },
       max_sprice:function(val){
           console.log(this.max_sprice)
           if(this.max_sprice!=""){
               this.display_sprice=true;
           }else{
               this.display_sprice=false;
               this.kw.pno=0;
           }
       },
       min_size:function(val){
           console.log(this.min_size)
           if(this.min_size!=""){
               this.display_size=true;
           }else{
               this.display_size=false;
               this.kw.pno=0;
           }
       },
       max_size:function(val){
           console.log(this.max_size)
           if(this.min_size!=""){
               this.display_size=true;
           }else{
               this.display_size=false;
               this.kw.pno=0;
           }
       },
    },
    created(){
        this.load();
    },
    methods:{
        goto(i){
            if((i==-1&&this.pno!=0)||(i==+1&&this.pno!=this.pageCount-1)){
                console.log(this.pno)
                this.kw.pno=parseInt(i)+parseInt(this.pno);
                this.load();
            }
        },
        //分页
        page(i){
            console.log(i);
            console.log(this.pno)
            this.kw.pno=i;
            this.load();
        },
        //发送ajax请求
        load:function(){
            var url="http://127.0.0.1:5050/index";
            //var params={address:"未央区",size:"50万-100万"};
            this.axios.get(url,{params:this.kw}
            ).then(result=>{
            // console.log(result);
            this.products=result.data.data;
            // console.log(this.products)
            //将得到的结果进行解构
            this.pageCount=result.data.pageCount;
            this.pno=result.data.pno;
            })
        },
        /*多选查询
        address_chb:function(){
            this.display_chb=true;
        },
        address_cansel:function(){
            this.display_chb=false;
        },*/
        //按地址查询
        search_address:function(item){
            console.log(item.value)
            this.selected_address=item.value;
            if(item.value!="全部"){
                this.kw[item.type]=item.value;
            }else{
                this.kw[item.type]="";
                this.kw.pno=0;
            }
            this.load();
            console.log(this.kw)
        },
        //按总售价查询
         search_sprice:function(item){
            this.selected_sprice=item.value;
            if(item.value!="全部"){
                this.kw[item.type]=item.value;
            }else{
                delete(this.kw[item.type]);
                this.kw.pno=0;
            }
            this.load();
            console.log(this.kw)
        },
        //总售价填值提交
        confirm_sprice:function(){
            this.kw.sprice=`${this.min_sprice}万-${this.max_sprice}万`;
            console.log(this.kw);
             this.load();
        },
        //按规模查询
        search_size:function(item){
            this.selected_size=item.value;
            if(item.value!="全部"){
                this.kw[item.type]=item.value;
            }else{
                delete(this.kw[item.type]);
                this.kw.pno=0;
            }
            this.load();
        },
        //总面积填值提交
        confirm_size:function(){
            this.kw.size=`${this.min_size}m²-${this.max_size}m²`;
            console.log(this.kw);
             this.load();
        },
        //按房型查询
        search_spec:function(item){
            this.selected_spec=item.value;
            if(item.value!="全部"){
                this.kw[item.type]=item.value;
            }else{
                delete(this.kw[item.type]);
                this.kw.pno=0;
            }
            this.load();
        },
        //热门问答的开和关
        open:function(item){
            item.isShow=!item.isShow;
        }
    },
    components:{carousel,recommend},
}
</script>
<style>
@import url("../assets/css/index.css");
</style>