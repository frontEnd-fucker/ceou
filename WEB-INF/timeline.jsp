<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
            <a class="name" href="#"><s:property value="userBean.name"/> </a>
            <a class="setting-btn" href="personal!findUserById">个人设置</a>
        </div>
        <!-- 我的学习 -->
        <div class="gray-box">
        	<h2 class="gray-title"><img src="img/wdx.jpg" /></h2>
            <ul class="gray-list">
            	<li><a href="personal!showUCRecord?status=1&page=1">我的收藏</a></li>
                <li><a href="personal!showMyCou?page=1">我的课程</a></li>
                <li><a href="personal!showUCRecord?status=0&page=1">学习记录</a></li>
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
            	<s:iterator value="UcrBean">
                    <div class="course">
	                	<div class="course-hd"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="<s:property value="coupicurl"/>" /></a></div>
	                    <div class="course-bd">
	                    	<p><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></p>
	                    	<h3>讲师：<s:property value="coulecturer"/> </h3>
	                    </div>
	                    <div class="course-ft">
	                    	<a class="start" href="course!showCouDetail?couid=<s:property value="couid"/>">开始学习</a>
	                        <a class="view-count" href="#">3518</a>
	                        <a class="comment-count" href="#">3518</a>
	                    </div>
                	</div>
                 </s:iterator>                                         
            </div>
        </div>   
                   <!-- page-nav -->
                   <div class="page-nav cf">
                    	<div class="page-num">
		                    <a class="page-home" href="personal!showUCRecord?page=1&status=0">首页</a>
		                    <s:if test="page==1">
		                		<a href="#">上一页</a>
		                	</s:if>
		                	<s:else>
		                		<a href="personal!showUCRecord?page=<s:property value="page-1"/>&status=0" >上一页</a>
		                	</s:else>
		                    
		                    
		                    <!-- test1 begin -->
		                    <s:if test="%{(page<=3)}">
		                     	<s:if test="%{(totalPage<=5)}">
		                         	<s:iterator begin="1" end="totalPage" var="p">
										<s:if test="#p==page">
		                    				<a href="personal!showUCRecord?page=<s:property />&status=0" class="page-home"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="personal!showUCRecord?page=<s:property />&status=0"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>		                     
		                     	</s:if>
			                 	<s:else>
			                 		<s:iterator begin="1" end="5" var="p">
										<s:if test="#p==page">
		                    				<a href="personal!showUCRecord?page=<s:property />&status=0" class="page-home"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="personal!showUCRecord?page=<s:property />&status=0"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>		
			                 	</s:else>		                 			                 
		                    </s:if>
		                   <!-- test1 end -->   
		                   <!-- test2 begin -->  
		                    <s:if test="%{page>3}">
		                    	<s:if test="%{totalPage-page>2}">
		                      		<s:iterator begin="page-2" end="page+2" var="p">
		                    			<s:if test="#p==page">
		                    				<a href="personal!showUCRecord?page=<s:property />&status=0" class="page-home"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="personal!showUCRecord?page=<s:property />&status=0"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>
		                    	</s:if>
		                    	<s:else>
		                    	 	<s:iterator begin="totalPage-4" end="totalPage" var="p">
		                    			<s:if test="#p==page">
		                    				<a href="personal!showUCRecord?page=<s:property />&status=0" class="page-home"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="personal!showUCRecord?page=<s:property />&status=0"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>
		                    	</s:else>
		                    </s:if>
		                    <!-- test2 end  -->
		                    
		                    <s:if test="page==totalPage">
		                    	<a href="#">下一页</a>
		                    </s:if>
		                    <s:else>
		                    	<a href="personal!showUCRecord?page=<s:property value="page+1"/>&status=0">下一页</a>
		                    </s:else>
		                    <a href="personal!showUCRecord?page=<s:property value="totalPage"/>&status=0">末页</a>
                        </div>
                        <div class="page-skip">
                        	<form action="personal!showUCRecord" method="post">
                        		<input type="hidden" name="status" value="0"/>
                            	跳至第<input class="page-input" type="text" name="page" />页
                            	<input type="submit" value="确定"/>
                            </form>  
                    	</div>
                    </div><!-- end page-nav -->                 
    </div><!-- end passport-r -->
        
</div><!-- main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />

</body>
</html>








