<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>
<s:if test="status==0 && recommend==-1">浏览记录</s:if>
<s:if test="status==1 && recommend==-1">收藏课程</s:if>
<s:if test="status==-1 && recommend==-1">我的课程</s:if>
<s:if test="status==-1 && recommend==0">试听课程</s:if>
<s:if test="status==-1 && recommend==1">推荐课程</s:if>
</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
</head>

<body id="timeline">

<jsp:include page="../head.jsp" flush="true" />

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
        		<!--  	<li><a href="personal!showMyCou?status=1&recommend=-1&page=1">我的收藏</a></li>-->            
                <li><a href="personal!showMyCou?status=-1&recommend=-1&page=1">我的课程</a></li>
                <li><a href="personal!showMyCou?status=0&recommend=-1&page=1">学习记录</a></li>
            </ul>
        </div>
        <!-- 客户端下载 -->
        <div class="gray-box">
        	<h2 class="gray-title"><img src="img/khdxz.jpg" /></h2>
            <img style="margin: 30px 0 25px 40px;" src="img/RQ.jpg" />
        </div>
    </div><!-- end passport-l -->
    
    <!-- passport-r-->
    <div class="fr passport-r">
        <!-- 我的课程 -->
        <div class="plain-box my-course cf">
        	<h2 class="rect-title">
        		<span>
       	 			<s:if test="status==0 && recommend==-1">浏览记录</s:if>
					<s:if test="status==1 && recommend==-1">收藏课程</s:if>
					<s:if test="status==-1 && recommend==-1">我的课程</s:if>
					<s:if test="status==-1 && recommend==0">试听课程</s:if>
					<s:if test="status==-1 && recommend==1">推荐课程</s:if>
 	      		</span>
        	</h2>
			<div class="courses">
            	<s:iterator value="myCourseList">
                    <div class="course">
	                	<div class="course-hd"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="<s:property value="coupicurl"/>" /></a></div>
	                    <div class="course-bd">
	                    	<p><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></p>
	                    	<h3>讲师：<s:property value="coulecturer"/> </h3>
	                    </div>
	                    <div class="course-ft">
	                    	<a class="start" href="#">开始学习</a>
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
		                    <a class="page-home" href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=1">首页</a>
		                    <s:if test="page==1">
		                		<a href="#">上一页</a>
		                	</s:if>
		                	<s:else>
		                		<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property value="page-1"/>" >上一页</a>
		                	</s:else>
		                    
		                    
		                    <!-- test1 begin -->
		                    <s:if test="%{(page<=3)}">
		                     	<s:if test="%{(totalPage<=5)}">
		                         	<s:iterator begin="1" end="totalPage" var="p">
										<s:if test="#p==page">
		                    				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />" class="page-home"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>		                     
		                     	</s:if>
			                 	<s:else>
			                 		<s:iterator begin="1" end="5" var="p">
										<s:if test="#p==page">
		                    				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />" class="page-home"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />"><s:property/></a>
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
		                    				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />" class="page-home"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>
		                    	</s:if>
		                    	<s:else>
		                    	 	<s:iterator begin="totalPage-4" end="totalPage" var="p">
		                    			<s:if test="#p==page">
		                    				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />" class="page-home"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property />"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>
		                    	</s:else>
		                    </s:if>
		                    <!-- test2 end  -->
		                    
		                    <s:if test="page==totalPage">
		                    	<a href="#">下一页</a>
		                    </s:if>
		                    <s:else>
		                    	<a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property value="page+1"/>">下一页</a>
		                    </s:else>
		                    <a href="personal!showMyCou?status=<s:property value="status"/>&recommend=<s:property value="recommend"/>&page=<s:property value="totalPage"/>">末页</a>
                        </div>
                        <div class="page-skip">
                        	<form action="personal!showMyCou" >
                        		<input type="hidden" name="status" value="<s:property value="status"/>"/>
                        		<input type="hidden" name="recommend" value="<s:property value="recommend"/>"/>
                            	跳至第<input class="page-input" type="text" name="page" />页
                            	<input type="submit" value="确定"/>
                            </form>  
                    	</div>
                    </div><!-- end page-nav -->                 
    </div><!-- end passport-r-->
    
    <div class="ad"><img src="img/tuozhanyin.jpg" /></div>
</div><!-- main -->

<div class="clear-both"></div>

<jsp:include page="../footer.jsp" flush="true" />

</body>
</html>








