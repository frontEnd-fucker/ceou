<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>最后一步！</title>
<link href="css/reg.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
</head>

<body>
<!-- header -->
<div id="header">
	<div class="header-con">
    	<a class="logo" href="/CEOU"><img src="img/reg-logo.jpg" /></a>
        <div class="top-nav">
        	<ul>
            	<li><a href="/CEOU">返回主页</a></li>
                <li class="separator">|</li>
                <li><a>服务热线：0755-22315621</a></li>
            </ul>        
        </div>
    </div>
</div>
<!-- end header -->
<div class="hr"></div>

<!-- mian -->
<div id="main">
	<h2 class="reg-tips">恭喜，只剩最后一步就能注册成功！</h2>
    <div class="check-email">
    	<p>系统已向您的邮箱<span class="email"><s:property value="useremail"/> </span>发送了一封验证邮件，请您登录邮箱，点击邮件中的链接完成邮箱验证。如果您超过2分钟未收到邮件，您可以点击<a id="J_resendEmail" href="javascript:;">重新发送</a>。</p>
        <p class="resend-email-suc">验证邮件已重新发送</p>
        <p><a class="red-btn" href="http://<s:property value="mailURL"/>">登录邮箱</a></p>
    </div>
</div>
<!-- end main -->

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
<script>
//点重新发送后弹出提示
$('#J_resendEmail').click(function() {
	$('.resend-email-suc').show();
	setTimeout(function() {
		$('.resend-email-suc').hide();
	}, 5000);
});
</script>
</body>
</html>
