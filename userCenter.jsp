<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>个人中心</title>

	<link href="css/normalize.css" rel="stylesheet">
	<!-- <link href="css/base.css" rel="stylesheet"> -->
	<link href="css/userCenter.css" rel="stylesheet">
	<script src="js/vendor/modernizr-2.7.1.min.js"></script>
</head>

<body id="userCenter">

<!-- header -->	
<header>
	<div class="wrapper">
		<div class="fl">欢迎来到中国企业在线大学</div>
		<div class="fr">
			<a class="avatar" href="personal!show"><img src="<s:property value="perBean.smallpic"/>"></a>
			<a class="user-name" href="#"><s:property value="perBean.name"/></a>
			<span>|</span>
			<a class="log-out" href="user!outLogin">退出</a>
		</div>
	</div>	
</header>	
<!-- end header -->

<!-- nav -->
<nav>
	<div class="wrapper">
		<div class="logo fl"><a href="index.jsp"><img src="whimg/userCenter/logo.png"></a></div>
	    <div class="fl">
            <ul>
                <li class="page-index"><a class="curr" href="index.jsp">首页</a></li>                
                <li><a href="business!showbeizeng">倍增商学院</a></li>
                <li><a href="business!show">商学院</a></li>                
                <li><a href="course!show">培训课程</a></li>
                <li><a href="teacher!show">名师堂</a></li>                  
                <li><a href="memberIntro.jsp">在线购买</a></li>
            </ul>
	    </div>
	    <div class="fr">
	    	<div class="searchbar">
	    		<input type="text" value="请输入关键字">
	    	</div>
	    </div>
	</div>
</nav>
<!-- end nav -->

<!-- main -->
<div id="main" class="wrapper">

	<!-- 侧边栏 -->
	<aside>
		<div class="avatar-con dib">
			<div class="pd">
				<a href="personal!toAvatar"><img class="avatar-big" src="<s:property value="perBean.bigpic"/>"></a>
			</div>	
		</div>
		<p><strong><s:property value="perBean.name"/></strong></p>
		<p style="margin-left: -37px;"><strong>我的积分：<span class="red"><s:property value="perBean.integral"/> </span></strong></p>
		<p style="margin-left: -17px;"><strong>我的等级：</strong>
			<span class="red">
				<s:if test='perBean.privilegeid == "0"'>普通会员</s:if>
				<s:if test='perBean.privilegeid == "1"'>白金会员</s:if>
				<s:if test='perBean.privilegeid == "2"'>黄金会员</s:if>
				<s:if test='perBean.privilegeid == "3"'>铂金会员</s:if>
				<s:if test='perBean.privilegeid == "4"'>钻石会员</s:if>
			</span>
		</p>
		<hr>

		<ul>
			<h2><i class="icon-setting dib"></i>个人设置</h2>
			<li><a href="personal!findUserById">基本信息</a></li>
			<li><a href="personal!findUserPos">职业信息</a></li>
			<li><a href="personal!findUserEdu">教育信息</a></li>
			<li><a href="personal!toEditPwd">更改密码</a></li>
			<li><a href="personal!toAvatar">上传头像</a></li>

			<hr>

			<h2><i class="icon-book dib"></i>我的学习</h2>
			<li><a class="curr" href="personal!show">个人中心</a></li>
			<li><a href="personal!showMyCou?status=-1&recommend=-1&page=1">我的课程</a></li>
			<li><a href="personal!showMyCou?status=0&recommend=-1&page=1">学习记录</a></li>
			<li><a href="personal!showMyCou?status=-1&recommend=0&page=1">试听课程</a></li>
			<li><a href="personal!showMyCou?status=-1&recommend=1&page=1">推荐课程</a></li>
		</ul>
	</aside>

	<!-- 内容 -->
	<div id="content">

		<!-- 我的课程 -->
		<section class="mod-wrapper">
			<h2>我的课程<a class="fr" href="personal!showMyCou?status=-1&recommend=-1&page=1">更多>></a></h2>
			<ul class="mod-video-list cf">
				<s:iterator value="myCourseList">
					<li class="mod-video-item">
						<div class="hd">
							<a href="course!showCouDetail?couid=<s:property value="couid"/>">
								<img src="<s:property value="coupicurl"/>" onError="this.onerror=null;this.src='whimg/userCenter/ph.jpg';">
							</a>
						</div>
						<div class="bd">
							<div class="pd">
								<p class="author-name">讲师：<a href="teacher!showCouByTeacher?thid=<s:property value="teacherid"/>&page=1"><s:property value="coulecturer"/></a></p>
								<p class="author-title"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></p>
								<a class="btn-learn fl" href="course!showCouDetail?couid=<s:property value="couid"/>">开始学习</a>
							</div>
						</div>
					</li>
				</s:iterator>
			</ul>
		</section>

		<!-- 学习记录 -->
		<!--
		<section class="mod-wrapper">
			<h2>学习记录</h2>
			<ul class="mod-video-list cf">
				<li class="mod-video-item">
					<div class="hd"><a href="#"><img src="whimg/userCenter/mod-placeholder.jpg"></a></div>
					<div class="bd">
						<div class="pd">
							<p class="author-name">讲师：<a href="#"><s:property value="coulecturer"/></a></p>
							<p class="author-title"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></p>
							<a class="btn-learn fl" href="course!showCouDetail?couid=<s:property value="couid"/>">开始学习</a>
						</div>
					</div>
				</li>
			</ul>
		</section>		
		  -->

		<!-- 试听课程 -->
		<section class="mod-wrapper">
			<h2>试听课程<a class="fr" href="personal!showMyCou?status=-1&recommend=0&page=1">更多>></a></h2>
			<ul class="mod-video-list cf">
				<s:iterator value="listenList">
					<li class="mod-video-item">
						<div class="hd">
							<a href="course!showCouDetail?couid=<s:property value="couid"/>">
								<img src="<s:property value="coupicurl"/>" onError="this.onerror=null;this.src='whimg/userCenter/ph.jpg';">
							</a>
						</div>
						<div class="bd">
							<div class="pd">
								<p class="author-name">讲师：<a href="teacher!showCouByTeacher?thid=<s:property value="teacherid"/>&page=1"><s:property value="coulecturer"/></a></p>
								<p class="author-title"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></p>
								<a class="btn-learn fl" href="course!showCouDetail?couid=<s:property value="couid"/>">开始学习</a>
							</div>
						</div>
					</li>
				</s:iterator>																
			</ul>
		</section>

		<!-- 推荐课程 -->
		<section class="mod-wrapper last">
			<h2>推荐课程<a class="fr" href="personal!showMyCou?status=-1&recommend=1&page=1">更多>></a></h2>
			<ul class="mod-video-list cf">
				<s:iterator value="recomList">
					<li class="mod-video-item">
						<div class="hd">
							<a href="course!showCouDetail?couid=<s:property value="couid"/>">
								<img src="<s:property value="coupicurl"/>" onError="this.onerror=null;this.src='whimg/userCenter/ph.jpg';">
							</a>
						</div>
						<div class="bd">
							<div class="pd">
								<p class="author-name">讲师：<a href="teacher!showCouByTeacher?thid=<s:property value="teacherid"/>&page=1"><s:property value="coulecturer"/></a></p>
								<p class="author-title"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></p>
								<a class="btn-learn fl" href="course!showCouDetail?couid=<s:property value="couid"/>">开始学习</a>
							</div>
						</div>
					</li>
				</s:iterator>																
			</ul>
		</section>	

				
	</div>
</div>
<!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />

<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/scirpt>')</script>
<script src="js/userCenter.js"></script>
</body>
</html>