<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:wb="http://open.weibo.com/wb">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商学院</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
</head>

<body id="bizCollege">

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	<div class="floor">
    	<div class="floor-l">
        	<div class="crumb">
            	<a href="/CEOU">首页</a>
                <span>></span>
                <a href="#">商学院</a>
            </div>
            
            <div class="tile-box">
            	<div class="tile-top cf">
                	<h2 class="tile-title">倍增最新课程</h2>
                    <div class="tile-top-nav">
                        <ul>
                              <li><a href="business!showBusinessList?catId=1&ifceou=0">更多>></a></li>
                       </ul>                  	
                    </div>
                </div>
                <div class="tile-content cf" style="padding-bottom: 17px;">
                    <div class="video-box">
                        <!--<a href="course!showCouDetail?couid=44"><img src="img/video-placeholder.jpg" /></a>-->
                        <iframe height=227 width=313 src="http://player.youku.com/player.php/sid/XMzAxODA4ODk2/v.swf" frameborder=0 allowfullscreen></iframe>
                        <p class="video-info"><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=44">如何应对演说忘词</a><br /><span>讲师：<a href="teacher!showCouByTeacher?thid=7&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">王风范</a></span></p>
                    </div>  
                    <div class="color-list">
                        <ul>
                        	<s:iterator value="BZCouList" status="status">
                            	<li class="item_<s:property value="#status.index"/>"><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a><span><s:date name="updatetime" format="yyyy-MM-dd" /></span></li>
                            </s:iterator>                         
                        </ul>
                    </div>                                 	
                </div>
            </div>
            
            <div class="tile-box h_300">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title">倍增名师堂</h2>
                    <div class="tile-top-nav">
                        <ul>
                            <li><a href="business!showBusinessList?catId=1&ifceou=1">更多>></a></li>
                        </ul>
                    </div>                
                </div><!-- end tile-top -->        
                
                <div class="tile-content">
					<div class="post-box-con cf">
	                    <s:iterator value="subBZTeacherCouList1">
	                    <div class="post-box">
	                        <a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="<s:property value="coupicurl"/>" /></a>
	                        <p class="post-info"><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a><br /><span>讲师：<s:property value="coulecturer"/></span></p>
	                    </div>
	                    </s:iterator>
                    </div>
                    
                    <div class="post-list-bottom cf">
                        <ul>
                        	<s:iterator value="subBZTeacherCouList2">
                        	<li><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                        	</s:iterator>
                        </ul>
                    </div>                                                             
                </div>
            </div>
            
            <!-- tile-box_2 -->
            <div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title">企业商学院</h2>
                    <div class="tile-top-nav">
                        <ul>
                            <li><a href="business!showBusinessList?catId=3&ifceou=1">更多>></a></li>
                        </ul>
                    </div>                
                </div><!-- end tile-top -->  
                
                <div class="tile-content cf">        
                    
                    <!-- 标签页 -->
                    <div class="tab-con">
                        <div class="tab-pages">
                            <div class="tab-page" id="page_1">
			                    <a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="firstEnterpriseCou.couid"/>">
			                        <img src="<s:property value="firstEnterpriseCou.coupicurl"/>" />
			                    </a>                     
                                <ul class="color-list">
                                	<s:iterator value="subEnterpriseCouList2" status="status">
                                    	<li class="item_<s:property value="#status.index"/>"><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a><span><s:date name="updatetime" format="yyyy-MM-dd" /> </span></li>
                                    </s:iterator>                                     
                                </ul>
                            </div>
                        </div>
                    </div><!-- end 标签页 --> 
                    
                    <div class="clear-both"></div>
                    
                    <div class="post-box-con cf" style="margin-top: 10px;">
	                	<s:iterator value="subEnterpriseCouList1">
	                    <div class="post-box">
	                        <a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="<s:property value="coupicurl"/>" /></a>
	                        <p class="post-info"><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a><br /><span>讲师：<s:property value="coulecturer"/></span></p>
	                    </div>   
	                 	</s:iterator> 
                    </div>                                  
                </div>  
        	</div><!-- end tail-box_2 -->                        
        </div>
        
        <div class="floor-r">
            <div class="aside-box" style="background: #eff4e3; padding: 5px;">
                <img src="whimg/goodness.jpg" />
            </div>
            
            <!-- weibo -->
            <div class="weixin-con aside-box">
                <h2>关注微博</h2>
                <div class="weibo-content cf">
                    <img class="hd" src="whimg/weibo-logo.jpg" />
                    <div class="bd">
                        <p>关注中国企业在线官方微博，第一时间获取信息！</p>
                        <wb:follow-button uid="3970272720" type="red_1" width="67" height="24" ></wb:follow-button>
                    </div>
                </div>                
            </div><!-- end weibo -->  
            
        	<div class="aside-box" style="height: 629px">
            	<h2><span>最新新闻</span><a class="more" href="business!showArticleByCondition">更多>></a></h2>
                <s:iterator value="randArticleList">
	            	<dl>
	                	<dt><s:date name="updatetime" format="yyyy-MM-dd" /></dt>
	                    <dd><a onclick="clicks(<s:property value="artid"/>)" href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artname"/></a></dd>
	                </dl> 
                </s:iterator>                
            </div>                 
        </div>
    </div>
</div><!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />
</body>
</html>






























