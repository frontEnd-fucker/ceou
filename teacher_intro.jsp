<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="">
	<title>中国企业在线-教师介绍</title>
	<link href="css/normalize.css" rel="stylesheet">
	<link href="css/base2.css" rel="stylesheet">
	<link href="css/teacher_intro.css" rel="stylesheet">
	<script src="js/vendor/modernizr-2.7.1.min.js"></script>
</head>

<body id="teacher_intro">

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">

	<!-- 讲师简介 -->
	<section class="t_intro cf">
		<div class="hd">
			<!-- <img src="whimg/teacher_intro/zhangwen.jpg"> -->
			<img src="whimg/teacher_intro/ph-teacher.jpg">
		</div>
		<div class="bd">
			<h2 class="t_name"><s:property value="secondTB.tname"/></h2>
			<s:property value="secondTB.tintro"/>
		</div>
	</section>

	<!-- 专家课程 -->
	<section class="t_course">
		<h2 class="italic-title">专家课程</h2>
		<ul class="t_course-list cf">
			<s:iterator value="teacherSeriesCourse">
				<li class="t_course-item">
					<div class="top">
						<div class="pd">
							<div class="hd">							
							</div>
							<div class="bd">
								<h3><s:property value="serName"/></h3>
								<p class="cnt"><strong>课程简介：</strong><s:property value="couprofile"/></p>
								<a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>" class="btn-pill btn-pill-small btn-pill-g_yellow fl" href="#">播放课程</a>
								<!-- <a class="btn-pill btn-pill-small btn-pill-g_green fr" href="#">课后练习</a> -->
							</div>
						</div>
					</div>
					<div class="bottom"></div>
				</li>
			</s:iterator>
		
		</ul>		
	</section>

	<!-- 专家活动 -->
	<!-- <section class="t_activity">
		<h2 class="italic-title">专家活动</h2>
		<ul class="activity-list">
			<li><span>2014年4月11号</span>深圳举行XXX活动</li>
			<li><span>2014年4月11号</span>深圳举行XXX活动</li>
			<li><span>2014年4月11号</span>深圳举行XXX活动</li>
		</ul>
	</section>	 -->
</div>
<!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />

<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/scirpt>')</script>
<script src="js/base.js"></script>	
</body>
</html>