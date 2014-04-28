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

<body id="myCourse">

<!-- header -->	
<header>
	<div class="wrapper">
		<div class="fl">欢迎来到中国企业在线大学</div>
		<div class="fr">
			<a class="avatar" href="personal!show"><img src="<s:property value="perBean.smallpic"/>"></a>
			<a class="user-name" href="#"><s:property value="perBean.name"/> </a>
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
			<li><a href="personal!toAvatar">上传头像</a></li>

			<hr>

			<h2><i class="icon-book dib"></i>我的学习</h2>
			<li><a href="personal!show">个人中心</a></li>
			<li><a <s:if test="status==-1 && recommend==-1">class="curr"</s:if> href="personal!showMyCou?status=-1&recommend=-1&page=1">我的课程</a></li>
			<li><a <s:if test="status==0 && recommend==-1">class="curr"</s:if> href="personal!showMyCou?status=0&recommend=-1&page=1">学习记录</a></li>
			<li><a <s:if test="status==-1 && recommend==0">class="curr"</s:if> href="personal!showMyCou?status=-1&recommend=0&page=1">试听课程</a></li>
			<li><a <s:if test="status==-1 && recommend==1">class="curr"</s:if> href="personal!showMyCou?status=-1&recommend=1&page=1">推荐课程</a></li>
		</ul>
	</aside>

	<!-- 内容 -->
	<div id="content">

		<!-- 我的课程 -->
		<section class="mod-wrapper">
			<h2>
				<s:if test="status==-1 && recommend==-1">我的课程</s:if>
				<s:if test="status==0 && recommend==-1">学习记录</s:if>
				<s:if test="status==-1 && recommend==0">试听课程</s:if>
				<s:if test="status==-1 && recommend==1">推荐课程</s:if>
			</h2>
			<ul class="mod-video-list cf">
				<s:iterator value="myCourseList">
					<li class="mod-video-item">
						<div class="hd">
							<a href="course!showCouDetail?couid=<s:property value="couid"/>">
								<img src="<s:property value="coupicurl"/>" onError="this.onerror=null;this.src='whimg/userCenter/ph.jpg';">
							</a>
						</div>
						<div class="bd">
							<div class="pd">
								<p class="author-name">讲师：<a href="teacher!showCouByTeacher?thid=<s:property value="teacherid"/>&page=1"><s:property value="coulecturer"/></a></p>
								<p class="author-title"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></p>
								<a class="btn-learn fl" href="course!showCouDetail?couid=<s:property value="couid"/>">开始学习</a>
							</div>
						</div>
					</li>
				</s:iterator>
			</ul>
		</section>
		<!-- end 我的课程 -->

		<!-- page_nav -->
		<div class="page-nav cf">
	
			<!-- previous page -->
			<s:if test="%{totalPage<=1}">
				
			</s:if>
			<s:else>
				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=1">首页</a>
                <s:if test="page==1">
                	<a href="#">上一页</a>
                </s:if>
                <s:else>
                	<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property value="page-1"/>" >上一页</a>
                </s:else>
			</s:else>
			
            <!-- end previous page -->
            
            <!-- test1 -->
            
        	<s:if test="%{totalPage<=5}">
        		<s:if test="%{totalPage<=1}">
        			<s:if test="%{totalPage==0}">
        				<p class="nothing">你暂时没有课程哦:(</p>
        			</s:if>
        		</s:if>
        		<s:else>
        			<s:iterator begin="1" end="totalPage" var="p">
						<s:if test="#p==page">
                    		<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />" class="curr"><s:property/></a>
                    	</s:if>
                    	<s:else>
                    		<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />"><s:property/></a>
                    	</s:else>
                	</s:iterator>
        		</s:else>
        	</s:if>
        	
        	<!-- end test1 -->
        	
        	<!-- test2 -->
        	<s:else>
        		<s:if test="%{page<=3}">
        			<s:iterator begin="1" end="5" var="p">
						<s:if test="#p==page">
                			<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />" class="curr"><s:property/></a>
                		</s:if>
                		<s:else>
                			<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />"><s:property/></a>
                		</s:else>
                	</s:iterator>
        		</s:if>
        		<s:else>
        			<s:if test="%{page>=(totalPage-3)}">
        				<s:iterator begin="totalPage-4" end="totalPage" var="p">
                			<s:if test="#p==page">
                				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />" class="curr"><s:property/></a>
                			</s:if>
                			<s:else>
                				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />"><s:property/></a>
                			</s:else>
                		</s:iterator>
        			</s:if>
        			<s:else>
        				<s:iterator begin="page-2" end="page+2" var="p">
                			<s:if test="#p==page">
                				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />" class="curr"><s:property/></a>
                			</s:if>
                			<s:else>
                				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />"><s:property/></a>
                			</s:else>
                		</s:iterator>
        			</s:else>
        		</s:else>
        	</s:else>        	
        	<!-- end test2 -->
        	
        	<!-- next page -->
    		<s:if test="%{totalPage<=1}">
    		
    		</s:if>
    		<s:else>
    			<s:if test="page==totalPage">
            		<a href="#">下一页</a>
            	</s:if>
                <s:else>
                	<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property value="page+1"/>">下一页</a>
                </s:else>
                <a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property value="totalPage"/>">末页</a>
				<form action="personal!showMyCou" >
					<input type="hidden" name="status" value="<s:property value="status"/>"/>
					<input type="hidden" name="recommend" value="<s:property value="recommend"/>"/>
					第<input class="page-input" type="text" name="page" />页
					<input class="page-nav-submit" type="submit" value="跳转"/>
				</form>                 
    		</s:else>
        	<!-- end next page -->
        </div>
        <!-- end page_nav --> 			
	</div>
	<!-- end content -->
</div>
<!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />

<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/scirpt>')</script>
<script src="js/userCenter.js"></script>
</body>
</html>