<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<body id="setting">

<!-- header -->	
<header>
	<div class="wrapper">
		<div class="fl">欢迎来到中国企业在线大学</div>
		<div class="fr">
			<a class="avatar" href="#"><img src="whimg/userCenter/avatar.jpg"></a>
			<a class="user-name" href="#">用户名</a>
			<span>|</span>
			<a class="log-out" href="#">退出</a>
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
				<a href="#"><img class="avatar-big" src="whimg/userCenter/avatar-default.jpg"></a>
			</div>	
		</div>
		<p><strong>用户名</strong></p>
		<p style="margin-left: -37px;"><strong>我的积分：<span class="red">1326</span></strong></p>
		<p style="margin-left: -17px;"><strong>我的等级：</strong><span class="red">注册会员</span></p>

		<hr>

		<ul>
			<h2><i class="icon-setting dib"></i>个人设置</h2>
			<li><a href="setting_base.jsp">基本信息</a></li>
			<li><a href="setting_profession.jsp">职业信息</a></li>
			<li><a href="setting_edu.jsp">教育信息</a></li>
			<li><a href="setting_pwd.jsp">更改密码</a></li>
			<li><a class="curr" href="setting_avatar.jsp">上传头像</a></li>

			<hr>

			<h2><i class="icon-book dib"></i>我的学习</h2>
			<li><a class="curr" href="#">个人中心</a></li>
			<li><a href="#">我的课程</a></li>
			<li><a href="#">学习记录</a></li>
		</ul>
	</aside>	

	<!-- 内容 -->
	<div id="content">
		<div class="form-con">

			<!-- 更换头像表单 -->
			<form id="form-avatar" style="margin: -47px 0 0 -110px;">
				<img src="whimg/userCenter/avatar-default.jpg">
				<p class="input-con">
					请选择一张图片<input type="file">
				</p>
			</form>
		</div>	
	</div>
</div>

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />

<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/scirpt>')</script>
<script src="js/userCenter.js"></script>
</body>
</html>