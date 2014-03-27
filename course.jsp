<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:wb="http://open.weibo.com/wb">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>培训课程</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
</head>

<body id="course">
<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	<div class="ad"><a href="#"><img src="img/slider2.jpg" /></a></div> 
    
    <!-- floor_1 -->
    <div class="floor">    
           
        <!--floor-L-->
        <div class="floor-l">
            <div class="crumb">
                <a href="/CEOU">首页</a>
                <span> > </span>
                <a href="#">培训课程</a>
            </div>   
            
            <!-- cate-box --> 
            <div class="cate-box">
            	<h2 class="cate-title">管理分类</h2>
                <div class="cate-content">
                	<dl class="cf">
                    	<dt>通用课程:</dt>
                        <dd>
                        	<a <s:if test="couSkill==1">class="cur"</s:if> href="course!showList?couPosition=1&couSkill=1&couIndustry=<s:property value="couIndustry"/>&page=1">创业课程</a>
                            <a <s:if test="couSkill==2">class="cur"</s:if> href="course!showList?couPosition=1&couSkill=2&couIndustry=<s:property value="couIndustry"/>&page=1">管理课程</a>
                            <a <s:if test="couSkill==3">class="cur"</s:if> href="course!showList?couPosition=1&couSkill=3&couIndustry=<s:property value="couIndustry"/>&page=1">营销课程</a>
                            <a <s:if test="couSkill==4">class="cur"</s:if> href="course!showList?couPosition=1&couSkill=4&couIndustry=<s:property value="couIndustry"/>&page=1">职场课程</a>
                            <a <s:if test="couSkill==5">class="cur"</s:if> href="course!showList?couPosition=1&couSkill=5&couIndustry=<s:property value="couIndustry"/>&page=1">生活</a>
                        </dd>
                    </dl>
                    
                    <dl class="cf">
                    	<dt>行业:</dt>
                        <dd>
                        	<a <s:if test="couIndustry==210001">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210001&page=1">医疗</a>
                            <a <s:if test="couIndustry==210002">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210002&page=1">餐饮</a>
                            <a <s:if test="couIndustry==210003">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210003&page=1">房地产</a>
                            <a <s:if test="couIndustry==210004">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210004&page=1">汽车</a>
                            <a <s:if test="couIndustry==210005">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210005&page=1">保险</a>
                            <a <s:if test="couIndustry==210006">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210006&page=1">酒店</a>
                            <a <s:if test="couIndustry==210007">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210007&page=1">零售</a>
                            <a <s:if test="couIndustry==210008">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210008&page=1">银行</a>
                            <a <s:if test="couIndustry==210009">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210009&page=1">美容美发</a>
                            <a <s:if test="couIndustry==210010">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210010&page=1">制造</a>
                            <a <s:if test="couIndustry==210011">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210011&page=1">服装</a>
                            <a <s:if test="couIndustry==210012">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210012&page=1">电子商务</a>
                            <a <s:if test="couIndustry==210013">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210013&page=1">物业管理</a>
                            <a <s:if test="couIndustry==210014">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210014&page=1">家居建材</a>
                            <a <s:if test="couIndustry==210015">class="cur"</s:if> href="course!showList?couPosition=2&couSkill=1&couIndustry=210015&page=1">物流</a>
                        </dd>
                    </dl>
                </div>
            </div><!-- end cate-box -->    
             
        	<!-- 通用培训课程 -->
        	<div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title">最新岗位培训</h2>
                    <div class="tile-top-nav">
                        <ul>
                            <li><a href="course!showList?couPosition=1&page=1">更多>></a></li>                            
                        </ul>
                    </div>                
                </div><!-- end tile-top --> 
                
                <!-- tile-content -->   
                <div class="tile-content cf">   
                    <div class="video-box">
                        <!--<a href="course!showCouDetail?couid=44"><img src="img/video-placeholder.jpg" /></a>-->
                        <iframe height=227 width=313 src="http://player.youku.com/player.php/sid/XMzAxODA4ODk2/v.swf" frameborder=0 allowfullscreen></iframe>
                        <p class="video-info"><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=44">如何应对演说忘词</a><br /><span>讲师：<a href="teacher!showCouByTeacher?thid=7&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">王风范</a></span></p>
                    </div>
                    <div class="video-list">
                        <h3>课程推荐<a href="course!showList?couPosition=1&page=1">更多>></a></h3>
                        <ul>
                            <s:iterator value="subposlist">
                            	<li><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                            </s:iterator>
                        </ul>
                    </div>									
                </div><!-- end tile-content -->                
            </div><!-- end 岗位培训课程 -->
            
            <!-- 管理培训课程 -->
            <div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title">最新管理培训</h2>
                    <div class="tile-top-nav">
                        <ul>
                            <li><a href="course!showList?couPosition=2&page=1">更多>></a></li>                                                      
                        </ul>
                    </div>                
                </div><!-- end tile-top -->  
                <div class="tile-content">
                	<dl class="course-intro cf">
                    	<dt>
							<a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="firstCouBySki.couid"/>"><img src="<s:property value="firstCouBySki.coupicurl"/>" /></a>
						</dt>
                        <dd>
                        	<h3><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="firstCouBySki.couid"/>"><s:property value="firstCouBySki.couname"/></a></h3>
                            <p class="course-meta">
                            	<span>讲师：<s:property value="firstCouBySki.coulecturer"/></span>
                                <span class="rate">评分：</span>
                            </p>
                            <p class="course-intro-content"><strong>课程简介：</strong><s:property value="firstCouBySki.couprofile"/></p>
                        </dd>
                    </dl>

                    <div class="post-box-con cf" style="margin-top: 10px;">
						<s:iterator value="subsklist">
                        <div class="post-box">
                            <a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="<s:property value="coupicurl"/>" /></a>
                            <p class="post-info"><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a><br />
								<span>讲师：<s:property value="coulecturer"/></span>
							</p>
                        </div> 
						</s:iterator>                    
                    </div>                    
                </div>           
            </div><!-- end 管理培训课程 -->
        </div><!-- end floor-L -->   
        
        <!-- floor-r -->
        <div class="floor-r">
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
        
        	<div class="aside-box" style="height: 399px">
            	<h2><span>最新新闻</span><a class="more" href="business!showArticleByCondition">更多>></a></h2>
                <s:iterator value="randArticleList">
	            	<dl>
	                	<dt><s:date name="updatetime" format="yyyy-MM-dd" /></dt>
	                    <dd><a onclick="clicks(<s:property value="artid"/>)" href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artname"/></a></dd>
	                </dl> 
                </s:iterator>                
            </div> 
            
        	<div class="aside-box weibo-con cf">
            	<h2><span>倍增在线专家微博</span><a class="more" href="#">更多>></a></h2>
                <ul class="weibo-list cf">
                	<li>
                    	<a href="http://weibo.com/512566567"><img src="img/wb/wangzhanwei.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/512566567">王占伟</a>
                        <a class="follow-btn" href="http://weibo.com/512566567"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/3y10"><img src="img/wb/zhanwen.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/3y10">张文</a>
                        <a class="follow-btn" href="http://weibo.com/3y10"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/hongzhibo"><img src="img/wb/hongzhibo.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/hongzhibo">红智博</a>
                        <a class="follow-btn" href="http://weibo.com/hongzhibo"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/u/2281034985"><img src="img/wb/chengsheming.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/u/2281034985">程社明</a>
                        <a class="follow-btn" href="http://weibo.com/u/2281034985"></a>                        
                    </li>    
                	<li>
                    	<a href="http://weibo.com/u/1641106772"><img src="img/wb/zouzhongtang.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/u/1641106772">邹中棠</a>
                        <a class="follow-btn" href="http://weibo.com/u/1641106772"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/xinlizixushi"><img src="img/wb/zhaoxigang.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/xinlizixushi">赵喜刚</a>
                        <a class="follow-btn" href="http://weibo.com/xinlizixushi"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/u/2236201582"><img src="img/wb/jiangyongsheng.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/u/2236201582">江永胜</a>
                        <a class="follow-btn" href="http://weibo.com/u/2236201582"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/houdaxue"><img src="img/wb/aizhipeng.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/houdaxue">艾志朋</a>
                        <a class="follow-btn" href="http://weibo.com/houdaxue"></a>                        
                    </li>   
                	<li>
                    	<a href="http://weibo.com/jiuyuan99"><img src="img/wb/zhanjiuyuan.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/jiuyuan99">张九元</a>
                        <a class="follow-btn" href="http://weibo.com/jiuyuan99"></a>                        
                    </li>                                                                                              
                </ul>
        	</div>       
        </div><!-- end floor-r -->        
    </div><!-- end floor_1 -->

    <div class="ad"><a href="#"><img src="img/add1.jpg" /></a></div>
    
    
</div><!-- end main -->

<jsp:include page="footer.jsp" flush="true" />

</body>
</html>

















