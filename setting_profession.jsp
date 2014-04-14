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
			<li><a class="curr" href="setting_profession.jsp">职业信息</a></li>
			<li><a href="setting_edu.jsp">教育信息</a></li>
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

			<!-- 职业信息表单 -->
			<form id="form-profession">
				<p class="input-con">
					<label for="province">所在地：</label>
					<select id="province" name="province"></select>					
					<select id="city" name="city"></select>									
				</p>
                <div class="input-con">
                	<label for="work">从事行业：${perBean.position}</label>
                    <select id="work" name="perBean.position">
                    	
                    	<option>请选择</option>
                        <option value="0" <s:if test="perBean.position==0"> selected="selected" </s:if>>在校学生</option>
                        <option value="1" <s:if test="perBean.position==1"> selected="selected" </s:if>>计算机·网络·技术</option>
                        <option value="2" <s:if test="perBean.position==2"> selected="selected" </s:if>>经营管理</option>
                        <option value="3" <s:if test="perBean.position==3"> selected="selected" </s:if>>娱乐业</option>
                        <option value="4" <s:if test="perBean.position==4"> selected="selected" </s:if>>文体工作</option>
                        <option value="5" <s:if test="perBean.position==5"> selected="selected" </s:if>>销售</option>
                        <option value="6" <s:if test="perBean.position==6"> selected="selected" </s:if>>医疗卫生</option>
                        <option value="7" <s:if test="perBean.position==7"> selected="selected" </s:if>>农林牧渔劳动者</option>
                        <option value="8" <s:if test="perBean.position==8"> selected="selected" </s:if>>酒店·餐饮·旅游·其他服务</option>
                        <option value="9" <s:if test="perBean.position==9"> selected="selected" </s:if>>美术·设计·创意</option>
                        <option value="10" <s:if test="perBean.position==10"> selected="selected" </s:if>>电子·电器·通信技术</option>
                        <option value="11" <s:if test="perBean.position==11"> selected="selected" </s:if>>外出务工人员</option>
                        <option value="12" <s:if test="perBean.position==12"> selected="selected" </s:if>>贸易·物流·采购·运输</option>
                        <option value="13" <s:if test="perBean.position==13"> selected="selected" </s:if>>建筑·房地产·装饰装修·物业管理</option>
                        <option value="14" <s:if test="perBean.position==14"> selected="selected" </s:if>>财务·审计·统计</option>
                        <option value="15" <s:if test="perBean.position==15"> selected="selected" </s:if>>电气·能源·动力</option>
                        <option value="16" <s:if test="perBean.position==16"> selected="selected" </s:if>>个体经营·商业零售</option>
                        <option value="17" <s:if test="perBean.position==17"> selected="selected" </s:if>>军人警察</option>
                        <option value="18" <s:if test="perBean.position==18"> selected="selected" </s:if>>美容保健</option>
                        <option value="19" <s:if test="perBean.position==19"> selected="selected" </s:if>>行政·后勤</option>
                        <option value="20" <s:if test="perBean.position==20"> selected="selected" </s:if> >教育·培训</option>
                        <option value="21" <s:if test="perBean.position==21"> selected="selected" </s:if>>党政机关事业单位工作者·公务员类</option>
                        <option value="22" <s:if test="perBean.position==22"> selected="selected" </s:if>>市场·公关·咨询·媒介</option>
                        <option value="23" <s:if test="perBean.position==23"> selected="selected" </s:if>>技工</option>
                        <option value="24" <s:if test="perBean.position==24"> selected="selected" </s:if>>工厂生产</option>
                        <option value="25" <s:if test="perBean.position==25"> selected="selected" </s:if>>宗教、神职人员</option>
                        <option value="26" <s:if test="perBean.position==26"> selected="selected" </s:if>>工程师</option>
                        <option value="27" <s:if test="perBean.position==27"> selected="selected" </s:if>>新闻出版·文化工作</option>
                        <option value="28" <s:if test="perBean.position==28"> selected="selected" </s:if>>金融</option>
                        <option value="29" <s:if test="perBean.position==29"> selected="selected" </s:if>>人力资源</option>
                        <option value="30" <s:if test="perBean.position==30"> selected="selected" </s:if>>保险</option>
                        <option value="31" <s:if test="perBean.position==31"> selected="selected" </s:if>>法律</option>
                        <option value="32" <s:if test="perBean.position==32"> selected="selected" </s:if>>翻译</option>
                        <option value="33" <s:if test="perBean.position==33"> selected="selected" </s:if>>自由职业者</option>
                        <option value="34" <s:if test="perBean.position==34"> selected="selected" </s:if>>待业/无业/失业</option>
                        <option value="35" <s:if test="perBean.position==35"> selected="selected" </s:if>>其他</option>
                    </select>                   
                </div>
				<p class="input-con">
					<label>公司名称：</label>
					<input class="input-txt" type="text">
				</p>
<!-- 				<p class="input-con">
					<label>工作时间：</label>
					<select>
						<option>请选择</option>
					</select>
					到
					<select>
						<option>请选择</option>
					</select>										
				</p> -->
				<p class="input-con">
					<label>部门/职位：</label>
					<input class="input-txt" type="text">
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
<script src="js/vendor/areaUtil.js"></script>
<script src="js/userCenter.js"></script>

<script>

//初始化二级级联select
$(function() {
	areaUtil.initArea('');
	$('#province').change(function() {
		var provinceVal = $(this).val();
		areaUtil.changeProvince('', provinceVal);
	});
});
</script>
</body>
</html>