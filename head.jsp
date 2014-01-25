<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!-- header -->
<div id="header">
    <div class="header-con cf">
        <div class="logo">
            <a href="http://www.ceou.com.cn"><img src="img/logo.png" /></a>
        </div>
       <!-- <div class="header-top-r">
        	<ul class="topbar_2">                
                <li class="top-r-subnav">
                	<a class="username" href="#">李某某</a>
                    <a class="hide" href="passport.jsp">个人中心</a>
                    <a class="hide" href="#">退出</a>
                </li>
                <li class="separator show">|</li>
                <li class="show">服务热线：400-700-7000</li>
            </ul>
        </div>-->
        <div class="header-top-r">
        	<ul class="topbar_1">
                <li><a href="login.html">登录</a></li>
                <li class="separator">|</li>
                <li><a href="reg.html">免费注册</a></li>
                <li class="separator show">|</li>
                <li class="show">服务热线：400-700-7000</li>                
	        </ul>
        </div>        
    </div>
    
    <!-- nav -->
    <div id="nav">
        <div class="wrapper">
            <ul>
                <li><a href="http://www.ceou.com.cn"><span>首页</span></a></li>
                <li><a href="business!showbeizeng"><span>倍增商学院</span></a></li>
                <li class="sub-nav">
                	<a href="business!show"><span>商学院</span></a>     
                    <ul>
                        <li><a href="business!showEnterpriseCou?catId=4&ifceou=-1&couPosition=-1">企业商学院</a></li>
                    </ul>                                
                </li>                
                <li><a href="course!show"><span>培训课程</span></a></li>
                <li><a href="teacher!show"><span>名师堂</span></a></li>
                <li><a href="edu!show"><span>在线学历院</span></a>                    
                </li>
                <li><a href="#"><span>在线服务</span></a></li>
                <li><a href="#"><span>在线购买</span></a></li>
            </ul>
            <div class="searchbar">
            	<input type="text" value="请输入关键字" onfocus="if(this.value==this.defaultValue) this.value = ''" onblur="if(this.value=='') this.value = this.defaultValue"/>
            </div>
        </div>
    </div><!-- end nav -->
</div><!-- end header -->












