<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>找回密码第三步</title>
<link href="css/reg.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/reg.js"></script>
</head>

<body>
<!-- header -->
<div id="header">
	<div class="header-con">
    	<a class="logo" href="index.jsp"><img src="img/reg-logo.jpg" /></a>
        <div class="top-nav">
        	<ul>
            	<li><a href="#">社区</a></li>
                <li class="separator">|</li>
                <li><a href="#">马上优惠</a></li>
                <li class="separator">|</li>
                <li><a>服务热线：400-700-7000</a></li>
            </ul>        
        </div>
    </div>
</div>
<!-- end header -->

<div class="hr"></div>

<!-- main -->
<div id="main">
	<h2 class="reg-tips" style="margin-left: 215px;">
		验证成功，
		<span id="step3useremail"><%= request.getParameter("useremail") %></span>
		请输入您的新密码：
	</h2>
    <div class="form">    	
    	<form name="reg-form" action="userReg" method="post">        
            <div class="input-con cf">
                <label for="pwd1">密码</label>
                <input type="password" id="pwd1" name="pwd1" />
                <span class="tips" id="J_pwd1Tips">6-20位字符。可使用字母、数字或符号的组合</span>         
            </div>
            <div class="input-con cf">
                <label for="pwd2">确认密码</label>
                <input type="password" id="pwd2" name="pwd2" />
                <span class="tips" id="J_pwd2Tips">请再次输入密码</span>        
            </div> 
            <div class="input-con">
                <input id="J_findPwdStep3" class="reg-btn" type="button" value="提交" />
            </div>  
        </form>
    </div>
</div><!-- end main -->

<div class="clear-both"></div>

<!-- footer -->
<div id="footer">
	<p>
    	<a href="#">关于我们</a>
        <span>|</span>
    	<a href="#">培训课程</a>
        <span>|</span>
    	<a href="#">名师堂</a>
        <span>|</span>
    	<a href="#">商学院</a>
        <span>|</span>
    	<a href="#">在线商学院</a>
        <span>|</span>
    	<a href="#">如何购买</a>
        <span>|</span>
    	<a href="#">在线付款</a>
        <span>|</span>
    	<a href="#">中企会</a>
        <span>|</span>
    	<a href="#">我要加盟</a>
        <span>|</span>
    	<a href="#">帮助中心</a>
        <span>|</span>
    	<a href="#">手机版</a>
        <span>|</span>
    	<a href="#">合作机构</a>
        <span>|</span>    
    	<a href="#">常见问题</a>                                                                                                   
    </p>
    
    <p class="copyright">
    	深圳市公安局罗湖分局备案编号：110181681 粤ICP备08009054号  音箱制品经营许可证苏宿批005号<br />
        CopyRight &copy; 2003-2013 中国企业在线大学  版权所有
    </p>
</div><!-- end footer -->
</body>
</html>
