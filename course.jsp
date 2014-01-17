<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>培训课程</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
</head>

<body id="course">
<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	<div class="ad"><a href="#"><img src="img/slider2.jpg" /></a></div>

    <div class="portal">
    	<a href="#"><img src="img/portal1.jpg" /></a>
        <a href="#"><img src="img/portal2.jpg" /></a>
        <a href="#"><img src="img/portal3.jpg" /></a>
        <a href="#"><img src="img/portal4.jpg" /></a>
    </div>   
    
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
            	<h2 class="cate-title"><i></i><a href="#"></a></h2>
                <div class="cate-content">
                	<dl class="cf">
                    	<dt>按岗位分类:</dt>
                        <dd>
                        	<!-- lixinnian 2014.01.06____________________________________ -->
                        	<a href="course!showList?couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">公务员</a>
                            <a href="course!showList?couPosition=2&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">董事长 </a>
                            <a href="course!showList?couPosition=3&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">总裁</a>
                            <a href="course!showList?couPosition=4&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">总经理</a>
                            <a href="course!showList?couPosition=5&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">总监</a>
                            <a href="course!showList?couPosition=6&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">经理</a>
                            <a href="course!showList?couPosition=7&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">主管</a>
                            <a href="course!showList?couPosition=8&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">职员</a>
                        </dd>
                    </dl>
                	<dl class="cf">
                    	<dt>按能力分类:</dt>
                        <dd>
                        	<!-- lixinnian 2014.01.06_____________________________________ -->
                           	<a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=1&couIndustry=<s:property value="couIndustry"/>&page=1">市场营销</a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=2&couIndustry=<s:property value="couIndustry"/>&page=1">生产制造</a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=3&couIndustry=<s:property value="couIndustry"/>&page=1">行政后勤 </a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=4&couIndustry=<s:property value="couIndustry"/>&page=1">财务管理</a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=5&couIndustry=<s:property value="couIndustry"/>&page=1">店面管理</a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=6&couIndustry=<s:property value="couIndustry"/>&page=1">人力资源</a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=7&couIndustry=<s:property value="couIndustry"/>&page=1">案例分析</a>
                        </dd>
                    </dl>
                	<dl class="cf">
                    	<dt>按行业分类:</dt>
                        <dd>
                        	<!-- lixinnian 2014.01.06________________________________________ -->
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=1&page=1">餐饮商学院</a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=2&page=1">电子商务学院</a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=3&page=1">连锁商学学院</a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=4&page=1">美容商学院</a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=5&page=1">物流商学院</a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=6&page=1">物业商学院</a>
                            <a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=7&page=1">政务商学院</a>
                        </dd>
                    </dl>                                        
                </div>
            </div><!-- end cate-box -->    
             
        	<!-- 岗位培训课程 -->
        	<div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/gangwei.jpg" /></h2>
                    <div class="tile-top-nav">
                        <ul>
                            <li><a href="course!showList?couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">公务员</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=2&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">董事长</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=3&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">总裁</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=4&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">总经理</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=5&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">总监</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=6&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">经理</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=7&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">主管</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=8&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">职员</a></li>
                			<li>|</li>
                            <li><a href="course!showList?couPosition=-1&couSkill=-1&couIndustry=-1&page=1">更多>></a></li>                            
                        </ul>
                    </div>                
                </div><!-- end tile-top --> 
                
                <!-- tile-content -->   
                <div class="tile-content cf">   
                    <div class="video-box">
                        <a href="course!showCouDetail?couid=<s:property value="firstCouByPos.couid"/>"><img src="img/video-placeholder.jpg" /></a>
                        <p class="post-info"><a href="course!showCouDetail?couid=<s:property value="firstCouByPos.couid"/>"><s:property value="firstCouByPos.couname"/></a><br /><span>讲师：<s:property value="firstCouByPos.coulecturer"/></span></p>
                    </div>
                    <div class="video-list">
                        <h3>课程推荐<a href="course!showList?couPosition=-1&couSkill=-1&couIndustry=-1&page=1">更多>></a></h3>
                        <ul>
                        	<!-- lixinnian 2014.01.06 ________________________________ -->
                            <s:iterator value="subposlist">
                            	<li><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                            </s:iterator>
                        </ul>
                    </div>									
                </div><!-- end tile-content -->                
            </div><!-- end 岗位培训课程 -->
            
            <!-- 管理培训课程 -->
            <div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/guangli.jpg" /></h2>
                    <div class="tile-top-nav">
                        <ul>
                            <li><a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=1&couIndustry=<s:property value="couIndustry"/>&page=1">市场管理</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=2&couIndustry=<s:property value="couIndustry"/>&page=1">生产制造</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=3&couIndustry=<s:property value="couIndustry"/>&page=1">行政后勤</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=4&couIndustry=<s:property value="couIndustry"/>&page=1">财务</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=5&couIndustry=<s:property value="couIndustry"/>&page=1">店面</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=6&couIndustry=<s:property value="couIndustry"/>&page=1">人力资源</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=7&couIndustry=<s:property value="couIndustry"/>&page=1">案例分析</a></li>
                            <li>|</li>
                            <li><a href="course!showList?couPosition=<s:property value="couPosition"/>&couSkill=-1&couIndustry=<s:property value="couIndustry"/>&page=1">更多>></a></li>                                                      
                        </ul>
                    </div>                
                </div><!-- end tile-top -->  
                <div class="tile-content">
                	<dl class="course-intro cf">
                    	<dt>
							<a href="course!showCouDetail?couid=<s:property value="firstCouBySki.couid"/>"><img src="<s:property value="firstCouBySki.coupicurl"/>" /></a>
						</dt>
                        <dd>
                        	<h3><a href="course!showCouDetail?couid=<s:property value="firstCouBySki.couid"/>"><s:property value="firstCouBySki.couname"/></a></h3>
                            <p class="course-meta">
                            	<span>讲师：<s:property value="firstCouBySki.coulecturer"/></span>
                                <span class="rate">评分：</span>
                            </p>
                            <p class="course-intro-content"><strong>课程简介：</strong><s:property value="firstCouBySki.couprofile"/></p>
                        </dd>
                    </dl>

                    <div class="post-box-con cf">
						<s:iterator value="subsklist">
                        <div class="post-box">
                            <a href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="<s:property value="coupicurl"/>" /></a>
                            <p class="post-info"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a><br />
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
        	<div class="weixin-con"><img src="img/weixin.jpg" /></div>
        
        	<div class="aside-box" style="height: 434px">
            	<h2><span>最新新闻</span><a class="more" href="#">更多>></a></h2>
                <s:iterator value="randCourseList">
	                <dl>
	                	<dt><s:property value="updatetime"/></dt>
	                    <dd><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></dd>
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
                <a class="green-btn" href="#" style="margin: 8px auto 7px;">一键关注</a>
        	</div>       
        </div><!-- end floor-r -->        
    </div><!-- end floor_1 -->

    <div class="ad"><a href="#"><img src="img/add1.jpg" /></a></div>
    
    <!-- floor_2 -->
    <div class="floor cf">
    	<div class="floor-l">
                                
            <!-- 最新行业培训课程 -->
            <div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/hangye.jpg" /></h2>
                    <div class="tile-top-nav">
                        <ul>
                            <li><a class="cur" href="#">餐饮商学</a></li>
                            <li>|</li>
                            <li><a href="#">电子商务</a></li>
                            <li>|</li>
                            <li><a href="#">连锁商学</a></li>
                            <li>|</li>
                            <li><a href="#">美容美发</a></li>
                            <li>|</li>
                            <li><a href="#">物流商学</a></li>
                            <li>|</li>
                            <li><a href="#">物业管理</a></li>
                            <li>|</li>
                            <li><a href="#">政务商学</a></li>
                        </ul>
                    </div>                
                </div><!-- end tile-top -->  
                <div class="tile-content">
                	<dl class="course-intro cf">
                    	<dt>
							<a href="course!showCouDetail?couid=<s:property value="firstCouByind.couid"/>"><img src="<s:property value="firstCouByind.coupicurl"/>" /></a>
						</dt>
                        <dd>
                        	<h3><a href="course!showCouDetail?couid=<s:property value="firstCouByind.couid"/>"><s:property value="firstCouByind.couname"/></a></h3>
                            <p>
								讲师：<a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="firstCouByind.coulecturer"/></a>
								<span class="rate">评分：</span>
							</p>
                            <p class="course-intro-content"><strong>课程介绍：</strong>课程简介： <s:property value="firstCouByind.couprofile"/></p>
                        </dd>
                    </dl>

                    <div class="post-box-con cf">
                        <s:iterator value="subindlist">
                        <div class="post-box">
                            <a href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="<s:property value="coupicurl"/>" /></a>
                            <p class="post-info">
								<a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a><br />
								<span>讲师：<s:property value="coulecturer"/></span>
							</p>
                        </div> 
						</s:iterator>
                    </div>                    
                </div>           
            </div><!-- end 最新行业培训课程 -->       
        </div>
        
        <div class="floor-r">
        	<div class="aside-box">
            	<h2>学习心得<a class="more" href="#">更多>></a></h2>
                <div class="author-intros">
                    <s:iterator value="randArticleList">
	                    <div class="author-intro">
	                        <div class="author-hd"><a href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artpicurl"/></a></div>
	                        <div class="author-bd">
	                            <h3><a href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artlecturer"/></a> </h3>
	                            <p><a href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artname"/></a></p>
	                        </div>
	                    </div>
                    </s:iterator>							 
                </div>                                                              
            </div>
        </div>
    </div><!-- end floor_2 -->
</div><!-- end main -->

<jsp:include page="footer.jsp" flush="true" />

</body>
</html>

















