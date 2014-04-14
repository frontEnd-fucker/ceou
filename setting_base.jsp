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
			<li><a class="curr" href="personal!findUserById">基本信息</a></li>
			<li><a href="personal!findUserPos">职业信息</a></li>
			<li><a href="personal!findUserEdu">教育信息</a></li>
			<li><a href="setting_pwd.jsp">更改密码</a></li>
			<li><a href="setting_avatar.jsp">上传头像</a></li>

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
		<input id="hSex" type="hidden" value="{perBean.gender}"/>

			<!-- 基本信息表单 -->
			<form id="form-base">
				<p class="input-con">
					<label>登录邮箱：</label><span><s:property value="perBean.email"/></span>			
				</p>
				<p class="input-con">
					<label>用户名：</label><span><s:property value="perBean.name"/></span>			
				</p>	
				<p class="input-con">
					<label for="sex">性别：</label>
					<input class="input-radio" name="perBean.sex" type="radio" checked value="男">男&nbsp;&nbsp;
					<input class="input-radio" name="perBean.sex" type="radio" value="女">女
				</p>	
				<p class="input-con">
					<label for="cname">真实姓名：</label>
					<input id="cname" name="perBean.realname" value="${perBean.realname}" class="input-txt" type="text">
				</p>					
				<p class="input-con">
					<label for="tel">联系电话：</label>
					<input id="tel" name="perBean.phone" value="${perBean.phone}" class="input-txt" type="text">
				</p>		
				<p class="input-con">
					<label for="qq">QQ：</label>
					<input id="qq" name="perBean.qq" value="${perBean.qq}" class="input-txt" type="text">
				</p>
				<p class="input-con">
					<label for="addr">邮寄地址：</label>
					<input id="addr" name="perBean.mailaddress" value="${perBean.mailaddress}" class="input-txt" type="text">
				</p>
				<input id="btnSubmit" type="submit" class="btn-pill btn-pill-green" value="提交">
			</form>
		</div>	
	</div>
</div>

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />

<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/scirpt>')</script>
<script src="js/userCenter.js"></script><script src="js/vendor/jquery.validate.min.js"></script>
<script>
$(function() {

	// 联系电话(手机/电话皆可)验证方法
	jQuery.validator.addMethod("isPhone", function (value, element) {  
	   var length = value.length;  
	   var mobile = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/;  
	   var tel = /^\d{3,4}-?\d{7,9}$/;  
	   return this.optional(element) || (tel.test(value) || mobile.test(value));  	 	 
	}, "请正确填写您的联系电话");  	

	$('#form-base').validate({
		errorElement: 'em',
		rules: {
			'perBean.phone': {
				isPhone: true
			},
			'perBean.qq': {
				digits: true
			}
		},
		messages: {
			'perBean.qq': {
				digits: '请正确输入您的QQ号码'
			}
		},
		submitHandler: function(form) {
			var sex = $('input[name="perBean.sex"]:checked').val();
			var cname = $('#cname').val();
			var tel = $('#tel').val();
			var qq = $('#qq').val();
			var addr = $('#addr').val();
			console.log(sex, cname, tel, qq, addr);
			$.post('personal!editUserInfo', {'perBean.gender':sex, 'perBean.realname':cname, 'perBean.phone':tel, 'perBean.qq':qq, 'perBean.mailaddress':addr }, function(data) {
				if(data == 1){
					alert('ok');
				}else{
					alert('fail');
				}				
			});			
		}
	});
	// $('#btnSubmit').click(function() {
	// 	var sex = $('input[type="radio"]:checked').val();
	// 	var cname = $('#cname').val();
	// 	var tel = $('#tel').val();
	// 	var qq = $('#qq').val();
	// 	var addr = $('#addr').val();
	// 	console.log(sex, cname, tel, qq, addr);
	// 	$.post('personal!editUserInfo', {'perBean.gender': sex,'perBean.realname':cname,'perBean.phone':tel,'perBean.qq':qq,'perBean.mailaddress':addr }, function(data) {
	// 		if(data == 1){
	// 			alert('ok');
	// 		}else{
	// 			alert('fail');
	// 		}
			
	// 	});
	// 	return false;
	// });
});
</script>
</body>
</html>