<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">	
<title>中国企业在线大学</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<link href="css/activity.css" rel="stylesheet" type="text/css">
</head>

<body id="activity">

<jsp:include page="head.jsp" flush="true" />	

<!-- main -->
<div id="main" class="wrapper">

	<!-- slider -->
	<div id="slider">
		<img src="whimg/activity/slice.jpg">
	</div>
	<!-- end slider -->

	<!-- content -->
	<div id="content" class="fl">

		<!-- 最新新闻 -->
		<div class="floor_1">
			<div class="pd">
				<div class="mod-news cf">
					<div class="mod-news-hd">	
						<img src="whimg/activity/top1.jpg">			
					</div>
					<div class="mod-news-bd">
						<h3>最新启动</h3>
						<ul>
							<s:iterator value="activityArtList_1">
								<li><s:property value="artname"/><a onclick="clicks(<s:property value="artid"/>)" href="activity!showArtDetail?artid=<s:property value="artid"/>">[详细]</a></li>
							</s:iterator>
						</ul>
					</div>
				</div>

				<div class="mod-news cf">
					<div class="mod-news-hd">
						<img src="whimg/activity/top2.jpg">							
					</div>
					<div class="mod-news-bd">
						<h3>名师在现场</h3>
						<ul>
							<s:iterator value="activityArtList_2">
								<li><s:property value="artname"/><a onclick="clicks(<s:property value="artid"/>)" href="activity!showArtDetail?artid=<s:property value="artid"/>">[详细]</a></li>
							</s:iterator>
						</ul>
					</div>
				</div>

				<div class="mod-news last cf">
					<div class="mod-news-hd">	
						<img src="whimg/activity/top3.jpg">						
					</div>
					<div class="mod-news-bd">
						<h3>招商在线</h3>
						<ul>
							<s:iterator value="activityArtList_3">
								<li><s:property value="artname"/><a onclick="clicks(<s:property value="artid"/>)" href="activity!showArtDetail?artid=<s:property value="artid"/>">[详细]</a></li>
							</s:iterator>
						</ul>
					</div>
				</div>								
			</div>
		</div>

		<!-- 最新视频 -->
		<div class="floor_2">
			<div class="fl">
				<h2 class="gradient-title">最新视频</h2>
				<div class="pd">
					<div class="player-con">
						<!-- <iframe height=237 width=340 src="http://player.youku.com/embed/XNjg5Mjg0MzI0" frameborder=0 allowfullscreen></iframe> -->
						<a href="activity!showCouDetail?couid=528"><img src="whimg/activity/video_1.jpg"></a>
					</div>
					<p class="player-bottom"><a href="activity!showCouDetail?couid=528">张文-总裁倍增绩效</a></p>
				</div>
			</div>
			<div class="fr">
				<h2 class="gradient-title">最新视频</h2>
				<div class="pd">
					<div class="player-con">
						<!-- <iframe height=237 width=340 src="http://player.youku.com/embed/XNjg5Mjg0MzI0" frameborder=0 allowfullscreen></iframe> -->
						<a href="activity!showCouDetail?couid=530"><img src="whimg/activity/video_2.jpg"></a>
					</div>
					<p class="player-bottom"><a href="activity!showCouDetail?couid=530">王占伟-好父母成就好家庭</a></p>
				</div>				
			</div>			
		</div>

		<!-- 图片直击 -->
		<div class="floor_3">
			<h2 class="gradient-title">图片直击</h2>
			<div class="pd">
				<ul class="img-roller cf">
					<li><a href="#"><img src="whimg/activity/logo-placeholder.jpg"></a></li>
					<li><a href="#"><img src="whimg/activity/logo-placeholder.jpg"></a></li>
					<li><a href="#"><img src="whimg/activity/logo-placeholder.jpg"></a></li>
					<li><a href="#"><img src="whimg/activity/logo-placeholder.jpg"></a></li>
				</ul>
			</div>
		</div>

		<!-- weibo live -->
		<div class="floor_4">
			<div class="pd">
				<iframe width="100%" height="500"  frameborder="0" scrolling="no" src="http://widget.weibo.com/livestream/listlive.php?language=zh_cn&width=0&height=500&uid=1782794271&skin=1&refer=1&appkey=&pic=1&titlebar=1&border=1&publish=1&atalk=1&recomm=0&at=0&atopic=%E4%B8%AD%E5%9B%BD%E4%BC%81%E4%B8%9A%E5%9C%A8%E7%BA%BF%E5%A4%A7%E5%AD%A6&ptopic=%E4%B8%AD%E5%9B%BD%E4%BC%81%E4%B8%9A%E5%9C%A8%E7%BA%BF%E5%A4%A7%E5%AD%A6&dpc=1"></iframe>	
			</div>	
		</div>
	</div>
	<!-- end content -->

	<!-- sidebar -->
	<div id="sidebar" class="fr">

		<!-- 活动信息 -->
		<div class="floor_1">
			<h2 class="gradient-title">活动信息</h2>
			<div class="pd">
				<div class="player-con">
					<!-- <iframe height=168 width=227 src="http://player.youku.com/embed/XNjg5Mjg0MzI0" frameborder=0 allowfullscreen></iframe> -->
					<img src="whimg/activity/logo-placeholder.jpg" style="margin: 10px 0 0 25px;">
				</div>
				<p style="margin: 10px 0"><strong>会议简介：</strong>国内首家提出“以岗定培训”在线培训机构...<a style="color: #64b23c;" href="http://www.ceou.com.cn/activity!showArtDetail?artid=252">[详细]</a></p>
				<p><strong>活动时间：</strong>2014年3月29-31日</p>
				<p><strong>活动地点：</strong>深圳福田区福朋喜来登大酒店</p>
				<p><strong>主办单位：</strong>倍数增长教育集团</p>
				<p><strong>协办单位：</strong>深圳市倍增科技有限公司</p>
				<p><strong>独家门户支持：</strong></p>
			</div>
		</div>

		<!-- 推荐讲师 -->
		<div class="floor_2">
			<h2 class="gradient-title">推荐讲师</h2>
			<div class="pd">
				<ul class="actiWeibo-list">
					<li><a href="http://www.ceou.com.cn/teacher!showCouByTeacher?thid=10&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity/1.jpg">程社明</a></li>
					<li><a href="http://www.ceou.com.cn/teacher!showCouByTeacher?thid=15&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity/2.jpg">邹中棠</a></li>
					<li><a href="http://www.ceou.com.cn/teacher!showCouByTeacher?thid=1&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity/3.jpg">艾志鹏</a></li>
					<li><a href="http://www.ceou.com.cn/teacher!showCouByTeacher?thid=4&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity/4.jpg">赵喜刚</a></li>
					<li><a href="http://www.ceou.com.cn/teacher!showCouByTeacher?thid=13&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity/5.jpg">严世华</a></li>
					<li><a href="http://www.ceou.com.cn/teacher!showCouByTeacher?thid=14&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity/6.jpg">张文</a></li>
					<li><a href="http://www.ceou.com.cn/teacher!showCouByTeacher?thid=12&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity/7.jpg">王占伟</a></li>
					<li><a href="http://www.ceou.com.cn/teacher!showCouByTeacher?thid=7&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity/8.jpg">王风范</a></li>
					<li><a href="http://www.ceou.com.cn/teacher!showCouByTeacher?thid=11&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity/9.jpg">红智博</a></li>
				</ul>
			</div>
		</div>

		<!-- weibo关注 -->
		<div class="floor_3">
			<h2 class="gradient-title">微博关注</h2>
			<div class="pd">
				<ul class="actiWeibo-list" style="width: 240px;	">
					<li><a href="http://weibo.com/512566567"><img src="img/wb/wangzhanwei.jpg">王占伟<i class="auth-icon"></i></a><a href="http://weibo.com/512566567" class="actiFollow-btn"></a></li>
					<li><a href="http://weibo.com/3y10"><img src="img/wb/zhanwen.jpg">张文<i class="auth-icon"></i></a><a href="http://weibo.com/3y10" class="actiFollow-btn"></a></li>
					<li><a href="http://weibo.com/512566567"><img src="img/wb/hongzhibo.jpg">红智博<i class="auth-icon"></i></a><a href="http://weibo.com/512566567" class="actiFollow-btn"></a></li>
					<li><a href="http://weibo.com/512566567"><img src="img/wb/chengsheming.jpg">程社明<i class="auth-icon"></i></a><a href="http://weibo.com/512566567" class="actiFollow-btn"></a></li>
					<li><a href="http://weibo.com/512566567"><img src="img/wb/zouzhongtang.jpg">邹中棠<i class="auth-icon"></i></a><a href="http://weibo.com/512566567" class="actiFollow-btn"></a></li>
					<li><a href="http://weibo.com/512566567"><img src="img/wb/zhaoxigang.jpg">赵喜刚<i class="auth-icon"></i></a><a href="http://weibo.com/512566567" class="actiFollow-btn"></a></li>
					<li><a href="http://weibo.com/zrgy"><img src="img/wb/zhaori.jpg">照日格图<i class="auth-icon"></i></a><a href="http://weibo.com/512566567" class="actiFollow-btn"></a></li>
					<li><a href="http://weibo.com/512566567"><img src="img/wb/aizhipeng.jpg">艾志朋<i class="auth-icon"></i></a><a href="http://weibo.com/512566567" class="actiFollow-btn"></a></li>
					<li><a href="http://weibo.com/512566567"><img src="img/wb/zhanjiuyuan.jpg">张九元<i class="auth-icon"></i></a><a href="http://weibo.com/512566567" class="actiFollow-btn"></a></li>
				</ul>
			</div>
		</div>

		<!-- 活动议程 -->
		<div class="floor_4">
			<h2 class="gradient-title">活动议程</h2>
			<div class="pd">
				<p>启动仪式【3月29日14：00-14：40】</p>
				<p class="green-txt">1)	汪建宏老师发言（14:00-14:15）</p>
				<p class="green-txt">2) 中国企业在线大学产品PPT播放展示（14:15-14:20）</p>
				<p class="green-txt">3)	揭幕仪式（14：20-14：40）</p>
				<p>现场招商【3月29日14：50-17：00】</p>
				<p class="green-txt">1)	张文老师发言（14:50-15:10）</p>
				<p class="green-txt">2)	第一轮中国企业在线大学各地区经营优先权拍卖。（15：10-15：30）</p>
				<p class="green-txt">3)	张文老师现场疑难解答。（15：30-16：00）</p>
				<p class="green-txt">4)	第二轮中国企业在线大学各地区经营优先权拍卖。（16：00-16：20）</p>
				<p class="green-txt">5)	嘉宾代表讲话（15：40-15：50）。（备选嘉宾：深圳华为顾问田涛、IDG资本李丰、原蒙牛集团孙先红）</p>	
				<p class="green-txt">6)	张文老师宣布大会结束。（16：20-16：30）</p>																		
			</div>
		</div>
	</div>
	<!-- end sidebar -->

	<div class="clear-both"></div>

	<!-- 嘉宾代表 -->
	<div class="floor-bottom">
		<h2 class="gradient-title">嘉宾代表</h2>
		<div class="pd">
			<div id="marquee">
				<div class="marquee-con">
					<ul id="marquee_1" class="img-roller cf">
						<li><img src="whimg/activity/guest_1.jpg">《创业家》牛文文</li>
						<li><img src="whimg/activity/guest_2.jpg">IDG资本李丰</li>
						<li><img src="whimg/activity/guest_3.jpg">博雅互动张伟</li>
						<li><img src="whimg/activity/guest_4.jpg">鼎晖风投焦震</li>		
						<li><img src="whimg/activity/guest_5.gif">真格基金李祝捷</li>
						<li><img src="whimg/activity/guest_6.gif">郝鸿峰</li>
						<li><img src="whimg/activity/guest_7.gif">人人猎头王雨豪</li>
						<li><img src="whimg/activity/guest_8.gif">深圳华为顾问田涛</li>	
						<li><img src="whimg/activity/guest_9.gif">十月妈咪赵浦</li>
						<li><img src="whimg/activity/guest_10.gif">万兴软件吴太兵</li>
						<li><img src="whimg/activity/guest_11.gif">原蒙牛集团孙先红</li>													
					</ul>	
					<ul id="marquee_2" class="img-roller cf"></ul>
				</div>
			</div>			
		</div>
	</div>
	
</div>
<!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />

<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/activity.js"></script>
<script src="js/base.js"></script>
</body>
</html>