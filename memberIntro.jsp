<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">	
<title>中国企业在线大学-会员介绍</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<link href="css/memberIntro.css" rel="stylesheet" type="text/css">
</head>

<body id="memberIntro">

<jsp:include page="head.jsp" flush="true" />	

<div id="main" class="wrapper">
	
	<!-- ad -->
	<div id="ad">
		<img src="whimg/memberIntro/banner.jpg" style="width: 100%; height=312px; ">
	</div>
	<!-- end ad -->

	<!-- vip会员机制 -->
	<div class="floor_1">
		<h2 class="gradient-title">VIP会员机制</h2>
		<div class="btn-hidden-con">
			<a class="btn-hidden" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2628091184&site=qq&menu=yes">了解更多</a>
			<a class="btn-hidden" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2628091184&site=qq&menu=yes">了解更多</a>
			<a class="btn-hidden" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2628091184&site=qq&menu=yes">了解更多</a>
			<a class="btn-hidden last" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2628091184&site=qq&menu=yes">了解更多</a>
		</div>
	</div>

	<!-- 交易流程 -->
	<div class="floor_2">
		<a class="btn-gradient" href="reg.jsp">立即加入，注册有礼</a>
		<img src="whimg/memberIntro/floor_2.jpg" style="margin: 80px 0 30px 85px;">
	</div>

	<!-- 积分机制 -->
	<div class="floor_3">
		<h2 class="gradient-title">积分机制</h2>
		<img src="whimg/memberIntro/floor_3.png" style="margin: 15px 0 0 10px;">
		<div class="table-con">
			<table>
				<thead>
					<tr>
						<th>积分规则</th>
						<th>分值</th>
						<th>积分说明</th>
					</tr>
					<tr>
						<td>用户注册</td>
						<td>+50</td>
						<td>第一次注册，获得加分</td>
					</tr>
					<tr class="even">
						<td>用户登录</td>
						<td>+1</td>
						<td>前3个月每日首次登录加分，3个月以后登录不予加分</td>
					</tr>
					<tr>
						<td>完善个人基本信息</td>
						<td>+20</td>
						<td>第一次完善个人基本信息时加分，之后修改不予加分</td>
					</tr>	
					<tr class="even">
						<td>完善个人职业信息</td>
						<td>+20</td>
						<td>第一次完善个人职业信息时加分，之后修改不予加分</td>
					</tr>
					<tr>
						<td>完善个人教育信息</td>
						<td>+20</td>
						<td>第一次完善个人教育信息时加分，之后修改不予加分</td>
					</tr>
					<tr class="even">
						<td>购买白银会员</td>
						<td>+500</td>
						<td>购买白银会员套餐，奖励500积分，换取更多课程</td>
					</tr>
					<tr>
						<td>购买黄金会员</td>
						<td>+800</td>
						<td>购买黄金会员套餐，奖励800积分，换取更多课程</td>
					</tr>		
					<tr class="even">
						<td>购买铂金会员</td>
						<td>+1000</td>
						<td>购买铂金会员套餐，奖励1000积分，换取更多课程</td>
					</tr>																																	
				</thead>
			</table>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp" flush="true" />

<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
</body>
</html>