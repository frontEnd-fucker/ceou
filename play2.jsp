<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="">
	<title>中国企业在线-视频播放</title>
	<link href="css/normalize.css" rel="stylesheet">
	<link href="css/base2.css" rel="stylesheet">
	<link href="css/play2.css" rel="stylesheet">
	<script src="js/vendor/modernizr-2.7.1.min.js"></script>
</head>

<body id="play2">

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">

	<!-- 视频播放模块 -->
	<div class="mod-play">
		<h2 class="title">如何获取大客户</h2>

		<!-- 播放区域 -->
		<div class="p_area fl">
			<script src="http://p.bokecc.com/player?vid=16F70EE580B0B8209C33DC5901307461&siteid=96BC359D1BE46EA9&autoStart=false&width=675&height=490&playerid=BF73B0FF969BF52C&playertype=1" type="text/javascript"></script>			
		</div>

		<!-- 热门推荐 -->
		<div class="p_recommend fr">
			<h3>热门推荐</h3>
			<ul class="p_recommend-list">
				<li class="recommend-item">
					<a href="#">
						<span class="hd"><img src="whimg/play2/recommend-hd.jpg"></span>
						<span class="course-name">如何获取大客户</span>
						<span class="teacher">讲师：<em>XXX</em></span>
						<span class="start"><i class="icon-start"></i>开始学习</span>
					</a>
				</li>	
				<li class="recommend-item">
					<a href="#">
						<span class="hd"><img src="whimg/play2/recommend-hd.jpg"></span>
						<span class="course-name">如何获取大客户</span>
						<span class="teacher">讲师：<em>XXX</em></span>
						<span class="start"><i class="icon-start"></i>开始学习</span>
					</a>
				</li>
				<li class="recommend-item">
					<a href="#">
						<span class="hd"><img src="whimg/play2/recommend-hd.jpg"></span>
						<span class="course-name">如何获取大客户</span>
						<span class="teacher">讲师：<em>XXX</em></span>
						<span class="start"><i class="icon-start"></i>开始学习</span>
					</a>
				</li>
				<li class="recommend-item">
					<a href="#">
						<span class="hd"><img src="whimg/play2/recommend-hd.jpg"></span>
						<span class="course-name">如何获取大客户</span>
						<span class="teacher">讲师：<em>XXX</em></span>
						<span class="start"><i class="icon-start"></i>开始学习</span>
					</a>
				</li>																				
			</ul>
		</div>		
	</div>
	<!-- end 视频播放模块 -->

	<!-- 标签页区域 -->
	<div class="tab">
		<ul class="tab-nav">
			<li class="curr"><a href="#">课程选集</a></li>
			<li><a href="#">课程大纲</a></li>
			<li><a href="#">老师简介</a></li>
			<li class="last"><a href="#">观看讲义</a></li>
		</ul>
		<div class="tab-content"></div>
	</div>
	<!-- end 标签页区域 -->
</div>
<!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />
	
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/scirpt>')</script>
<script src="js/base.js"></script>	
</body>
</html>