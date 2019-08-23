<template>
    <div>
    <div id="container">
       <div class="head">
          <div class="row">
                <ul class="b">
                    <li class="b-item">
                        <a class="t-muted" href="#">首页</a>|
                    </li>
                    <li class="b-item">
                        <a class="t-muted" href="#">新房</a>|
                    </li>
                    <li class="b-item">
                        <a class="t-muted" href="#">二手房</a>|
                    </li>
                    <li class="b-item">
                        <a class="t-muted" href="#">租房</a>|
                    </li>
                    <li class="b-item">
                        <a class="t-muted" href="#">商铺写字楼</a>|
                    </li>
                    <li class="b-item">
                        <a class="t-muted" href="#">海外地产</a>|
                    </li>
                    <li class="b-item">
                        <a class="t-muted" href="#">楼讯</a>|
                    </li>
                    <li class="b-item">
                        <a class="t-muted" href="#">房产研究院</a>|
                    </li>
                    <li class="b-item">
                        <a class="t-muted" href="#">房价</a>|
                    </li>
                    <li class="b-item">
                        <a class="t-muted" href="#">问答</a>
                    </li>
                </ul>
            </div>
            <div class="dl">
                 <img src="img/hear-88/denglu.png" alt=""/>
                    <div id="login">
                    <a class="btn" href="http://localhost:8080/#/login">登录</a>
                   </div>
                    <div id="zc">
                   <a class="btn" href="http://localhost:8080/#/login">注册</a>
                   </div>
            </div>
         </div>
         <div class="log">
             <div class="nav-content">
                  <span class="logo1">安居客</span>
                  <span class="logo2">二手房</span>
             </div>
                 <div class="cur_citynew">
                     <div class="select_icon">
                     <span class="city">西安
                      <img src="img/hear-88/sanjiao.png" alt=""/>
                     </span>
                    </div>
                    <div class="category_r">
                        <dl>
                            <dt>未央区</dt>
                            <dd>
                                <a href="#">太元路</a>
                                <a href="#">明光路</a>
                                <a href="#">二府庄</a>
                                <a href="#">玄武路</a>
                                <a href="#">辛家庙</a>
                                <a href="#">三桥</a>
                                <a href="#">方新村</a>
                                <a href="#">朱宏路</a>
                                <a href="#">开发区</a>
                                <a href="#">文景路</a>
                                <a href="#">阿房宫</a>
                                <a href="#">太华路</a>
                                <a href="#">北二环</a>
                                <a href="#">图书馆</a>
                                <a href="#">凤城路</a>
                            </dd>
                        </dl>
                        <dl>
                            <dt>碑林区</dt>
                            <dd>
                                <a href="#">友谊路</a>
                                <a href="#">交通大学</a>
                                <a href="#">友东路</a>
                                <a href="#">和平路</a>
                                <a href="#">南大街</a>
                                <a href="#">长乐坊</a>
                                <a href="#">东大街</a>
                                <a href="#">大差市</a>
                                <a href="#">东关南街</a>
                                <a href="#">西工大</a>
                                <a href="#">李家村</a>
                                <a href="#">南门</a>
                                <a href="#">南稍门</a>
                                <a href="#">体育场</a>
                                <a href="#">广济街</a>
                                <a href="#">红缨路</a>
                            </dd>
                        </dl>
                        <dl>
                            <dt>雁塔区</dt>
                            <dd>
                                <a href="#">西斜七路</a>
                                <a href="#">雁塔西路</a>
                                <a href="#">含光路</a>
                                <a href="#">青松路</a>
                                <a href="#">青龙寺</a>
                                <a href="#">明德门</a>
                                <a href="#">翠华路</a>
                                <a href="#">电视塔</a>
                                <a href="#">吉祥村</a>
                                <a href="#">永松路</a>
                                <a href="#">小寨</a>
                                <a href="#">大雁塔</a>
                                <a href="#">电子城</a>
                            </dd> 
                        </dl>
                        <dl>
                            <dt>新城区</dt>
                            <dd>
                                <a href="#">华清路</a>
                                <a href="#">矿山路</a>
                                <a href="#">建工路</a>
                                <a href="#">解放路</a>
                                <a href="#">东五路</a>
                                <a href="#">中山门</a>
                                <a href="#">八府庄</a>
                                <a href="#">通化门</a>
                                <a href="#">五路口</a>
                                <a href="#">朝阳门</a>
                                <a href="#">金华路</a>
                                <a href="#">文昌门</a>
                                <a href="#">万寿路</a>
                                <a href="#">胡家庙</a>
                            </dd>
                        </dl>
                        <div class="blank">
                            <a class="moreCity" href="#">更多城市></a>
                        </div>
                    </div>
                    
                </div>
             
            <div class="top-search">
                <div class="top-search-box">
                    <div class="top-search-box-1">
                        <input class="search-box-kk" id="searchInput" name="keywords" placeholder="请您输入要搜索的内容" type="text"/>
                    </div>
                    <div class="top-search-box-2">
                        <a onclick="sub()" name="submit" href="#">搜&nbsp;索</a>
                    </div>
                </div>
            </div>
           <div class="dt">
              <img src="img/hear-88/dt.png" alt="#"/>
               <a href="#">地图找房</a>
           </div>
     </div>
     <div class="head3">
      <nav>
        <div class="wrap">
            <ul class="level">
                <li><a href="#">房源</a></li>
                <li>
                    <a href="#">区域</a>
                    <ul class="two">
                        <li>未央区</li>
                        <li>雁塔区</li>
                        <li>碑林区</li>
                    </ul>
                </li>
                <li>
                    <a href="#">地图找房</a>
                    <ul class="two">
                        <li>区域</li>
                        <li>路线</li>
                        <li>价格</li>
                    </ul>
                </li>
                <li>
                    <a href="#">主题找房</a>
                    <ul class="two">
                        <li>高档区</li>
                        <li>平价区</li>
                        <li>低价区</li>
                    </ul>
                </li>
                <li>
                    <a href="#">找经纪人</a>
                    <ul class="two">
                        <li>经纪人A</li>
                        <li>经纪人B</li>
                        <li>经纪人C</li>
                    </ul>
                </li>
                <li>
                    <a href="">优秀榜</a>
                    <ul class="two">
                        <li>经纪人A</li>
                        <li>经纪人B</li>
                        <li>经纪人C</li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <nav>
       <div class="sear">
           <div class="wrap1">
              <ul class="level-1">
                 <li><a href="#">
                   <img src="../../public/img/hear-88/pingguo.png" alt=""/>
                   <img src="../../public/img/hear-88/anzhuo.png" alt=""/>
                   <span class="app">下载APP</span>
                 </a></li>
               </ul>
            </div>
       </div>
       </nav>
     </div>
   </div>
  </div>
 </div>
</template>
<script>
export default {
  
}
</script>
<style>
@import url("../assets/css/header.css");
</style>
