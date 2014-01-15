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

<!-- header -->
<div id="header">
    <div class="header-top wrapper cf">
        <div class="header-top-l">
            <h3>欢迎来到中国企业在线大学！</h3>
            <form>
            	<label>帐号<input type="text" value="帐号或手机号" onfocus="if(this.value==this.defaultValue) this.value = ''" onblur="if(this.value=='') this.value = this.defaultValue" /></label>
                <label>密码<input type="password" /></label>
                <input class="submitBtn" type="submit" value="登录" />
                <a href="#">忘记密码？</a>
            </form>
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
    <div class="header-banner wrapper"><img src="img/header-banner.jpg" /></div>
    
    <!-- nav -->
    <div id="nav">
        <div class="wrapper">
            <ul>
                <li><a href="#">首页</a></li>
                <li><a href="#">培训课程</a></li>
                <li><a href="#">名师堂</a></li>
                <li><a href="#">商学院</a></li>
                <li><a href="#">在线学历院</a></li>
                <li><a href="#">在线服务</a></li>
                <li><a href="#">在线购买</a></li>
            </ul>
            <div class="searchbar">
            	<input type="text" value="请输入关键字"/>
            </div>
        </div>
    </div><!-- end nav -->
</div><!-- end header -->

<!-- main -->
<div id="main" class="wrapper">
	<div id="slider"><img src="img/slider2.jpg" /></div>
    
	<div class="floor">
    
    	<!-- floor-l -->
    	<div class="floor-l">
        	<div class="crumb">
            	<a href="#">首页</a>
                <span>></span>
                <a href="#">商学院</a>
                <span>></span>
                <a href="#">倍增学院</a>
                <span>></span>
                <a href="#">课件</a>
            </div>
            
            <!-- cate-box --> 
            <div class="cate-box">
            	<h2 class="cate-title"><i></i><a href="#">更多>></a></h2>
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
                            	<h3><s:property value="artname"/></h3>
                                <p class="kejian-meta">
                                	来源：<span class="from"><s:property value="artfrom"/></span>&nbsp;&nbsp;|&nbsp;
                                                                                               点击数：<span class="clickCount">55555555555555555</span>&nbsp;&nbsp;|&nbsp;
                                                                                               发布时间：<span class="pub-date"><s:property value="updatetime"/></span>                             
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
            	<h2>最新新闻<a class="more" href="#">更多>></a></h2>
                <dl>
                	<dt>2013年10月12日</dt>
                    <dd><a href="#">产品实现策划审核及顾客有关的资源</a></dd>
                    <dd><a href="#">管理责任的审核要点</a></dd>
                </dl>
                <dl>
                	<dt>2013年10月12日</dt>
                    <dd><a href="#">产品实现策划审核及顾客有关的资源</a></dd>
                    <dd><a href="#">管理责任的审核要点</a></dd>
                </dl>                
                <dl class="last">
                	<dt>2013年10月12日</dt>
                    <dd><a href="#">产品实现策划审核及顾客有关的资源</a></dd>
                    <dd><a href="#">管理责任的审核要点</a></dd>
                </dl>                
            </div>                                 
            
        	<div class="aside-box weibo-con">
            	<h2>华誉在线专家微博<a class="more" href="#">更多>></a></h2>
        	</div>                                              
        </div><!-- end floor-r -->
    </div>
</div><!-- end main -->

<div class="clear-both"></div>

<div class="ad"><img src="img/ad-placeholder.jpg" /></div>

<!-- footer -->
<div id="footer">
	<!--合作伙伴-->
    <div class="partner wrapper">
    	<h2><span>合作伙伴</span></h2>
        <ul class="cf">
        	<li><a href="#">somesome class</a></li>
            <li>|</li>
        	<li><a href="#">somesome class</a></li>
            <li>|</li>
        	<li><a href="#">somesome class</a></li>
            <li>|</li>            
        	<li><a href="#">somesome class</a></li>
            <li>|</li>
        	<li><a href="#">somesome class</a></li>
            <li>|</li>                        
        	<li><a href="#">somesome class</a></li>
            <li>|</li>
        	<li><a href="#">somesome class</a></li>
            <li>|</li>
        	<li><a href="#">somesome class</a></li>
            <li>|</li>
        	<li><a href="#">somesome class</a></li>
            <li>|</li>                                                
        	<li><a href="#">somesome class</a></li>
            <li>|</li>            
        </ul>
    </div><!-- end 合作伙伴 -->
    
    <div class="footer-top">
    	<div class="wrapper"></div>
    </div>
    <div class="footer-bottom">
    	<div class="wrapper cf">
        	<ul>
            	<li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
            </ul>
            
        	<ul>
            	<li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
            </ul>   
              
        	<ul>
            	<li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li class="jiameng"><a href="#"><img src="img/jiamen.jpg" /></a></li>
            </ul>  
             
        	<ul>
            	<li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
            </ul> 
            
        	<ul>
            	<li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">公司简介</a></li>
            </ul>                                              
        </div>
    </div>
</div><!-- end footer -->
</body>
</html>
