<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线学历院</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
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
                <h2 class="tile-title"><img src="img/jnxybxkc.jpg" /></h2>
                <div class="tile-top-nav">
                    <ul>
                        <li><a class="cur" href="edu!showCoubyskill?couSkill=1">会计</a></li>
                        <li>|</li>
                        <li><a href="edu!showCoubyskill?couSkill=2">人力资源</a></li>
                        <li>|</li>
                        <li><a href="edu!showCoubyskill?couSkill=3">社会</a></li>
                        <li>|</li>
                        <li><a href="edu!showCoubyskill?couSkill=4">心理咨询师</a></li>
                        <li>|</li>
                        <li><a href="edu!showCoubyskill?couSkill=5">教师资格</a></li>
                        <li>|</li>
                        <li><a href="edu!showCoubyskill?couSkill=6">造价员</a></li>
                        <li>|</li>
                        <li><a href="edu!showCoubyskill?couSkill=7">物流</a></li>
                        <li>|</li>
                        <li><a href="edu!showCoubyskill?couSkill=-1">更多>></a></li>                                                                                           
                    </ul>
                </div>                                              
            </div><!-- end tile-top -->          	
            
            <div class="tile-content cf">
            	<div class="tile-content-l">
                    <div class="post-box">
                        <a href="course!showCouDetail?couid=<s:property value="firstedu.couid"/>"><img class="bigger" src="img/post-placeholder.jpg" /></a>
						<p class="post-info"><s:property value="firstedu.couname"/><br /><span>讲师：<s:property value="firstedu.coulecturer"/></span></p>
                    </div>
                </div>
                <div class="tile-content-r">
					<div class="post-box-con cf" style="margin-top: 0;">
		                <s:iterator value="eduskilllist1">
		                <div class="post-box">                    
		                	<!--<a href="#"><img src="<s:property value="coupicurl"/>" /></a> --> 
		                	<a href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="img/post-placeholder.jpg" /></a>
		                	<p class="post-info"><s:property value="couname"/><br /><span><s:property value="coulecturer"/></span></p>
		                </div> 
		                </s:iterator>
	                </div>    
                   
                    <div class="post-list-bottom cf">
                        <ul>
                       		<s:iterator value="eduskilllist2">
                        	<li><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
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
                <h2 class="tile-title"><img src="img/zmxf.jpg" /></h2>                                             
            </div><!-- end tile-top -->   
            
			<div class="tile-content cf">
                <div class="little-slide">
                    <img src="img/shouye-img.jpg" />
                </div>     
                <div class="video-list">
                    <h3><span>成考</span><a href="edu!showCoubyindustry?couIndustry=1">更多>></a></h3>
                    <ul>
                    	<s:iterator value="adultexamlist">
                        	<li><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                        </s:iterator>
                    </ul>
                </div>      
                <div class="video-list">
                    <h3><span>自考</span><a href="edu!showCoubyindustry?couIndustry=2">更多>></a></h3>
                    <ul>
						<s:iterator value="selfexamlist">
                        <li><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                        </s:iterator>
                    </ul>
                </div>                                  
            </div>                  	
        </div>                
    </div><!-- end知名学府 -->   
    
    <div class="portal">
        <a href="#"><img src="img/portal1.jpg" /></a>
        <a href="#"><img src="img/portal2.jpg" /></a>
        <a href="#"><img src="img/portal3.jpg" /></a>
        <a href="#"><img src="img/portal4.jpg" /></a>
    </div>     
</div><!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
