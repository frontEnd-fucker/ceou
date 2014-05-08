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
			<li><a class="curr" href="personal!toAvatar">上传头像</a></li>

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

			<!-- 更换头像表单 -->
			<!-- <form id="form-avatar" style="margin: -47px 0 0 -110px;"> -->

			<div style="margin-left: -80px;">
			<!-- <h1 style="text-align: center">
			富头像上传编辑器演示
			</h1> -->
				<div>
				<p id="swfContainer">
					本组件需要安装Flash Player后才可使用，请从
					<a href="http://www.adobe.com/go/getflashplayer">这里</a> 下载安装。
				</p>
				</div>
			<!-- <button type="button" id="upload">
			自定义上传按钮
			</button> -->
			</div>
		<!-- </form>  -->
		</div>	
	</div>
</div>

<div class="clear-both"></div>


<jsp:include page="footer.jsp" flush="true" />



<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/scirpt>')</script>
<script src="js/userCenter.js"></script><script src="js/vendor/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/swfobject.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/fullAvatarEditor.js"></script>

<script type="text/javascript">
	swfobject.addDomLoadEvent(function() {
		var swf = new fullAvatarEditor("swfContainer", {
			id : 'swf',
			upload_url : './upload.jsp',
			//src_url : "./image/couid10.jpg",
			src_upload : 2
		}, function(msg) {
			switch (msg.code) {
			case 1:
				//alert("页面成功加载了组件！");
				break;
			case 2:
				//alert("已成功加载默认指定的图片到编辑面板。");
				break;
			case 3:
				if (msg.type == 0) {
					alert("摄像头已准备就绪且用户已允许使用。");
				} else if (msg.type == 1) {
					alert("摄像头已准备就绪但用户未允许使用！");
				} else {
					alert("摄像头被占用！");
				}
				break;
			case 5:
				if (msg.type == 0) {
					if (msg.content.sourceUrl) {
						alert("原图片已成功保存至服务器，url为：\n" + msg.content.sourceUrl);
					}
					//alert("头像已成功保存至服务器，url为：\n"
				//	+ msg.content.avatarUrls.join("\n"));
				//window.location="all.jsp?content="+msg.content.avatarUrls;
				//showModalDialog("temp.jsp");//在关闭模式窗体前，不能操作其它窗体
					location.reload();
				}
				break;
			}
		});
		document.getElementById("upload").onclick = function() {
			swf.call("upload");
		};
	});
</script>
</body>
</html>