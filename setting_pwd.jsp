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

<body id="setting">

<!-- header -->	
<header>
	<div class="wrapper">
		<div class="fl">欢迎来到中国企业在线大学</div>
		<div class="fr">
			<a class="avatar" href="#"><img src="whimg/userCenter/avatar.jpg"></a>
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
				<a href="#"><img class="avatar-big" src="whimg/userCenter/avatar-default.jpg"></a>
			</div>	
		</div>
		<p><strong>用户名</strong></p>
		<p style="margin-left: -37px;"><strong>我的积分：<span class="red"><s:property value="perBean.integral"/> </span></strong></p>
		<p style="margin-left: -17px;"><strong>我的等级：</strong>
			<span class="red">
				<s:if test='perBean.privilegeid == "1"'>普通会员</s:if>
				<s:if test='perBean.privilegeid == "2"'>白金会员</s:if>
				<s:if test='perBean.privilegeid == "3"'>黄金会员</s:if>
				<s:if test='perBean.privilegeid == "4"'>铂金会员</s:if>
				<s:if test='perBean.privilegeid == "5"'>钻石会员</s:if>
			</span>
		</p>
		<hr>

		<ul>
			<h2><i class="icon-setting dib"></i>个人设置</h2>
			<li><a href="personal!findUserById">基本信息</a></li>
			<li><a href="personal!findUserPos">职业信息</a></li>
			<li><a href="personal!findUserEdu">教育信息</a></li>
			<li><a class="curr" href="personal!toEditPwd">更改密码</a></li>
			<li><a href="personal!toAvatar">上传头像</a></li>

			<hr>

			<h2><i class="icon-book dib"></i>我的学习</h2>
			<li><a href="personal!show">个人中心</a></li>
			<li><a href="personal!showMyCou?status=-1&recommend=-1&page=1">我的课程</a></li>
			<li><a href="personal!showMyCou?status=0&recommend=-1&page=1">学习记录</a></li>
			<li><a href="personal!showMyCou?status=-1&recommend=0&page=1">试听课程</a></li>
			<li><a href="personal!showMyCou?status=-1&recommend=1&page=1">推荐课程</a></li>
		</ul>
	</aside>	

	<!-- 内容 -->
	<div id="content">
		<div class="form-con">

			<!-- 更改密码表单 -->
			<form id="form-pwd" name="form-pwd" method="post" action="">
				<p class="input-con">
					<label>当前密码：</label>
					<input id="currPwd" name="currPwd" class="input-txt" type="text" required>
				</p>
				<p class="input-con">
					<label>新密码：</label>
					<input id="newPwd1" name="newPwd1" class="input-txt" type="password" required>
				</p>		
				<p class="input-con">
					<label>确认密码：</label>
					<input id="newPwd2" name="newPwd2" class="input-txt" type="password" required equalTo="#newPwd1">
				</p>	
				<input type="submit" class="btn-pill btn-pill-green" value="提交">								
			</form>
		</div>	
	</div>
</div>


<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />

<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/scirpt>')</script>
<script src="js/vendor/jquery.validate.min.js"></script>
<script src="js/userCenter.js"></script>

<script>
$(function() {
	$('#form-pwd').validate({
		rules: {
			newPwd1: {
				rangelength: [6, 20]
			}
		},
		errorElement: 'em',
		messages: {
			currPwd: {
				required: '请输入当前密码'
			},
			newPwd1: {
				required: '请输入新密码',
				rangelength: '密码长度必须在6-20位'
			},
			newPwd2: {
				required: '请再次输入新密码',
				equalTo: '两次输入的密码必须相同'
			}
		},
		submitHandler: function(form) {
			//alert('fuck');
			var currPwd = $('#currPwd').val();
			var newPwd2 = $('#newPwd2').val();
			$.post('personal!editPwd', {'pwd':currPwd,'newPwd':newPwd2}, function(data) {
				if(data == -1) {
					alert('旧密码错误');
				}else if(data == 1) {
					alert('修改成功');
					location.href="http://www.ceou.com.cn/login.html";
				}else {
					alert('网络超时,请重新提交');
				}
			});
			//return false;
		}
	});
});	
</script>
</body>
</html>