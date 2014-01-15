<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>courseList</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
</head>

<body id="course-list">

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	<div id="slider"><img src="img/slider2.jpg" /></div>
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
                    	<dt>按岗位分类:</dt>
                        <dd>
                        	<a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">公务员</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=2&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">董事长 </a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=3&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">总裁</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=4&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">总经理</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=5&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">总监</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=6&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">经理</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=7&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">主管</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=8&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">职员</a>
                        </dd>
                    </dl>
                	<dl class="cf">
                    	<dt>按能力分类:</dt>
                        <dd>
                        	<a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=1&couIndustry=<s:property value="couIndustry"/>&page=1">市场营销</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=2&couIndustry=<s:property value="couIndustry"/>&page=1">生产制造</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=3&couIndustry=<s:property value="couIndustry"/>&page=1">行政后勤 </a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=4&couIndustry=<s:property value="couIndustry"/>&page=1">财务管理</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=5&couIndustry=<s:property value="couIndustry"/>&page=1">店面管理</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=6&couIndustry=<s:property value="couIndustry"/>&page=1">人力资源</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=7&couIndustry=<s:property value="couIndustry"/>&page=1">案例分析</a>
                        </dd>
                    </dl>
                	<dl class="cf">
                    	<dt>按行业分类:</dt>
                        <dd>
                        	<a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=1&page=1">餐饮商学院</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=2&page=1">电子商务学院</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=3&page=1">连锁商学学院</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=4&page=1">美容商学院</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=5&page=1">物流商学院</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=6&page=1">物业商学院</a>
                            <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=7&page=1">政务商学院</a>
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
		                    <a class="page-home" href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">首页</a>
		                    <s:if test="page==1">
		                		<a href="#">上一页</a>
		                	</s:if>
		                	<s:else>
		                		<a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property value="page-1"/>" >上一页</a>
		                	</s:else>
		                    
		                    <s:iterator begin="1" end="totalPage" var="p">
		                    	<s:if test="#p==page">
		                    		<a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />" class="page-home"><s:property/></a>
		                    	</s:if>
		                    	<s:else>
		                    		<a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />"><s:property/></a>
		                    	</s:else>
		                    </s:iterator>
		                    
		                    <s:if test="page==totalPage">
		                    	<a href="#">下一页</a>
		                    </s:if>
		                    <s:else>
		                    	<a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property value="page+1"/>">下一页</a>
		                    </s:else>
		                    <a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property value="totalPage"/>">末页</a>
                        </div>
                        <div class="page-skip">
                        	<form action="business!showBZCouByTh">
                        		<input type="hidden" name="catId" value="2"/>
                        		<input type="hidden" name="ifceou" value="1"/>
                        		<input type="hidden" name="couPosition" value="<s:property value="couPosition"/>"/>
                        		<input type="hidden" name="couSkill" value="<s:property value="couSkill"/>"/>
                        		<input type="hidden" name="couIndustry" value="<s:property value="couIndustry"/>"/>
                        		
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
            
            <div class="aside-box">
            	<h2>最新新闻<a class="more" href="#">更多>></a></h2>
                <div id="page_1" class="aside-box-page_1">
                    <ul>
                        <li class="item_1"><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li class="item_2"><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li class="item_3"><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li class="item_4"><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li class="item_5"><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li class="item_6"><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li class="item_7"><a href="#">五种培训让你的员工焕然一新</a></li>
                    </ul>
                </div>            
            </div>         
            
            <div class="aside-box hot-post">
            	<h2>热点管理文章<a class="more" href="#">更多>></a></h2>
                <div id="page_1" class="aside-box-page_1">
                    <ul>
                        <li><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li><a href="#">五种培训让你的员工焕然一新</a></li>
                        <li><a href="#">五种培训让你的员工焕然一新</a></li>
                    </ul>
                </div>            
            </div>
            
        	<div class="aside-box weibo-con">
            	<h2>华誉在线专家微博<a class="more" href="#">更多>></a></h2>
        	</div>                                              
        </div><!-- end floor-r -->
    </div>
</div><!-- end main -->
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
