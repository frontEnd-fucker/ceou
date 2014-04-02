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
                <li><a href="index.jsp">首页</a></li>                
                <li><a href="business!showbeizeng">倍增商学院</a></li>
                <li class="sub-nav">
                	<a href="business!show">商学院</a>     
                    <ul>
                        <li><a class="sub-a" href="business!showBusinessList?catId=3&ifceou=1">企业商学院</a></li>
                    </ul>                                
                </li>                
                <li><a href="course!show">培训课程</a></li>
                <li><a href="teacher!show">名师堂</a></li>                  
                <li><a href="memberIntro.jsp">在线购买</a></li>
                <!-- <li class="nav-login" id="J_nav-login">
                	<a class="nav-login-btn" href="memberIntro.jsp">在线购买</a>
                </li> -->
            </ul>
            <div class="searchbar">
            	<input type="text" value="请输入关键字" onfocus="if(this.value==this.defaultValue) this.value = ''" onblur="if(this.value=='') this.value = this.defaultValue"/>
            </div>
        </div>
    </div><!-- end nav -->
</div><!-- end header -->












