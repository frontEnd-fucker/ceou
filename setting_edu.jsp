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
	<link href="css/baseUI.css" rel="stylesheet">
	<script src="js/vendor/modernizr-2.7.1.min.js"></script>
</head>

<body id="setting">

<!-- header -->	
<header>
	<div class="wrapper">
		<div class="fl">欢迎来到中国企业在线大学</div>
		<div class="fr">
			<!-- <a class="avatar" href="#"><img src="whimg/userCenter/avatar.jpg"></a> -->
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
			<li><a class="curr" href="personal!findUserEdu">教育信息</a></li>
			<li><a href="personal!toEditPwd">更改密码</a></li>
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

			<!-- 教育信息表单 -->
			<form id="form-edu">
                <div class="input-con">
                	<label for="edu">教育背景：</label>
                    <select id="edu" name="ueBean.universityType">
                    	<option value="大学" <s:if test='ueBean.universityType == "大学"'> selected="selected" </s:if>>大学</option>
                        <option value="大专" <s:if test='ueBean.universityType == "大专"'> selected="selected" </s:if>>大专</option>
                        <option value="高中" <s:if test='ueBean.universityType == "高中"'> selected="selected" </s:if>>高中</option>
                        <option value="初中" <s:if test='ueBean.universityType == "初中"'> selected="selected" </s:if>>初中</option>
                        <option value="小学" <s:if test='ueBean.universityType == "小学"'> selected="selected" </s:if>>小学</option>
                        <option value="其他" <s:if test='ueBean.universityType == "其他"'> selected="selected" </s:if>>其他</option>
                    </select>
                </div>
				<p class="input-con">
					<label>学校名称：</label>
					<input id="universityName" class="input-txt" name="ueBean.universityName" value="${ueBean.universityName }" type="text">
				</p>
				<p class="input-con">
					<label>院系：</label>
					<input id="college" class="input-txt" name="ueBean.college" value="${ueBean.college }" type="text">
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
	$('#btnSubmit').click(function() {
		var edu = $('#edu').val();
		var universityName = $('#universityName').val();
		var college = $('#college').val();
		$.post('personal!editUserEdu', {'ueBean.universityType': edu,'ueBean.universityName':universityName,'ueBean.college':college}, function(data) {
			if(data == 1){
				yu.popFadeoutLayer(1, '保存成功');
			}else{
				yu.popFadeoutLayer(-1, '保存失败，请重新提交');
			}
			
		});
		return false;
	});
});
</script>
</body>
</html>