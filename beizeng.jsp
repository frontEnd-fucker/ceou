<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>beizeng</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
</head>

<body id="bizCollege">

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	<div class="ad">
    	<img src="img/slider2.jpg">
    </div>
	<div class="floor">
    	<div class="floor-l">
        	<div class="crumb">
            	<a href="#">首页</a>
                <span>></span>
                <a href="#">商学院</a>
                <span>></span>
                <a href="#">倍增学院</a>
            </div>
            
            <!-- 最新课程 -->
            <div class="tile-box">
            	<div class="tile-top cf">
                	<h2 class="tile-title"><img src="img/bzzxkc.jpg"></h2>
                    <div class="tile-top-nav">
                        <ul>
                            <li><a class="cur" href="business!showBeizengCou?catId=3&couPosition=1">绩效管理真谛</a></li>
                            <li>|</li>
                            <li><a href="business!showBeizengCou?catId=3&couPosition=2">职业经理人素质</a></li>
                            <li>|</li>
                            <li><a href="business!showBeizengCou?catId=3&couPosition=3">绩效文化的建立</a></li>  
                       </ul>                  	
                    </div>
                </div>
                <div class="tile-content cf" style="padding-bottom: 17px;">
                    <div class="video-box">
                    	<a href="course!showCouDetail?couid=<s:property value="firstceou.couid"/>">
                        	<img src="img/video-placeholder.jpg" />
                        </a>
						<p class="post-info">
							<a href="course!showCouDetail?couid=<s:property value="firstceou.couid"/>"><s:property value="firstceou.couname"/></a><br />
							<span>讲师：<s:property value="firstceou.coulecturer"/></span>
						</p>                       
                    </div>   
                    <div class="color-list">
                        <ul>
                        	<s:iterator value="subceoulist">
                            	<li class="item_1"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a><span><s:property value="updatetime"/></span></li>
                            </s:iterator>                         
                        </ul>
                    </div>                                 	
                </div>
            </div><!-- end最新课程 -->
            
            <!-- 实战堂 -->
            <div class="tile-box h_300">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/bzxyszt.jpg"></h2>
                    <div class="tile-top-nav">
                        <ul>
							<li><a href="business!showBeizengCou?catId=3&couPosition=4">更多>></a></li>   
                        </ul>
                    </div>                
                </div><!-- end tile-top -->        
                
                <div class="tile-content">
					<div class="post-box-con">
	                    <div class="post-box">
                        	<a href="course!showCouDetail?couid=<s:property value="couid"/>">
								<img src="<s:property value="coupicurl"/>" />
							</a>
                        	<p class="post-info">
								<a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a><br />
								<span>讲师：<s:property value="coulecturer"/></span>
							</p>
	                    </div>
                    </div>
                    
                    <div class="post-list-bottom cf">
                        <ul>
                        	<s:iterator value="ceoufightlist2">
                            <li><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                            </s:iterator>
                        </ul>
                    </div>                                                             
                </div>
            </div><!-- end实战堂 --> 
            
            <!-- 名师堂 -->
            <div class="tile-box h_300">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/bzmst.jpg"></h2>
                    <div class="tile-top-nav">
                        <ul>
							<li><a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=-1">更多>></a></li>
                        </ul>
                    </div>                
                </div><!-- end tile-top -->        
                
                <div class="tile-content">                   
                    <div class="post-box-con">
	                    <s:iterator value="ceouvideolist">
	                    <div class="post-box">
	                        <a href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="<s:property value="coupicurl"/>" /></a>
	                        <p class="post-info"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a><br /><span>讲师：<s:property value="coulecturer"/></span></p>
	                    </div>
	                    </s:iterator>			
					</div>
                    <div class="post-list-bottom cf">
                        <ul>
                        	<s:iterator value="ceouvideolist1">
                            <li><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                        	</s:iterator>
                        </ul>
                    </div>                                                             
                </div>
            </div><!-- end名师堂 -->                                  
                
            <!-- 最新课件 -->
			<div class="tile-box">
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/zxjh.jpg"></h2>          
                    <a class="more" style="margin: 7px 13px 0 0;" href="#">更多>></a>    
                </div>   
                <div class="tile-content">
                	<ul class="kejian-list cf">
	            	    <s:iterator value="articleBeanlist">
	                    <li><a href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artname"/></a></li>
	                    </s:iterator>
                    </ul>
                </div>        
            </div>                                                                              
        </div>
        
        <div class="floor-r">
            <div class="portal-vertical">
                <a href="#"><img src="img/portal1.jpg" /></a>
                <a href="#"><img src="img/portal2.jpg" /></a>
                <a href="#"><img src="img/portal3.jpg" /></a>
                <a href="#"><img src="img/portal4.jpg" /></a>
            </div>  
            
            <div class="weixin-con"><img src="img/weixin.jpg"></div>       
            
        	<div class="aside-box" style="height: 440px">
            	<h2>最新新闻<a class="more" href="#">更多>></a></h2>
                <s:iterator value="randCourseList">
	            	<dl>
	                	<dt><s:property value="updatetime"/></dt>
	                    <dd><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></dd>
	                </dl> 
                </s:iterator>                
            </div>                
        </div>
    </div><!-- end 最新课件 -->
    
    <div class="ad"><img src="img/ad-placeholder.jpg"></div>
</div><!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />

</body>
</html>






























