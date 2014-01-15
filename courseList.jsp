<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>倍增学院</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
</head>

<body id="course-list">

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	<div class="ad"><img src="img/slider2.jpg" /></div>
    <div class="portal">
    	<a href="#"><img src="img/portal1.jpg" /></a>
        <a href="#"><img src="img/portal2.jpg" /></a>
        <a href="#"><img src="img/portal3.jpg" /></a>
        <a href="#"><img src="img/portal4.jpg" /></a>
    </div>
    
	<div class="floor">
    
    	<!-- floor-l -->
    	<div class="floor-l">
        	<div class="crumb">
            	<a href="#">首页</a>
                <span>|</span>
                <a href="#">培训课程</a>
            </div>
            
            <!-- cate-box --> 
            <div class="cate-box">
            	<h2 class="cate-title"><i></i><a href="#">更多>></a></h2>
                <div class="cate-content">
                	<dl class="cf">
                    	<dt><a href="business!showEnterpriseCou?catId=4&couPosition=1">效率提升系列</a></dt>
                    	<dt><a href="business!showEnterpriseCou?catId=4&couPosition=2">员工管理系列</a></dt>
                    	<dt><a href="business!showEnterpriseCou?catId=4&couPosition=3">领导力系列</a></dt>
                    	<dt><a href="business!showEnterpriseCou?catId=4&couPosition=4">业务管理系列</a></dt>
                    </dl>                                      
                </div>
            </div><!-- end cate-box -->   
            
            <div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/beixunkechen.jpg" /></h2>            
                </div><!-- end tile-top -->  
                
                <div class="tile-content cf">
                    <s:iterator value="bzCouListByTh">
	                	<dl class="course-intro cf">
	                    	<dt>
	                    	<a href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="img/kecheng-list.jpg" /></a>
	                    	</dt>
	                        <dd>
	                        	<h3>
	                        	<a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a>
	                        	</h3>
	                            <p class="course-meta">
	                            	<span>讲师：<s:property value="coulecturer"/></span>
	                                <span class="rate">评分：<s:property value="couscore"/></span>
	                                <span>发布时间:<s:date name="updatetime" format="yyyy-MM-dd" /></span>
	                            </p>
	                            <p class="course-intro-content"><s:property value="couprofile"/></p>
	                        </dd>
	                        <a class="read-more" href="course!showCouDetail?couid=<s:property value="couid"/>"></a>
	                    </dl>
                    </s:iterator>
                    
                    <div class="page-nav cf">
                    	<div class="page-num">
		                    <a class="page-home" href="business!showEnterpriseCou?catId=4&couPosition=<s:property value="couPosition"/>&page=1">首页</a>
		                    <s:if test="page==1">
		                		<a href="#">上一页</a>
		                	</s:if>
		                	<s:else>
		                		<a href="business!showEnterpriseCou?catId=4&couPosition=<s:property value="couPosition"/>&page=<s:property value="page-1"/>" >上一页</a>
		                	</s:else>
		                    
		                    <s:iterator begin="1" end="totalPage" var="p">
		                    	<s:if test="#p==page">
		                    		<a href="business!showEnterpriseCou?catId=4&couPosition=<s:property value="couPosition"/>&page=<s:property />" class="page-home"><s:property/></a>
		                    	</s:if>
		                    	<s:else>
		                    		<a href="business!showEnterpriseCou?catId=4&couPosition=<s:property value="couPosition"/>&page=<s:property />"><s:property/></a>
		                    	</s:else>
		                    </s:iterator>
		                    
		                    <s:if test="page==totalPage">
		                    	<a href="#">下一页</a>
		                    </s:if>
		                    <s:else>
		                    	<a href="business!showEnterpriseCou?catId=4&couPosition=<s:property value="couPosition"/>&page=<s:property value="page+1"/>">下一页</a>
		                    </s:else>
		                    <a href="business!showEnterpriseCou?catId=4&couPosition=<s:property value="couPosition"/>&page=<s:property value="totalPage"/>">末页</a>
                        </div>
                        <div class="page-skip">
                        	<form action="business!showEnterpriseCou">
                        		<input type="hidden" name="catId" value="4"/>
                        		<input type="hidden" name="couPosition" value="<s:property value="couPosition"/>"/>
                            	跳至第<input type="text" name="page" />页
                            	<input type="submit" value="跳转"/>
                            </form> 
                            	总共<s:property value="totalPage"/>页
                        </div>
                    </div>                                     
                </div>                             	
            </div>         
        </div><!-- end floor-l -->
        
        <!-- floor-r -->
        <div class="floor-r">
        	<div class="weixin-con"><img src="img/weixin.jpg" /></div>
            <div class="weixin-con"><img src="img/kechenyoushi.jpg" /></div>
        	<div class="aside-box">
            	<h2>最新课程<a class="more" href="#">更多>></a></h2>
               	<s:iterator value="randCourseList">
	                <dl>
	                	<dt><s:property value="updatetime"/></dt>
	                    <dd><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></dd>
	                </dl> 
                </s:iterator>
            </div> 
            
            <div class="aside-box">
            	<h2 class="longer">讲师人气排名<a class="more" href="#">更多>></a></h2>
                <div class="hot-teacher">
                    <ul class="color-list">
                        <s:iterator value="randCourseList">
                        	<li class="item_7"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                        </s:iterator>
                    </ul>
                </div>            
            </div>        
            
            <div class="aside-box">
            	<h2 class="longer">热点管理文章<a class="more" href="#">更多>></a></h2>
                <div class="hot-post">
                    <ul class="color-list">
                        <s:iterator value="randArticleList">
                        	<li><a href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artname"/></a></li>
                        </s:iterator>
                    </ul>
                </div>            
            </div>
            
        	<div class="aside-box weibo-con cf">
            	<h2>华誉在线专家微博<a class="more" href="#">更多>></a></h2>
                <ul class="weibo-list cf">
                	<li>
                    	<a href="#"><img src="img/aizhipeng.jpg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>    
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>   
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>                                                                                              
                </ul>
                <a class="green-btn" href="#">一键关注</a>
        	</div>                                           
        </div><!-- end floor-r -->
    </div>
</div><!-- end main -->

<div class="clear-both"></div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
