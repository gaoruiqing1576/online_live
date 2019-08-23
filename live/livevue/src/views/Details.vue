<template>
<div>
	<my-header />
	<!--导航条随滚动条移动一段距离开始显示-->
	<div class="fixed"  id="searchBar">
		<div class="navContent">
			<a href="javascript:;" @click="showDetails(1)">房源信息介绍</a>
			<a href="javascript:;" @click="showDetails(2)">户型分间</a>
			<a href="javascript:;" @click="showDetails(3)">房源照片</a>
			<a href="javascript:;" @click="showDetails(4)">看房记录</a>
			<a href="javascript:;" @click="showDetails(5)">小区简介</a>
			<a href="javascript:;" @click="showDetails(6)">周边配套</a>
		</div>
	</div>
     <!-- 头部下方宽度占100% -->
	<div id="container">
		<ul class="menu">
			<li>
				<a href="javascript:;">西安贝壳找房</a>
			</li>
			<li>></li>
			<li>
				<a href="javascript:;">西安二手房</a>
			</li>
			<li>></li>
			<li>
				<a href="javascript:;">未央二手房</a>
			</li>
			<li>></li>
			<li>
				<a href="javascript:;">海荣豪佳花园二手房</a>
			</li>
			<li>></li>
			<li>
				当前房源
			</li>
		</ul>
		<!-- <span>分享此房源</span>	 -->
		<div class="view">
			<div class="descImg">
					<img :src="pics[i].lg" class="imgBig">
					<div id="mask"  v-show="maskShow" :style="maskStyle"></div>
					<div id="super-mask" class="position-absolute" @mouseover="toggle" @mouseout="toggle"
              @mousemove="maskMove" ></div>
					<div id="lg-div" class="position-absolute" v-show="maskShow" :style="{
                'background-image':`url(${pics[i].lg})`,'background-position':bgPosition
              }"></div>
				<div class="descSmall">
					<span class="pre">
						<img src="../../public/img/detail/left.png" :class="{disabled:leftDisabled}" @click="move(-1)" id="btnLeft">
					</span>
					
					<ul :style="ulStyle" id="ulImgs" class="ulImgs">
						<li v-for="(p,i) of pics" :key="i" @mouseover="changei(i)">
							<img :src="p.sm" alt="" class="imgSmall">
						</li>
						<li></li>
					</ul>
					<span class="next">
						<img src="../../public/img/detail/right.png" :class="{disabled:rightDisabled}" @click="move(+1)" id="btnRight">
					</span>
				</div>
				<div class="trueHouse">
					<div class="true">
						<a href="javascript:;">
						<img src="../../public/img/detail/zl.png" alt="真实房源">
					</a>
					<a href="javascript:;">真实存在，真实在售，真实价格，真实图片，假一赔百元</a>
					</div>
					<div class="VR">
						<a href="javascript:;">
							<img src="../../public/img/detail/vr.png" alt="vr看房">
						</a>
						<a href="javascript:;">本房源已支持VR看房，在线看房，省时省力</a>
					</div>
				</div>
			</div>
			<div class="content">
				<div class="price">
					<span class="total">137</span>
					<span class="unic">万</span>
				<div class="text">
						<span class="priceValue">11556.3</span>
						<i>元/平米</i>
						<p>
							<a href="javascipt:;" >首付及税率情况请咨询经纪人</a>
						</p>
					</div>
				<div class="houseInfo">
					<div class="room">
						<div class="mainInfo">3室2厅</div>
						<div class="subInfo">高楼层/共11层</div>
					</div>
					<div class="room">
						<div class="mainInfo">南北</div>
						<div class="subInfo">平层/简装</div>
					</div>
					<div class="room">
						<div class="mainInfo">118.5平方米</div>
						<div class="subInfo">2011年建/板塔结合</div>
					</div>
				</div>	
					<div class="promise">
						<img src="https://img.ljcdn.com/beike/bikanhaofang/1559536880827.png" alt="必看好房" class="bikan">
						<a href="javascript:;">诚心卖,省心买</a>
					</div>
				<div class="aroundInfo">
					<div class="aroundName">
						<span>小区名称</span>
						<a href="javascript:;">海荣豪佳花园</a>
						<a href="javascript:;">地图</a>
					</div>
					<div class="aroundName">
						<span>所在区域</span>
						<a href="javascript:;">未央</a>
						<a href="javascript:;">经开</a>
					</div>
					<div class="aroundName">
						<span>看房时间</span>
						<a href="javascript:;">可看时间请咨询经纪人</a>
					</div>
					<div class="aroundName">
						<span>贝壳编号</span>
						<a href="javascript:;">19041418610100122650
							</a>
						<a href="javascript:;">举报</a>
					</div>
				</div>
				<div class="contact">
					<a href="javascript:;" class="pic">
						<img src="https://img.ljcdn.com/usercenter/images/uc_ehr_avatar/0b549998-2de5-4901-9af3-3fbcbf67da00.jpg.480x640.jpg" alt="经理">
					</a>
					<div class="contactInfo">
						<a href="javascript:;" class="name">王岩</a>
						<a href="javascript:;" class="title">德祐</a>
						<p><a href="javascript:;" class="desc">我带看过本房，清楚本房特色</a></p>
					</div>
				</div>
				<div class="seek">
					<div class="phone">
							4000462015
							<span>转</span>
							9544
					</div>
					<div class="online">
						<img src="../../public/img/detail/message.png" alt="消息" class="ms">
						<a href="javascript:;">在线问</a>
					</div>
				</div>
				</div>
			</div>
		</div>
		<!-- 下面详细描述部分 -->
		<div class="basicInfo">
			<div class="title">房源基本信息</div>
			<div class="descInfo">
				<div class="name">基本属性</div>
				<div class="intro">
					<ul>
						<li>
							<span class="label">房屋户型</span>
							3室两厅2卫
						</li>
						<li>
							<span class="label">房屋户型</span>
							3室两厅2卫
						</li>
						<li>
							<span class="label">房屋户型</span>
							3室两厅2卫
						</li>
						<li>
							<span class="label">房屋户型</span>
							3室两厅2卫
						</li>
						<li>
							<span class="label">房屋户型</span>
							3室两厅2卫
						</li>
						<li>
							<span class="label">房屋户型</span>
							3室两厅2卫
						</li>
					</ul>
					
			</div>
			<div class="name">基本属性</div>
			<div class="intro">
				<ul>
					<li>
						<span class="label">房屋户型</span>
						3室两厅2卫
					</li>
					<li>
						<span class="label">房屋户型</span>
						3室两厅2卫
					</li>
					<li>
						<span class="label">房屋户型</span>
						3室两厅2卫
					</li>
					<li>
						<span class="label">房屋户型</span>
						3室两厅2卫
					</li>
					<li>
						<span class="label">房屋户型</span>
						3室两厅2卫
					</li>
					<li>
						<span class="label">房屋户型</span>
						3室两厅2卫
					</li>
				</ul>
				
		</div>
			</div>
			<div class="extr">注：房源所示“房屋用途、交易权属、建成年代、产权年限、建筑结构”仅供参考，购房时请以房本信息为准。</div>
			<!-- 本房源特色 -->
		<div class="newInfo">
			<div class="title">本房源特色</div>
			<div class="style">
				<div class="name">房源特色</div>
				<div class="content">
					<a href="javascript:;">
						<img src="https://img.ljcdn.com/beike/bikanhaofang/1559536880827.png" alt="必看好房" class="bikan">
					</a>
					<a href="javascript:;" class="spc">满五年</a>
					<a href="javascript:;" class="spc">随时看房</a>
					<a href="javascript:;" class="spc">地铁</a>
				</div>
			</div>
		    <div class="style">
				<div class="name">核心卖点</div>
				<div class="content">
					<p>房子南北朝向大三室，产证在手，看房方便</p>
					</div>
			</div>
			<div class="style">
				<div class="name">小区介绍</div>
				<div class="content">
					<p>海荣豪佳花园"位于北郊西安经济技术开发区内，占地103亩。由5000平方米的广场，1栋多层，5栋12层连体小高层，3栋18层高层、4栋25层超高层组成。呈北高南低走势。建筑布局严谨规整，竭力体现人与自然的和谐色彩。楼体外立面由彩色华陶面砖有序排列组成</p>
				</div>
			</div>
			<div class="style">
				<div class="name">交通出行</div>
				<div class="content">
					<p>小区门口有50路、108、207、等多条公交线路，步行五百米即可到达凤城五路地铁口，不管去哪都很方便</p>
				</div>
			</div>
			<div class="style">
				<div class="name">周围配套</div>
				<div class="content">
					<p>大学:西安 长安大学渭水校区 交通职业技术学院 商场: 世纪金花 沃尔玛 奥斯卡影城 医院:长安医院 凤城医院 邮局:中国邮政 银行:建行 工行 西安银行 中信 浦发 招商 邮政。</p>
				</div>
			</div>
			<div class="extr">注：1.房源介绍中的周边配套、在建设施、规划设施、地铁信息、绿化率、得房率、容积率等信息为通过物业介绍、房产证、实勘、政府官网等渠道获取，因时间、政策会发生变化，与实际情况可能略有偏差，房源介绍仅供参考。 2.房源介绍中与距离相关的数据均来源于百度地图。 3.土地使用起止年限详见业主土地证明材料或查询相关政府部门的登记文件。</div>
		</div>
		<!-- 经纪人带看 -->
		<div class="comment_daikan">
			<div class="head_daikan">
				<div class="title">经纪人带看反馈</div>
				<div class="filter">
					<a href="javascript:;">
						<span class="more">带看更多</span>
					</a>
					<a href="javascript:;">
							<span class="new">最新</span>
						</a>
				</div>
			</div>
			<div class="itemClear">
				<div class="f1">
					<div class="itemTitle">
							<a href="javascript:;">
									<img src="https://img.ljcdn.com/usercenter/images/uc_ehr_avatar/0b549998-2de5-4901-9af3-3fbcbf67da00.jpg.480x640.jpg" class="jinji" alt="图呢">
								</a>
						<div class="name">
							<a href="javascript:;">王岩</a></div>
						<span class="brand">百年行</span>
						<img src="../../public/img/detail/shangbiao.png" alt="商标" class="shangbiao">
						<span class="phone">4008030717转85662</span>
						<div class="online">
							<img src="../../public/img/detail/message.png" alt="" class="ms">
							<a href="javascript:;">在线问</a>
						</div>
						<div class="use">有用(11)</div>
					</div>
					<div class="desc">
							我是百年行海璟时代店王岩，带看过此房，对此房最了解。   此房满三满二，全明南北格局好，位置安静，通风采光，配套齐.. 户型介绍： 小区为2008年交房，小区环境好，配套设施完善，到地铁500米左右.交通便利。想看附近房的都可以联系我。	
					</div>
					<div class="record">
							2019/08/10
                            带客户看过此房，共带看本房10次
					</div>
				</div>
			</div>
			<div class="itemClear">
			<div class="f1">
				<div class="itemTitle">
					<a href="javascript:;">
							<img src="https://img.ljcdn.com/usercenter/images/uc_ehr_avatar/0b549998-2de5-4901-9af3-3fbcbf67da00.jpg.480x640.jpg" class="jinji" alt="图呢">
						</a>
					<div class="name">
						<a href="javascript:;">王岩</a></div>
					<span class="brand">百年行</span>
					<img src="../../public/img/detail/shangbiao.png" alt="商标" class="shangbiao">
					<span class="phone">4008030717转85662</span>
					<div class="online">
						<img src="../../public/img/detail/message.png" alt="" class="ms">
						<a href="javascript:;">在线问</a>
					</div>
					<div class="use">有用(11)</div>
				</div>
				<div class="desc">
						我是百年行海璟时代店王岩，带看过此房，对此房最了解。   此房满三满二，全明南北格局好，位置安静，通风采光，配套齐.. 户型介绍： 小区为2008年交房，小区环境好，配套设施完善，到地铁500米左右.交通便利。想看附近房的都可以联系我。	
				</div>
				<div class="record">
						2019/08/10
						带客户看过此房，共带看本房10次
				</div>
			</div>
		</div>
		<div class="itemClear">
			<div class="f1">
				<div class="itemTitle">
					<a href="javascript:;">
						<img src="https://img.ljcdn.com/usercenter/images/uc_ehr_avatar/0b549998-2de5-4901-9af3-3fbcbf67da00.jpg.480x640.jpg" class="jinji" alt="图呢">
					</a>
				<div class="name">
					<a href="javascript:;">王岩</a></div>
				<span class="brand">百年行</span>
				<img src="../../public/img/detail/shangbiao.png" alt="商标" class="shangbiao">
				<span class="phone">4008030717转85662</span>
				<div class="online">
					<img src="../../public/img/detail/message.png" alt="" class="ms">
					<a href="javascript:;">在线问</a>
				</div>
				<div class="use">有用(11)</div>
			</div>
			<div class="desc">
					我是百年行海璟时代店王岩，带看过此房，对此房最了解。   此房满三满二，全明南北格局好，位置安静，通风采光，配套齐.. 户型介绍： 小区为2008年交房，小区环境好，配套设施完善，到地铁500米左右.交通便利。想看附近房的都可以联系我。	
			</div>
			<div class="record">
					2019/08/10
					带客户看过此房，共带看本房10次
			</div>
			</div>
			</div>
		</div>
		<!-- 该户型分间 -->
		<div class="layout">
			<div class="title">该户型分间</div>
			<div class="code">
				<div class="ke_code">
					<a href="javascript:;">
						<img src="https://img.ljcdn.com/usercenter/images/uc_ehr_avatar/0b549998-2de5-4901-9af3-3fbcbf67da00.jpg.480x640.jpg" class="jinji" alt="经纪人">
					</a>
				</div>
				<div class="code_info">
					王岩 
					<span>本房信息由我维护</span>
				</div>
				<div class="code_card">
					<a href="javascript:;">
						<img src="../../public/img/detail/shangbiao.png" alt="商标" class="shangbiao">
					</a>
				</div>
				<div class="code_desc">
					<div class="code_message">
						<a href="javascript:;">
							<img src="../../public/img/detail/message.png" alt="消息" class="ms">
						</a>
					</div>
					<div class="phone">4006163074-1206</div>
				</div>
			</div>
			<div class="content">
				<div class="imgdiv">
					<img src="../../public/img/detail/huxing.jpg" alt="">
				</div>
					<div class="desc">
						<div class="row">
							<div class="col">客厅</div>
							<div class="col">37.26平方米</div>
							<div class="col">北</div>
							<div class="col">飘窗</div>
						</div>
						<div class="row">
							<div class="col">客厅</div>
							<div class="col">37.26平方米</div>
							<div class="col">北</div>
							<div class="col">飘窗</div>
						</div>
						<div class="row">
							<div class="col">客厅</div>
							<div class="col">37.26平方米</div>
							<div class="col">北</div>
							<div class="col">飘窗</div>
						</div>
						<div class="row">
							<div class="col">客厅</div>
							<div class="col">37.26平方米</div>
							<div class="col">北</div>
							<div class="col">飘窗</div>
						</div>
					</div>
				</div>
			<p>注：户型图标注的面积不同于房本面积，是实地测量后计算的地板面积，存在测量误差，购房请以房本面积为准。</p>
		</div>
		<h2>周边设施</h2>
		<!--地图查询周边设施-->
		<div class="map_arround">
			<map_surround />
		</div>	
		<!-- 此房源图片 -->
		<div class="content_pic">
			<div class="title">此房源图片</div>
			<div class="list">
				<div class="imgdiv">
					<img src="../../public/img/detail/descBig2.jpg" alt="">
					<span class="name">客厅</span>
				</div>
				<div class="imgdiv">
					<img src="../../public/img/detail/descBig3.jpg" alt="">
					<span class="name">户型图</span>
				</div>
				<div class="imgdiv">
					<img src="../../public/img/detail/descBig4.jpg" alt="">
					<span class="name">房型A</span>
				</div>
				<div class="imgdiv">
					<img src="../../public/img/detail/descBig5.jpg" alt="">
					<span class="name">房型B</span>
				</div>
				<div class="imgdiv">
					<img src="../../public/img/detail/descBig6.jpg" alt="">
					<span class="name">房型C</span>
				</div>
				<div class="imgdiv">
					<img src="../../public/img/detail/descBig7.jpg" alt="">
					<span class="name">厨房</span>
				</div>
				<div class="imgdiv">
					<img src="../../public/img/detail/descBig7.jpg" alt="">
					<span class="name">卫生间</span>
				</div>
			</div>
			<div class="more">查看更多房间</div>
		</div>
		<!-- 近30日看房记录 -->
		<div class="see">
			<div class="title">近30日看房记录</div>
			<div class="content">
				<div class="header">
					<div>带看时间</div>
					<div>带看经纪人</div>
					<div>咨询</div>
					<div>带看量</div>
				</div>
				<div class="row">
					<div class="mytime">2019-7-10</div>
					<div class="agentname">
						<div class="imgdiv">
							<a href="javascript:;">
								<img src="https://img.ljcdn.com/usercenter/images/uc_ehr_avatar/0b549998-2de5-4901-9af3-3fbcbf67da00.jpg.480x640.jpg" class="jinji" alt="图片">
							</a>
						</div>
						<div class="name">
								<a href="javascript:;">王岩</a></div>
							<span class="brand">百年行</span>
							<img src="../../public/img/detail/shangbiao.png" alt="商标" class="shangbiao">
					</div>
					<div class="phone">4008010175转73355</div>
					<div class="time">1次</div>
				</div>
				<div class="row">
					<div class="mytime">2019-7-10</div>
					<div class="agentname">
						<div class="imgdiv">
							<a href="javascript:;">
								<img src="https://img.ljcdn.com/usercenter/images/uc_ehr_avatar/0b549998-2de5-4901-9af3-3fbcbf67da00.jpg.480x640.jpg" class="jinji" alt="图片">
							</a>
						</div>
						<div class="name">
							<a href="javascript:;">王岩</a></div>
							<span class="brand">百年行</span>
							<img src="../../public/img/detail/shangbiao.png" alt="商标" class="shangbiao">
					</div>
					<div class="phone">4008010175转73355</div>
					<div class="time">1次</div>
				</div>
				<div class="row">
					<div class="mytime">2019-7-10</div>
						<div class="agentname">
							<div class="imgdiv">
								<a href="javascript:;">
									<img src="https://img.ljcdn.com/usercenter/images/uc_ehr_avatar/0b549998-2de5-4901-9af3-3fbcbf67da00.jpg.480x640.jpg" class="jinji" alt="图片">
								</a>
							</div>
						<div class="name">
							<a href="javascript:;">王岩</a></div>
						<span class="brand">百年行</span>
				<img src="../../public/img/detail/shangbiao.png" alt="商标" class="shangbiao">
				</div>
				<div class="phone">4008010175转73355</div>
				<div class="time">1次</div>
			</div>
			<div class="row">
				<div class="mytime">2019-7-10</div>
				<div class="agentname">
					<div class="imgdiv">
						<a href="javascript:;">
							<img src="https://img.ljcdn.com/usercenter/images/uc_ehr_avatar/0b549998-2de5-4901-9af3-3fbcbf67da00.jpg.480x640.jpg" class="jinji" alt="图片">
						</a>
					</div>
					<div class="name">
						<a href="javascript:;">王岩</a></div>
					<span class="brand">百年行</span>
					<img src="../../public/img/detail/shangbiao.png" alt="商标" class="shangbiao">
				</div>
				<div class="phone">4008010175转73355</div>
				<div class="time">1次</div>
			</div>
			</div>
		</div>
		</div>
	</div>  
	<div class="recommend">
		<recommend />
	</div>
	<my-footer /> 
    </div>
</template>
<script>
import recommend from "../components/Recommend"
export default {
    data() {
        return {
			pics:[
						{
						lg:require("../../public/img/detail/descBig1.jpg"),
						sm:require("../../public/img/detail/descSmall1.jpg")
						},
						{
						lg:require("../../public/img/detail/descBig2.jpg"),
						sm:require("../../public/img/detail/descSmall2.jpg")
						},
						{
						lg:require("../../public/img/detail/descBig3.jpg"),
						sm:require("../../public/img/detail/descSmall3.jpg")
						},		
						{
						lg:require("../../public/img/detail/descBig4.jpg"),
						sm:require("../../public/img/detail/descSmall4.jpg")
						},	
						{
						lg:require("../../public/img/detail/descBig5.jpg"),
						sm:require("../../public/img/detail/descSmall5.jpg")
						},		
			],
			i:0, //记录当前正在显示第几张图片
			ulStyle:{
				//width:0,
				//"margin-left":0,
				transition:""
			},
			times:0, //记录左移的次数
			//"margin-left"=-times*图片宽度
			maskShow:false,
			maskStyle:{
				left:0,
				top:0
			}
        }
    },
	computed:{
		bgPosition(){
     		var left=parseInt(this.maskStyle.left);
     	    var top=parseInt(this.maskStyle.top);
      			return `-${left*1/2}px -${top*1/2}px`
    	},
		leftDisabled(){
			return this.times=0;
		},
		rightDisabled(){
			return this.pics.length<4||this.times==this.pics.length-4;
		},	
	},
	created(){
		//在页面加载时,发送一次请求,初始化data中的数据
		this.load();
	},
	/**
	watch:{
		times(){
			//当times变化时,自动修改ul的margin-left
			this.ulStyle["margin-left"]=-this.times*120+"px";
		},
		pics(){
			//当pics变化时,自动修改ul的width 
			this.ulStyle.width=this.pics.length*120+"px";
		}
	}, */
	mounted () {//给window添加一个滚动滚动监听事件
  window.addEventListener('scroll', this.handleScroll)
},

methods:{
	maskMove(e){
      var left=e.offsetX-160;
      var top=e.offsetY-170;
      if(left<0){left=0}
      else if(left>700){left=700}
      if(top<0){top=0}
      else if(top>400){top=400}
      top+="px";
      left+="px";
      this.maskStyle={left,top}
    },
	
    toggle(){
      this.maskShow=!this.maskShow;
    },

	move(i){
		//如果点的是左边按钮,且左边按钮没有禁用时,或者右边按钮
		if((i=-1&&this.leftDisabled==false)||(i==1&&this.rightDisabled==false)){
			this.times+=i;
		if(this.times<0){
			this.times=0
		}else if(this.times>this.pics.length-2){
			this.times=this.pics.length-2
		}
	  }
	},
	load(){//封装发送ajax请求和初始化数据的方法,用于反复调用
		if(this.lid){
			//在发送请求之前清除transition 
			this.Ulstyle.transition="";
			this.axios.get(
				"http://localhost:8080/Details",{
					params:{lid:this.lid
					}
				}
			).then(res=>{
				var pics=result.data;
				this.pics=pics;
				//每次重新加载页面后,都要把移动次数归零
				this.times=0;
				this.i=0;
				setTimeout(()=>{
					this.ulStyle.transition="margin-left .5s linear";
				},50)
			})
		}
	},
	//当鼠标进入每个li时,修改data中i变量的值,为当前li的下标
	changei(i){
		this.i=i;
	},
  	handleScroll () { //改变元素#searchBar的top值
    var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
	//console.log("这是scrollTop输出的值"+scrollTop);
    var offsetTop = document.querySelector('#searchBar').offsetTop;
	//console.log("这是offsetTop输出的值"+offsetTop);
    if(scrollTop<=1000){
      offsetTop =-Number(scrollTop);
      document.querySelector('#searchBar').style.top = offsetTop+'px'; 
	  document.querySelector('#searchBar').style.opacity = 0;
    }else{
      document.querySelector('#searchBar').style.top = '0px';
	  document.querySelector('#searchBar').style.opacity = 1;
    }
  },

},
destroyed () {//离开该页面需要移除这个监听的事件
  window.removeEventListener('scroll', this.handleScroll)
},
components:{recommend},
}
</script>
<style>
@import url("../assets/css/details.css");
</style>