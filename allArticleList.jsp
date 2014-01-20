<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>bizCollegeList</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
</head>

<body id="course-list">

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	<div id="slider"><img src="img/slider2.jpg" /></div>
    
	<div class="floor">
    
    	<!-- floor-l -->
    	<div class="floor-l">
        	<div class="crumb">
            	<a href="#">首页</a>
                <span>></span>
                <a href="#">课件</a>
            </div>
            
            <!-- cate-box --> 
            <div class="cate-box">
            	<h2 class="cate-title"><i></i></h2>
                <div class="cate-content">
                	<dl class="cf">
                        <dd>
                        	<a href="business!showArticleByCondition?articleCatId=3&artcategory=1">电子商务</a>
                            <a href="business!showArticleByCondition?articleCatId=3&artcategory=2">客户服务</a>
                            <a href="business!showArticleByCondition?articleCatId=3&artcategory=3">领导力</a>
                        	<a href="business!showArticleByCondition?articleCatId=3&artcategory=4">名师名家</a>
                            <a href="business!showArticleByCondition?articleCatId=3&artcategory=5">企业培训</a>
                            <a href="business!showArticleByCondition?articleCatId=3&artcategory=6">企业战略</a>
                        	<a href="business!showArticleByCondition?articleCatId=3&artcategory=7">人力资源</a>
                            <a href="business!showArticleByCondition?articleCatId=3&artcategory=8">市场营销</a>
                            <a href="business!showArticleByCondition?articleCatId=3&artcategory=9">职场兵法</a>
                        	<a href="business!showArticleByCondition?articleCatId=3&artcategory=10">职场励志</a>
                        </dd>                        
                    </dl>                                     
                </div>
            </div><!-- end cate-box -->   
            
            <div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/beixunkechen.jpg" /></h2>            
                </div><!-- end tile-top -->  
                
                <div class="tile-content cf">
                	<div class="kejians">
                        <s:iterator value="allArticleByCon">
                    	<div class="kejian cf">
                        	<div class="kejian-hd">
                            	<h3>
                            		<a href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artname"/></a>
								</h3>
                                <p class="kejian-meta">
                                	来源：<span class="from"><s:property value="artfrom"/></span>&nbsp;&nbsp;|&nbsp;
                                    点击数：<span class="clickCount">53819</span>&nbsp;&nbsp;|&nbsp;
                                    发布时间：<span class="pub-date"><s:date name="updatetime" format="yyyy-MM-dd" /></span>                             
                                </p>
                            </div>
                            <div class="kejian-bd">
                            	<s:property value="artprofile"/>
                            </div>
                            <a class="read-more" href="business!showDetailArticle?artid=<s:property value="artid"/>"></a>
                        </div>
                        </s:iterator>
                    </div>                 
                    
                    <div class="page-nav cf">
                    	<div class="page-num">
		                    <a class="page-home" href="business!showArticleByCondition?articleCatId=3&artcategory=<s:property value="artcategory"/>&page=1">首页</a>
		                    <s:if test="page==1">
		                		<a href="#">上一页</a>
		                	</s:if>
		                	<s:else>
		                		<a href="business!showArticleByCondition?articleCatId=3&artcategory=<s:property value="artcategory"/>&page=<s:property value="page-1"/>" >上一页</a>
		                	</s:else>
		                    
		                    <s:iterator begin="1" end="totalPage" var="p">
		                    	<s:if test="#p==page">
		                    		<a href="business!showArticleByCondition?articleCatId=3&artcategory=<s:property value="artcategory"/>&page=<s:property />" class="page-home"><s:property/></a>
		                    	</s:if>
		                    	<s:else>
		                    		<a href="business!showArticleByCondition?articleCatId=3&artcategory=<s:property value="artcategory"/>&page=<s:property />"><s:property/></a>
		                    	</s:else>
		                    </s:iterator>
		                    
		                    <s:if test="page==totalPage">
		                    	<a href="#">下一页</a>
		                    </s:if>
		                    <s:else>
		                    	<a href="business!showArticleByCondition?articleCatId=3&artcategory=<s:property value="artcategory"/>&page=<s:property value="page+1"/>">下一页</a>
		                    </s:else>
		                    <a href="business!showArticleByCondition?articleCatId=3&artcategory=<s:property value="artcategory"/>&page=<s:property value="totalPage"/>">末页</a>
                        </div>
                        <div class="page-skip">
                        	<form action="business!showArticleByCondition">
                        		<input type="hidden" name="articleCatId" value="3"/>
                        		<input type="hidden" name="artcategory" value="<s:property value="artcategory"/>"/>
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
            <div class="portal-vertical">
                <a href="#"><img src="img/portal1.jpg" /></a>
                <a href="#"><img src="img/portal2.jpg" /></a>
                <a href="#"><img src="img/portal3.jpg" /></a>
                <a href="#"><img src="img/portal4.jpg" /></a>
            </div>          
        	<div class="weixin-con"><img src="img/weixin.jpg" /></div>
        	<div class="aside-box">
            	<h2>最新新闻<a class="more" href="course!showList?couPosition=-1&couSkill=-1&couIndustry=-1&page=1">更多>></a></h2>
                <s:iterator value="randCourseList">
	                <dl>
	                	<dt><s:date name="updatetime" format="yyyy-MM-dd" /></dt>
	                    <dd><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></dd>
	                </dl> 
                </s:iterator>                
            </div>                               
            
        	<div class="aside-box weibo-con">
            	<h2>华誉在线专家微博<a class="more" href="#">更多>></a></h2>
        	</div>                                              
        </div><!-- end floor-r -->
    </div>
</div><!-- end main -->

<div class="clear-both"></div>

<div class="ad"><img src="img/ad-placeholder.jpg" /></div>

<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
