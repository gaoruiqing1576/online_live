<template>
   <div class="footer">
		<div class="wrapper">
			<!-- title -->
			<div class="f-title">
				<div class="fl">
					<ul>
						<li><a href="#" target="_blank">网站地图</a></li>
						<li><a href="#" target="_blank">了解贝壳</a></li>
					</ul>
				</div>
				<a href="#" class="fr req_btn">官方客服咨询</a>
			</div>
			<!-- detail -->
			<div class="lianjia-link-box">
				<ul class="fl">
					<li class="tab t1">
						<a href="#">二手房</a>
						<div class="link-list dropdown-one">
							<ul>
								<li><a href="#">北京二手房</a></li>
								<li><a href="#">广州二手房</a></li>
								<li><a href="#">深圳二手房</a></li>
								<li><a href="#">天津二手房</a></li>
								<li><a href="#">佛山二手房</a></li>
								<li><a href="#">东莞二手房</a></li>
								<li><a href="#">西安二手房</a></li>
							</ul>
						</div>
					</li>
					<li class="tab t2">
						<a href="#">热门小区</a>
						<div class="link-list dropdown-two">
							<ul>
								<li><a href="#">文化小区</a></li>
								<li><a href="#">向民社区</a></li>
								<li><a href="#">液压件厂小区</a></li>
								<li><a href="#">自强小区</a></li>
								<li><a href="#">东五路2号</a></li>

								<li><a href="#">铭湖景园</a></li>
							</ul>
						</div>
					</li>
					<li class="tab t3">
						<a href="#">热门房产</a>
						<div class="link-list dropdown-three">
							<ul>
								<li><a href="#">北京房产</a></li>
								<li><a href="#">成都房产</a></li>
								<li><a href="#">重庆房产</a></li>
								<li><a href="#">广州房产</a></li>
								<li><a href="#">惠州房产</a></li>
								<li><a href="#">杭州房产</a></li>
								<li><a href="#">南京房产</a></li>

							</ul>
						</div>
					</li>
					<li class="tab t4">
						<a href="#">热门新房</a>
						<div class="link-list dropdown-four">
							<ul>
								<li><a href="#">北京新房</a></li>
								<li><a href="#">长春新房</a></li>
								<li><a href="#">成都新房</a></li>
								<li><a href="#">重庆新房</a></li>
								<li><a href="#">长沙新房</a></li>
								<li><a href="#">大连新房</a></li>

							</ul>
						</div>
					</li>
					<li class="tab t5">
						<a href="#">合作与友情链接</a>
						<div class="link-list dropdown-five">
							<ul>
								<li><a href="#">马鞍山房产网</a></li>
								<li><a href="#">西安兼职网</a></li>
								<li><a href="#">无锡装饰公司</a></li>
								<li><a href="#">西安兼职</a></li>
								<li><a href="#">珠海新楼盘</a></li>
								<li><a href="#">唐山装修网</a></li>

							</ul>
						</div>
					</li>
					<li class="tab t6">
						<a href="#">贝壳规则中心</a>
						<div class="link-list dropdown-six">
							<ul>
								<li><a href="#">贝壳用户隐私政策</a></li>
								<li><a href="#">贝壳用户服务协议</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
			<!-- logo -->
			<div class="partner-logo">
				<li>
					<img src="../../public/img/footer/zsyh.png">
				</li>
				<li>
					<a href="#" target="_blank"><img src="../../public/img/footer/zxyh.png"></a>			
				</li>
			</div>
			<!-- bottom-->
			<div class="bottom">
				<div class="copyright fl">天津小屋信息科技有限公司 | 地址：天津经济技术开发区南港工业区综合服务区办公楼C座一层112室09单元 | 电话：10106188 | 津ICP备18000836号-1 | © Copyright 2019 ke.com版权所有 | 营业执照 | ICP证 </div>
				<div class="copyright f2">违法和不良信息举报电话：010-86440676 | 违法和不良信息举报邮箱：jubaoyouxiang@ke.com</div>
				<div class="copyright f3">
					<img src="../../public/img/footer/beian.png" alt="">
				津公网安备 12019002000223号</div>
			</div>
		</div>
	</div>
</template>
<script>
export default {
    data(){
        return{
            
        }
    },
}
</script>
<style scoped>
	*{margin:0;padding:0;box-sizing:border-box;}
	.footer{
		clear:both;
		width:100%;
		height:437px;
	}
	.footer .wrapper{
		width:1150px;
		margin:0 auto;
		border-top:1px solid #e4e6f0;
	}
	.footer .f-title{
		height:73px;
		padding:28px 0 20px;
		line-height:25px;
		font-size:16px;
		font-weight:600;
		overflow:hidden;
	}
	.fl{
		float:left;
	}
	.footer .f-title .fl li{
		float:left;
		list-style:none;
		margin:0;
		padding:0;
	}
	.footer .f-title .fl li a{
		color:#101d37;
		margin-right:15px;
		text-decoration:none;
	}
	.footer .f-title .fr{
		color:#3072f6;
		margin-left:20px;
		float:right;
		text-decoration:none;
	}
	/*detail*/
	.lianjia-link-box{
		width:1150px;
		height:150px;
	}
	.lianjia-link-box .f1{
		width:1000px;
	}
	.lianjia-link-box ul{
		list-style:none;
	}
	.lianjia-link-box ul li{
		float:left;
		position:relative;
		padding:0px 6px;
	}
	.lianjia-link-box ul a{
		text-decoration:none;
		color:#707787;
		margin:0 65px 10px 0;
	}
	.lianjia-link-box ul.fl li.tab a:hover{
		color:#101d37;
	}
	.lianjia-link-box ul li div{
		width:200px;
		display:block; 
		overflow:hidden;
		position:absolute;
		top:26px;
		left:0px;
		font-size:15px;
	}
	/*logo*/
	.footer .partner-logo{
		margin-top:24px;
		overflow:hidden;
		list-style:none;
	}
	.footer .partner-logo li{
		float:left;
		margin-right:40px;
		background:#fff;
	}
	.footer .partner-logo li a{
		text-decoration:none;
		cursor:pointer;
	}
	.footer .partner-logo li img{
		display:block;
		height:40px;
		background:#fff;
	}
	/*bottom*/
	.footer .bottom{
		height:80px;
		margin-top:24px;
	}
	.footer .bottom .copyright{
		color:#b7bbc3;
		font-size:14px;
		line-height:20px;
	}
	.footer .bottom .copyright.f3>img{
		vertical-align:top;
	}
</style>