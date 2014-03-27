<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线学历院</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
</head>

<body id="onlineCollege">

<jsp:include page="head.jsp" flush="true" />

<div id="main" class="wrapper">
	<div class="ad">
    	<a href="#"><img src="img/slider2.jpg" /></a>
    </div>
    
    <div class="floor">
    	<div class="crumb">
        	<a href="#">首页</a>         
            <span>></span>
            <a href="#">在线学历院</a>           
        </div>
        
        <!-- 技能学院 -->
        <div class="tile-box">
            <!-- tile-top -->
            <div class="tile-top cf">
                <h2 class="tile-title">技能培训课程</h2>
                <div class="tile-top-nav">
                    <ul>
                         <li><a href="edu!showCoubyskill?catId=4&ifceou=1">更多>></a></li>                                                                                          
                    </ul>
                </div>                                              
            </div><!-- end tile-top -->          	
            
            <div class="tile-content cf">
            	<div class="tile-content-l">
                    <div class="post-box">
                        <a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="firstedu.couid"/>"><img class="bigger" src="<s:property value="firstedu.coupicurl"/>" /></a>
						<p class="post-info"><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="firstedu.couid"/>"><s:property value="firstedu.couname"/></a><br /><span>讲师：<s:property value="firstedu.coulecturer"/></span></p>
                    </div>
                </div>
                <div class="tile-content-r">
					<div class="post-box-con cf" style="margin-top: 0;">
		                <s:iterator value="eduskilllist1">
		                <div class="post-box">                    
		                	<!--<a href="#"><img src="<s:property value="coupicurl"/>" /></a> --> 
		                	<a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="<s:property value="coupicurl"/>" /></a>
		                	<p class="post-info"><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a><br /><span><s:property value="coulecturer"/></span></p>
		                </div> 
		                </s:iterator>
	                </div>    
                   
                    <div class="post-list-bottom cf">
                        <ul>
                       		<s:iterator value="eduskilllist2">
                        	<li><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                        	</s:iterator>
                        </ul>
                    </div>                  	
                </div>
            </div>
        </div><!-- end技能学院 -->
        
        <!-- 知名学府 -->
        <div class="tile-box">
            <!-- tile-top -->
            <div class="tile-top cf">
                <h2 class="tile-title">知名学府</h2>      
                <div class="tile-top-nav">
                    <ul>
                         <li><a href="edu!showCoubyskill?catId=4&ifceou=2">更多>></a></li>                                                                                          
                    </ul>
                </div>                                       
            </div><!-- end tile-top -->   
            
			<div class="tile-content cf">
                <div class="little-slide">
                    <a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="firstexam.couid"/>"><img src="img/shouye-img.jpg" /></a>
                 <p class="info-bg"><span><s:property value="firstexam.couname"/> </span> <span class="author">讲师：<s:property value="firstexam.coulecturer"/> </span></p>
                </div>     
                <div class="video-list">
                    <h3><span>成考</span><a href="edu!showCoubyindustry?couIndustry=1">更多>></a></h3>
                    <ul>
                    	<s:iterator value="adultexamlist">
                        	<li><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                        </s:iterator>
                    </ul>
                </div>      
                <div class="video-list">
                    <h3><span>自考</span><a href="edu!showCoubyindustry?couIndustry=2">更多>></a></h3>
                    <ul>
						<s:iterator value="selfexamlist">
                        <li><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                        </s:iterator>
                    </ul>
                </div>                                  
            </div>                  	
        </div>                
    </div><!-- end知名学府 -->   
      
</div><!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
