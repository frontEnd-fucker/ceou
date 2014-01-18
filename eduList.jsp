<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线学历院课程</title>
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
            	<a href="/CEOU">首页</a>
                <span>></span>
                <a href="#">在线学历院课程</a>
            </div>
            
         <!-- cate-box --> 
            <div class="cate-box">
            	<h2 class="cate-title"><i></i><!--<a href="#">更多>></a>--></h2>
                <div class="cate-content">
                	<dl class="cf">
                    	<dt>按能力分类:</dt>
                        <dd>
                        	<a <s:if test="couSkill==-1">class="cur"</s:if> href="edu!showCoubyskill?couSkill=-1">不限</a>
                            <a <s:if test="couSkill==1">class="cur"</s:if> href="edu!showCoubyskill?couSkill=1">会计</a>
                        	<a <s:if test="couSkill==2">class="cur"</s:if> href="edu!showCoubyskill?couSkill=2">人力资源</a>
                        	<a <s:if test="couSkill==3">class="cur"</s:if> href="edu!showCoubyskill?couSkill=3">社会</a>
                        	<a <s:if test="couSkill==4">class="cur"</s:if> href="edu!showCoubyskill?couSkill=4">心理咨询</a>
                        	<a <s:if test="couSkill==5">class="cur"</s:if> href="edu!showCoubyskill?couSkill=5">教师资格</a>
                        	<a <s:if test="couSkill==6">class="cur"</s:if> href="edu!showCoubyskill?couSkill=6">造价员</a>
                        	<a <s:if test="couSkill==7">class="cur"</s:if> href="edu!showCoubyskill?couSkill=7">物流</a>
                        	<a <s:if test="couSkill==8">class="cur"</s:if> href="edu!showCoubyskill?couSkill=8">金融</a>
                        	<a <s:if test="couSkill==9">class="cur"</s:if> href="edu!showCoubyskill?couSkill=9">司法</a>
                        	<a <s:if test="couSkill==10">class="cur"</s:if> href="edu!showCoubyskill?couSkill=10">PMP</a>
                        	<a <s:if test="couSkill==11">class="cur"</s:if> href="edu!showCoubyskill?couSkill=11">市场营销</a>
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
                    <s:iterator value="eduskilllist">
	                	<dl class="course-intro cf">
	                    	<dt>
	                    		<a href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="img/kecheng-list.jpg" /></a>
	                    	</dt>
	                        <dd>
	                        	<h3>
	                        	<a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a>
	                        	</h3>
	                            <p class="course-meta">
	                            	<span>讲师：
	                            		<s:property value="coulecturer"/>
	                            	</span>
	                                <span class="rate">评分：<!--<s:property value="couscore"/>--></span>
	                                <span>发布时间:<s:date name="updatetime" format="yyyy-MM-dd" /></span>
	                            </p>
	                            <p class="course-intro-content"><s:property value="couprofile"/></p>
	                        </dd>
	                        <a class="read-more" href="course!showCouDetail?couid=<s:property value="couid"/>"></a>
	                    </dl>
                    </s:iterator>
                    
					<!-- page-nav -->
                    <div class="page-nav cf">
                    	<div class="page-num">
		                    <a class="page-home" href="edu!showCoubyskill?couSkill=<s:property value="couSkill"/>&page=1">首页</a>
		                    <s:if test="page==1">
		                		<a href="#">上一页</a>
		                	</s:if>
		                	<s:else>
		                		<a href="edu!showCoubyskill?couSkill=<s:property value="couSkill"/>&page=<s:property value="page-1"/>" >上一页</a>
		                	</s:else>
		                    
		                    <s:iterator begin="1" end="totalPage" var="p">
		                    	<s:if test="#p==page">
		                    		<a href="edu!showCoubyskill?couSkill=<s:property value="couSkill"/>&page=<s:property />" class="page-home"><s:property/></a>
		                    	</s:if>
		                    	<s:else>
		                    		<a href="edu!showCoubyskill?couSkill=<s:property value="couSkill"/>&page=<s:property />"><s:property/></a>
		                    	</s:else>
		                    </s:iterator>
		                    
		                    <s:if test="page==totalPage">
		                    	<a href="#">下一页</a>
		                    </s:if>
		                    <s:else>
		                    	<a href="edu!showCoubyskill?couSkill=<s:property value="couSkill"/>&page=<s:property value="page+1"/>">下一页</a>
		                    </s:else>
		                    <a href="edu!showCoubyskill?couSkill=<s:property value="couSkill"/>&page=<s:property value="totalPage"/>">末页</a>
                        </div>
                        <div class="page-skip">
                        	<form action="edu!showCoubyskill">
                        		<input type="hidden" name="couSkill" value="<s:property value="couSkill"/>"/>
                        		
                            	跳至第<input class="page-input" type="text" name="page" />页
                            	<input type="submit" value="确定"/>
                            </form> 
                    	</div>
                    </div><!-- end page-nav -->                                    
                </div>                             	
            </div>         
        </div><!-- end floor-l -->
        
        <!-- floor-r -->
        <div class="floor-r">
        	<div class="weixin-con"><img src="img/weixin.jpg" /></div>
            <div class="weixin-con"><img src="img/kechenyoushi.jpg" /></div>
        	<div class="aside-box">
            	<h2><span>最新课程</span><a class="more" href="course!showList">更多>></a></h2>
                 <s:iterator value="randCourseList">
	                <dl>
	                	<dt><s:date name="updatetime" format="yyyy-MM-dd" /></dt>
	                    <dd><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></dd>
	                </dl> 
                </s:iterator>                
            </div> 
            
            <!--<div class="aside-box">
            	<h2><span>最新新闻<span><a class="more" href="course!showList">更多>></a></h2>
                <div id="page_1" class="aside-box-page_1">
                    <ul>
                        <s:iterator value="randCourseList" status="status">
                        	<li class="item_<s:property value="#status.index"/>"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                        </s:iterator>
                    </ul>
                </div>            
            </div>  -->       
            
            <div class="aside-box">
            	<h2 class="longer"><span>热点管理文章</span><a class="more" href="#">更多>></a></h2>
                <div class="hot-post">
                    <ul class="color-list">
                        <s:iterator value="randArticleList">
                        	<li><a href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artname"/></a></li>
                        </s:iterator>
                    </ul>
                </div>            
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
                <a class="green-btn" href="#" style="margin: 8px auto 7px;">一键关注</a>
        	</div>  
		                                               
        </div><!-- end floor-r -->
    </div>
</div><!-- end main -->
<div class="clear-both"></div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
