<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!-- header -->
<div id="header">
    <div class="header-top wrapper cf">
        <div class="header-top-l">
            <strong>欢迎来到中国企业在线大学！</strong>
            <div class="top-login">
                <form>
                    <!--帐号<input class="login-name" type="text" value="帐号或手机号" onfocus="if(this.value==this.defaultValue) this.value = ''" onblur="if(this.value=='') this.value = this.defaultValue" />-->
                    帐号<input class="login-name" type="text" />
                    密码<input class="login-pwd" type="password" />
                    <input class="loginBtn" type="submit" value="登录" />
                    <a href="#">忘记密码？</a>
                </form>
            </div>
        </div>
        <div class="header-top-r">
        	<ul>
            	<li><a href="#">社区</a></li>
                <li class="separator">|</li>
                <li><a href="#">马上优惠</a></li>
                <li class="separator">|</li>
                <li><a>服务热线：400-700-7000</a></li>
            </ul>
        </div>        
    </div>
    <div class="header-banner wrapper"><img src="img/logo.png" /></div>
    
    <!-- nav -->
    <div id="nav">
        <div class="wrapper">
            <ul>
                <li><a href="index.jsp"><span>首页</span></a></li>
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












