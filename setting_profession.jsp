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
		<p><strong><s:property value="upBean.username" /></strong></p>
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
			<li><a class="curr" href="personal!findUserPos">职业信息</a></li>
			<li><a href="personal!findUserEdu">教育信息</a></li>
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

			<!-- 职业信息表单 -->
			<form id="form-profession">
				<p class="input-con">
					<label for="province">所在地：</label>
					<select id="province" name="upBean.province"></select>					
					<select id="city" name="upBean.city"></select>
				</p>
                <div class="input-con">
                	<label for="work">从事行业：</label>
                    <select id="work" name="upBean.position">                    	
                    	<option value="">请选择</option>
                        <option value="在校学生">在校学生</option>
                        <option value="计算机·网络·技术">计算机·网络·技术</option>
                        <option value="经营管理">经营管理</option>
                        <option value="娱乐业">娱乐业</option>
                        <option value="文体工作">文体工作</option>
                        <option value="销售">销售</option>
                        <option value="医疗卫生">医疗卫生</option>
                        <option value="农林牧渔劳动者">农林牧渔劳动者</option>
                        <option value="酒店·餐饮·旅游·其他服务">酒店·餐饮·旅游·其他服务</option>
                        <option value="美术·设计·创意">美术·设计·创意</option>
                        <option value="电子·电器·通信技术">电子·电器·通信技术</option>
                        <option value="外出务工人员">外出务工人员</option>
                        <option value="贸易·物流·采购·运输">贸易·物流·采购·运输</option>
                        <option value="建筑·房地产·装饰装修·物业管理">建筑·房地产·装饰装修·物业管理</option>
                        <option value="财务·审计·统计">财务·审计·统计</option>
                        <option value="电气·能源·动力">电气·能源·动力</option>
                        <option value="个体经营·商业零售">个体经营·商业零售</option>
                        <option value="军人警察">军人警察</option>
                        <option value="美容保健">美容保健</option>
                        <option value="行政·后勤">行政·后勤</option>
                        <option value="教育·培训">教育·培训</option>
                        <option value="党政机关事业单位工作者·公务员类">党政机关事业单位工作者·公务员类</option>
                        <option value="市场·公关·咨询·媒介">市场·公关·咨询·媒介</option>
                        <option value="技工">技工</option>
                        <option value="工厂生产">工厂生产</option>
                        <option value="宗教、神职人员">宗教、神职人员</option>
                        <option value="工程师">工程师</option>
                        <option value="新闻出版·文化工作">新闻出版·文化工作</option>
                        <option value="金融">金融</option>
                        <option value="人力资源">人力资源</option>
                        <option value="保险">保险</option>
                        <option value="法律">法律</option>
                        <option value="翻译">翻译</option>
                        <option value="自由职业者">自由职业者</option>
                        <option value="待业/无业/失业">待业/无业/失业</option>
                        <option value="其他">其他</option>
                    </select>                   
                </div>
				<p class="input-con">
					<label>公司名称：</label>
					<input id="companyName" class="input-txt" name="upBean.companyName" value="${upBean.companyName}" type="text">
				</p>
				<p class="input-con">
					<label>部门/职位：</label>
					<input id="positionName" class="input-txt" name="upBean.positionName" value="${upBean.positionName}" type="text">
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
<script src="js/vendor/jquery.validate.min.js"></script>
<script src="js/vendor/areaUtil.js"></script>
<script src="js/userCenter.js"></script>

<script>
$(function() {

	// 初始化二级级联select
	areaUtil.initArea('', '${upBean.province}', '${upBean.city}');
	
	// 初始化从事行业
	var currWork = '${upBean.position}';
	//var currWork = '娱乐业';
	$('#work option').each(function() {
		if(this.value == currWork) {
			this.selected = true;
		}
	});	

	// 动态生成二级级联
	$('#province').change(function() {
		var provinceVal = $(this).val();
		areaUtil.changeProvince('', provinceVal);
	});

	// 提交数据
	$('#btnSubmit').click(function() {
		var province = $('select[name="upBean.province"] option:selected').val();
		var city = $('select[name="upBean.city"] option:selected').val();
		var work = $('select[name="upBean.position"] option:selected').val();		
		var companyName = $('#companyName').val();
		var positionName = $('#positionName').val();
		console.log(province, city, work, companyName, positionName);
		$.post('personal!editUserPosition', {'upBean.province':province, 'upBean.city':city, 'upBean.position':work, 'upBean.companyName':companyName,'upBean.positionName':positionName }, function(data) {
			if(data == 1){
				alert('ok');
			}else{
				alert('fail');
			}			
		});
		return false;
	});
});
</script>
</body>
</html>