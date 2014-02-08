<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>浏览记录</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
</head>

<body id="timeline">

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
            	<li><a href="favorite.jsp">我的收藏</a></li>
                <li><a href="#">我的课程</a></li>
                <li><a href="timeline.jsp">学习记录</a></li>
                <!--<li><a href="#">我的笔记</a></li>
                <li><a href="#">我的讨论</a></li>
                <li><a href="#">我的活动</a></li>-->
            </ul>
        </div>
        <!-- 订单管理 -->
        <!--<div class="gray-box">
        	<h2 class="gray-title"><img src="img/wdx.jpg" /></h2>
            <ul class="gray-list">
            	<li><a href="#">我的订单</a></li>
                <li><a href="#">我的购买记录</a></li>
                <li><a href="#">我的优惠券</a></li>
                <li><a href="#">我的兑换码</a></li>
                <li><a href="#">账户余额</a></li>
                <li><a href="#">账户充值</a></li>
            </ul>
        </div> -->  
        <!-- 客户端下载 -->
        <div class="gray-box">
        	<h2 class="gray-title"><img src="img/khdxz.jpg" /></h2>
            <img style="margin: 30px 0 25px 40px;" src="img/RQ.jpg" />
        </div>
        <!-- vertical-portal --> 
        <!--<div class="portal-vertical" style="margin-left: 3px;">
        	<a href="#"><img src="img/portal1.jpg" /></a>
            <a href="#"><img src="img/portal2.jpg" /></a>
            <a href="#"><img src="img/portal3.jpg" /></a>
            <a href="#"><img src="img/portal4.jpg" /></a>
        </div>-->    
    </div><!-- end passport-l -->
    
    <!-- passport-r -->
    <div class="fr passport-r">
        <!-- 我的课程 -->
        <div class="plain-box my-course cf">
        	<h2 class="rect-title"><span>浏览记录</span></h2>
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
                    <div class="page-nav cf">
                    	<div class="page-num">
                        	<a class="page-home" href="#">首页</a>
                            <a href="#">上一页</a>
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#">4</a>
                            <a href="#">5</a>
                            <a href="#">下一页</a>
                            <a href="#">末页</a>
                        </div>
                        <div class="page-skip">
                        	<form>
                            	跳至第<input class="page-input" type="text" name="page" />页
                                <input type="submit" value="确定"/>
                            </form>                            
                        </div>
                    </div>                    
    </div><!-- end passport-r -->
    
    <div class="ad"><img src="img/tuozhanyin.jpg" /></div>
</div><!-- main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />

</body>
</html>








