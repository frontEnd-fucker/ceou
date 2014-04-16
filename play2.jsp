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
					<div class="pd">
						<div class="hd">
							<a href="#"><img src="whimg/play2/recommend-hd.jpg"></a>
						</div>
						<div class="bd">
							<p class="course-name"><a href="#">如何获取大客户</a></p>
							<p class="teacher">讲师：<a href="#">XXX</a></p>
							<p class="start"><i class="icon-start"></i><a href="#">开始学习</a></p>
						</div>
					</div>
				</li>	
				<li class="recommend-item">
					<div class="pd">
						<div class="hd">
							<a href="#"><img src="whimg/play2/recommend-hd.jpg"></a>
						</div>
						<div class="bd">
							<p class="course-name"><a href="#">如何获取大客户</a></p>
							<p class="teacher">讲师：<a href="#">XXX</a></p>
							<p class="start"><i class="icon-start"></i><a href="#">开始学习</a></p>
						</div>
					</div>
				</li>	
				<li class="recommend-item">
					<div class="pd">
						<div class="hd">
							<a href="#"><img src="whimg/play2/recommend-hd.jpg"></a>
						</div>
						<div class="bd">
							<p class="course-name"><a href="#">如何获取大客户</a></p>
							<p class="teacher">讲师：<a href="#">XXX</a></p>
							<p class="start"><i class="icon-start"></i><a href="#">开始学习</a></p>
						</div>
					</div>
				</li>													
			</ul>
		</div>		
	</div>
	<!-- end 视频播放模块 -->

	<!--  -->
</div>
<!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />
	
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/scirpt>')</script>
<script src="js/base.js"></script>	
</body>
</html>