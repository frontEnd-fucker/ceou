<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>videoCourse</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
</head>

<body id="introPage">

<!-- header -->
<jsp:include page="head.jsp" flush="true" />
<!-- end header -->

<!-- main -->
<div id="main" class="wrapper">
	<div id="slider"><img src="img/slider2.jpg" /></div>
    
    <div class="floor cf">
    	<!-- floor-l -->
    	<div class="floor-l">
        	<div class="crumb">
            	<a href="#">首页</a>
                <span>></span>
                <a href="#">商学院</a>
                <span>></span>
                <a href="#">倍增学院</a>
                <span>></span>
                <a href="#">绩效管理真谛</a>
                <span>></span>      
                <a href="#">正文</a>          
            </div>
            
            <div class="cate-box">
            	<h2 class="cate-title"><i></i></h2>
                <div class="cate-content">
                	<dl>
                    	<dt>按课程分类</dt>
                        <dd>
                        	<a href="#">绩效管理真谛</a>
                            <a href="#">绩效管理真谛</a>
                            <a href="#">绩效管理真谛</a>
                        </dd>
                    </dl>
                </div>
            </div>
            
            <div class="tile-box">
            	<div class="tile-top cf">
            		<h2 class="tile-title"><img src="img/beixunkechen.jpg" /></h2>
                </div>
                <div class="tile-content cf">
                	<dl class="course-intro cf">
                    	<dt>
                        	<img src="img/kecheng-list.jpg" />
                            <!-- JiaThis Button BEGIN -->
                            <div class="jiathis_style"><span class="jiathis_txt">分享到：</span>
                            <a class="jiathis_button_qzone"></a>
                            <a class="jiathis_button_tsina"></a>
                            <a class="jiathis_button_tqq"></a>
                            <a class="jiathis_button_renren"></a>
                            <a class="jiathis_button_kaixin001"></a>
                            <a href="http://www.jiathis.com/share?uid=1868491" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank"></a>
                            <a class="jiathis_counter_style"></a>
                            </div>
                            <script type="text/javascript" >
                            var jiathis_config={
                                data_track_clickback:true,
                                summary:"",
                                shortUrl:false,
                                hideMore:false
                            }
                            </script>
                            <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1868491" charset="utf-8"></script>
                            <!-- JiaThis Button END -->                             
                        </dt>
                        <dd>
                        	<h3><s:property value="courseDetail.couname"/> </h3>
                            <p class="course-meta cf">
                            	<span>讲师：<s:property value="courseDetail.coulecturer"/></span>
                                <span class="rate">评分：<s:property value="courseDetail.couscore"/></span>
                            </p>
                            <p class="course-intro-content"><strong>课程简介：</strong><s:property value="courseDetail.couprofile"/> </p>
                        </dd>
                    </dl>                
                </div>
            </div>
            
            <!--视频-->
            <div class="tile-box">
            	<div class="tile-top cf">
                	<h2 class="tile-title">
                    	<img src="img/beixunkechen.jpg" />
                    </h2>                
                </div>
                <div class="tile-content">
                	<embed src="<s:property value="courseDetail.couvideourl"/>"></embed>
                </div>
            </div>
            <!--end 视频-->
            
            <div class="tile-box">
            	<div class="tile-top cf">
                	<h2 class="tile-title">
                    	<img src="img/beixunkechen.jpg" />
                    </h2>
                </div>
                <div class="tile-content cf">
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box last">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>      
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box last">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
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
            <div class="weixin-con">
            	<img src="img/weixin.jpg" />
            </div>    	
        	<div class="aside-box" style="height: 440px">
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
        </div><!-- end floor-r -->
    </div>
</div><!-- end main -->

<!-- footer -->
<jsp:include page="footer.jsp" flush="true" />
<!-- end footer -->
</body>
</html>
































