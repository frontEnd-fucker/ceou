<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册页面</title>
<link href="css/reg.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/reg.js"></script>
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

<!-- main -->
<div id="main">
    <div class="form">
    	<form name="reg-form" action="userReg" method="post">
        <h2>注册新会员</h2>
        <div class="input-con cf">
            <label for="username">用户名</label>
            <input type="text" id="username" name="username" />  
            <span class="tips" id="J_usernameTips">可使用字母、数字或下划线</span>
        </div>
        <div class="input-con cf">
            <label for="useremail">email</label>
            <input type="text" id="useremail" name="useremail" />
            <span class="tips" id="J_useremailTips">请输入正确的邮箱地址</span>        
        </div>
        <div class="input-con cf">
            <label for="pwd1">密码</label>
            <input type="password" id="pwd1" name="pwd1" />
            <span class="tips" id="J_pwd1Tips">6-20位字符。可使用字母、数字或符号的组合</span>         
        </div>
        <div class="input-con cf">
            <label for="pwd2">确认密码</label>
            <input type="password" id="pwd2" name="pwd" />
            <span class="tips" id="J_pwd2Tips">请再次输入密码</span>        
        </div>
        <div class="input-con cf">
            <label for="authcode">验证码</label>
            <input type="text" id="authcode" name="authcode" />
            <img id="auth-img" style="height: 22px; float: left; padding-right: 5px;" src="imageCode" />
            <p class="fl">            	
                <span>看不清？</span>
                <a id="J_changeImg" href="javascript:;">换一张</a>
            </p>        
            <span id="J_authcodeTips" style="padding-left: 20px; margin-left: 5px;"></span>                                                   
        </div>  
        <div class="input-con">
            <input id="J_regSubmit" class="reg-btn" type="button" value="立即注册" />
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
