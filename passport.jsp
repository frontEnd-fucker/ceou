<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/jquery.cookie.js"></script>
</head>

<body id="passport">

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	<div class="ad"><a href="#"><img src="img/passport-center.jpg" /></a></div>
    
    <!-- passport-l -->
    <div class="fl passport-l">
    	<!-- 个人资料 -->
        <div class="gray-box user-info">
        	<h2 class="gray-title"><img src="img/grzl.jpg" /></h2>
            <a class="avatar" href="#"><img src="img/avatar_13.jpg" /></a>
            <a class="name" href="#">李信念</a>
            <a class="setting-btn" href="#">个人设置</a>
        </div>
        <!-- 我的学习 -->
        <div class="gray-box">
        	<h2 class="gray-title"><img src="img/wdx.jpg" /></h2>
            <ul class="gray-list">
            	<li><a href="#">我的收藏</a></li>
                <li><a href="#">我的课程</a></li>
                <li><a href="#">学习记录</a></li>
                <li><a href="#">我的笔记</a></li>
                <li><a href="#">我的讨论</a></li>
                <li><a href="#">我的活动</a></li>
            </ul>
        </div>
        <!-- 订单管理 -->
        <div class="gray-box">
        	<h2 class="gray-title"><img src="img/wdx.jpg" /></h2>
            <ul class="gray-list">
            	<li><a href="#">我的订单</a></li>
                <li><a href="#">我的购买记录</a></li>
                <li><a href="#">我的优惠券</a></li>
                <li><a href="#">我的兑换码</a></li>
                <li><a href="#">账户余额</a></li>
                <li><a href="#">账户充值</a></li>
            </ul>
        </div>   
        <!-- 客户端下载 -->
        <div class="gray-box">
        	<h2 class="gray-title"><img src="img/khdxz.jpg" /></h2>
            <img style="margin: 30px 0 25px 40px;" src="img/RQ.jpg" />
        </div>
        <!-- vertical-portal --> 
        <div class="portal-vertical" style="margin-left: 3px;">
        	<a href="#"><img src="img/portal1.jpg" /></a>
            <a href="#"><img src="img/portal2.jpg" /></a>
            <a href="#"><img src="img/portal3.jpg" /></a>
            <a href="#"><img src="img/portal4.jpg" /></a>
        </div>    
    </div><!-- end passport-l -->
    
    <!-- passport-r -->
    <div class="fr passport-r">
    	<!-- 试听课程 -->
        <div class="plain-box try-course cf">
        	<h2 class="rect-title"><span>试听课程</span></h2>
            <div class="try-course-content">
            	<div class="fl">
                	<embed src="http://player.youku.com/player.php/Type/Folder/Fid/19003894/Ob/1/sid/XNjU1NTY2MDk2/v.swf" quality="high" width="415" height="315" align="middle" allowScriptAccess="always" allowFullScreen="true" mode="transparent" type="application/x-shockwave-flash"></embed>
                </div>
                <ul class="fr">
                	<li><a href="#">年度培训需求调查表</a></li>
                    <li><a href="#">年度培训需求调查表</a></li>
                    <li><a href="#">年度培训需求调查表</a></li>
                    <li><a href="#">年度培训需求调查表</a></li>
                    <li><a href="#">年度培训需求调查表</a></li>
                    <li><a href="#">年度培训需求调查表</a></li>
                    <li><a href="#">年度培训需求调查表</a></li>
                    <li><a href="#">年度培训需求调查表</a></li>
                    <li><a href="#">年度培训需求调查表</a></li>
                    <li><a href="#">年度培训需求调查表</a></li>
                </ul>
            </div>
        </div>
        <!-- 我的课程 -->
        <div class="plain-box my-course cf">
        	<h2 class="rect-title"><span>我的课程</span><a class="more" href="#">更多>></a></h2>
			<div class="courses">
            	<div class="course">
                	<div class="course-hd"><a href="#"><img src="img/kecheng-list.jpg" /></a></div>
                    <div class="course-bd">
                    	<h3>讲师：郎咸平</h3>
                        <p>联想集团名誉董事长兼高级顾问</p>
                    </div>
                    <div class="course-ft">
                    	<a class="start" href="#">开始学习</a>
                        <a class="view-count" href="#">3518</a>
                        <a class="comment-count" href="#">3518</a>
                    </div>
                </div>
                
            	<div class="course">
                	<div class="course-hd"><a href="#"><img src="img/kecheng-list.jpg" /></a></div>
                    <div class="course-bd">
                    	<h3>讲师：郎咸平</h3>
                        <p>联想集团名誉董事长兼高级顾问</p>
                    </div>
                    <div class="course-ft">
                    	<a class="start" href="#">开始学习</a>
                        <a class="view-count" href="#">3518</a>
                        <a class="comment-count" href="#">3518</a>
                    </div>
                </div>
                
            	<div class="course">
                	<div class="course-hd"><a href="#"><img src="img/kecheng-list.jpg" /></a></div>
                    <div class="course-bd">
                    	<h3>讲师：郎咸平</h3>
                        <p>联想集团名誉董事长兼高级顾问</p>
                    </div>
                    <div class="course-ft">
                    	<a class="start" href="#">开始学习</a>
                        <a class="view-count" href="#">3518</a>
                        <a class="comment-count" href="#">3518</a>
                    </div>
                </div>
                
            	<div class="course">
                	<div class="course-hd"><a href="#"><img src="img/kecheng-list.jpg" /></a></div>
                    <div class="course-bd">
                    	<h3>讲师：郎咸平</h3>
                        <p>联想集团名誉董事长兼高级顾问</p>
                    </div>
                    <div class="course-ft">
                    	<a class="start" href="#">开始学习</a>
                        <a class="view-count" href="#">3518</a>
                        <a class="comment-count" href="#">3518</a>
                    </div>
                </div>                                                
            </div>
        </div>
        <!-- 推荐课程 -->
        <div class="plain-box intro-course cf">
        	<h2 class="rect-title"><span>推荐课程</span><a class="more" href="#">更多>></a></h2>
            <ul class="kejian-list">
            	<li><a href="#">年度培训需求调查表</a></li>
                <li><a href="#">年度培训需求调查表</a></li>
                <li><a href="#">年度培训需求调查表</a></li>
                <li><a href="#">年度培训需求调查表</a></li>
                <li><a href="#">年度培训需求调查表</a></li>
                <li><a href="#">年度培训需求调查表</a></li>
            </ul>
        </div>
        <!-- 推荐会员企业 -->
        <div class="plain-box brand cf">
        	<h2 class="rect-title"><span>推荐会员企业</span><a class="more" href="#">更多>></a></h2>
            <div class="brand-con">
                <a href="#"><img src="img/hy/hy_1.jpg" /></a>
                <a href="#"><img src="img/hy/hy_2.jpg" /></a>
                <a href="#"><img src="img/hy/hy_3.jpg" /></a>
                <a href="#"><img src="img/hy/hy_4.jpg" /></a>
                <a href="#"><img src="img/hy/hy_5.jpg" /></a>
                <a href="#"><img src="img/hy/hy_6.jpg" /></a>
                <a href="#"><img src="img/hy/hy_7.jpg" /></a>
                
                <a href="#"><img src="img/hy/hy_8.jpg" /></a>
                <a href="#"><img src="img/hy/hy_9.jpg" /></a>
                <a href="#"><img src="img/hy/hy_10.jpg" /></a>
                <a href="#"><img src="img/hy/hy_11.jpg" /></a>
                <a href="#"><img src="img/hy/hy_12.jpg" /></a>
                <a href="#"><img src="img/hy/hy_13.jpg" /></a>
                <a href="#"><img src="img/hy/hy_14.jpg" /></a>
                
                <a href="#"><img src="img/hy/hy_15.jpg" /></a>
                <a href="#"><img src="img/hy/hy_16.jpg" /></a>
                <a href="#"><img src="img/hy/hy_17.jpg" /></a>              
            </div>            
        </div>        
    </div><!-- end passport-r -->
    
    <div class="ad"><img src="img/tuozhanyin.jpg" /></div>
</div><!-- main -->

<jsp:include page="footer.jsp" flush="true" />

<script>
//读取cookie
$(function() {
	var cookieUsername = $.cookie('cookieUsername');
	if(cookieUsername) {
		alert(cookieUsername);
	}
});
</script>
</body>
</html>








