<%@ page language="java" import="com.ceou.bean.UserBean" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!-- header -->
<div id="header">
    <div class="header-con cf">
        <div class="logo">
            <a href="http://www.ceou.com.cn"><img src="img/logo.png" /></a>
        </div>
        <% UserBean usb=(UserBean)session.getAttribute("userBean");%> 
		<% if(usb!=null){ %>
        <div class="header-top-r">
        	<ul class="topbar_2">                
                <li class="top-r-subnav">
                	<a class="username" href="#"><%= usb.getName()%></a>
                    <a class="hide" href="personal!show">个人中心</a>
                    <a class="hide" href="user!outLogin">退出</a>
                </li>
                <li class="separator show">|</li>
                <li class="show">服务热线：400-700-7000</li>
            </ul>
        </div>
        <%}else{ %>
        <div class="header-top-r">
        	<ul class="topbar_1">
                <li><a href="login.html">登录</a></li>
                <li class="separator">|</li>
                <li><a href="reg.jsp">免费注册</a></li>
                <li class="separator show">|</li>
                <li class="show">服务热线：0755-22315621</li>                
	        </ul>
        </div>    
       <%} %>    
    </div>
   
    
    <!-- nav -->
    <div id="nav">
        <div class="wrapper">
            <ul>
                <li><a href="http://www.ceou.com.cn">首页</a></li>                
                <li><a href="business!showbeizeng">倍增商学院</a></li>
                <li class="sub-nav">
                	<a href="business!show">商学院</a>     
                    <ul>
                        <li><a href="business!showBusinessList?catId=3&ifceou=1">企业商学院</a></li>
                    </ul>                                
                </li>                
                <li><a href="course!show">培训课程</a></li>
                <li><a href="teacher!show">名师堂</a></li>                  
                <!--<li><a href="#"><span>在线服务</span></a></li>-->
                <!--<li><a href="#"><span>在线购买</span></a></li>-->
                <li class="nav-login" id="J_nav-login">
                	<a class="nav-login-btn" href="activity!activityShow">活动直击</a>
                    <div id="popout-login" class="J_popout-login">                    	
                    	<p class="input-con">
                        	<label for="username">帐号：</label>
                            <input id="username" class="text" type="text" />                           
                        </p>
                        <p class="input-con" style="margin-bottom: 40px;" >
                        	<label for="pwd">密码：</label>
                            <input id="pwd" class="text" type="password" />
                        </p>
                        <span id="J_popout-login-tips" class="popout-login-tips">密码错误</span>
                        <p class="input-con">
                        	<a id="J_loginBtn" class="h-loginBtn" href="javascript:;">登录</a>
                            <a href="findPwdStep1.jsp">忘记密码</a>
                            |                                
                            <a href="reg.jsp">注册</a>
                        </p>
                    </div>
                </li>
            </ul>
            <div class="searchbar">
            	<input type="text" value="请输入关键字" onfocus="if(this.value==this.defaultValue) this.value = ''" onblur="if(this.value=='') this.value = this.defaultValue"/>
            </div>
        </div>
    </div><!-- end nav -->
</div><!-- end header -->












