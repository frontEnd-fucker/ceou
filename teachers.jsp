<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:wb="http://open.weibo.com/wb">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>名师堂</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	<div class="ad"><a href="#"><img src="img/slider2.jpg" /></a></div>
    
	<div class="floor cf">
    
    	<!-- floor-l -->
		<div class="floor-l">
        	<div class="crumb">
            	<a href="/CEOU">首页</a>
                <span>></span>
                <a href="teacher!show">名师堂</a>
            </div>            
            
			<div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title">培训教师</h2>            
                </div><!-- end tile-top -->  
                
                <div class="tile-content cf">
                    <div class="tIntro-boxs cf">
						<s:iterator value="teacherList">
                        <div class="tIntro-box">
                            <div class="tIntro-box-hd">
                                <a href="teacher!getTeacherIntro?thid=<s:property value="tid"/>&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1"><img src="<s:property value="tpicurl"/>" /></a>
                                <p class="teacher-name">
									<a href="teacher!getTeacherIntro?thid=<s:property value="tid"/>&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1"><s:property value="tname"/></a>
								</p>
                                <p class="teacher-title"><s:property value="tposition"/></p>
                            </div>
                            <div class="tIntro-box-bd">                        	
                                <p><strong>专家简介：</strong><s:property value="tintro" /></p>
                            </div>
                        </div>
						</s:iterator>	                                                                                                                     
                    </div>
                    
                    <div class="clear-both" style="height:70px; *height: 65px;"></div>
                    
        <!-- page_nav -->
		<div class="page-nav cf">
        <div class="page-num">
	
			<!-- previous page -->
			<s:if test="%{totalPage<=1}">
				
			</s:if>
			<s:else>
				<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">首页</a>
                <s:if test="page==1">
                	<a href="#">上一页</a>
                </s:if>
                <s:else>
                	<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property value="page-1"/>">上一页</a>
                </s:else>
			</s:else>
			
            <!-- end previous page -->
            
            <!-- test1 -->
            
        	<s:if test="%{totalPage<=5}">
        		<s:if test="%{totalPage<=1}">
        			<s:if test="%{totalPage==0}">
        				<p class="nothing">你暂时没有课程哦:(</p>
        			</s:if>
        		</s:if>
        		<s:else>
        			<s:iterator begin="1" end="totalPage" var="p">
						<s:if test="#p==page">
                    		<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />" class="page-home"><s:property/></a>
                    	</s:if>
                    	<s:else>
                    		<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />" ><s:property/></a>
                    	</s:else>
                	</s:iterator>
        		</s:else>
        	</s:if>
        	
        	<!-- end test1 -->
        	
        	<!-- test2 -->
        	<s:else>
        		<s:if test="%{page<=3}">
        			<s:iterator begin="1" end="5" var="p">
						<s:if test="#p==page">
                			<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />" class="page-home"><s:property/></a>
                		</s:if>
                		<s:else>
                			<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />" ><s:property/></a>
                		</s:else>
                	</s:iterator>
        		</s:if>
        		<s:else>
        			<s:if test="%{page>=(totalPage-3)}">
        				<s:iterator begin="totalPage-4" end="totalPage" var="p">
                			<s:if test="#p==page">
                				<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />" class="page-home"><s:property/></a>
                			</s:if>
                			<s:else>
                				<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />" ><s:property/></a>
                			</s:else>
                		</s:iterator>
        			</s:if>
        			<s:else>
        				<s:iterator begin="page-2" end="page+2" var="p">
                			<s:if test="#p==page">
                				<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />" class="page-home"><s:property/></a>
                			</s:if>
                			<s:else>
                				<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />"><s:property/></a>
                			</s:else>
                		</s:iterator>
        			</s:else>
        		</s:else>
        	</s:else>        	
        	<!-- end test2 -->
        	
        	<!-- next page -->
    		<s:if test="%{totalPage<=1}">
    		
    		</s:if>
    		<s:else>
    			<s:if test="page==totalPage">
            		<a href="#">下一页</a>
            	</s:if>
                <s:else>
                	<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property value="page+1"/>">下一页</a>
                </s:else>
                <a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property value="totalPage"/>">末页</a>
				 <div class="page-skip">
                       <form action="teacher!show">
                            	<input type="hidden" name="couPosition" value="<s:property value="couPosition"/>"/>
                        		<input type="hidden" name="couSkill" value="<s:property value="couSkill"/>"/>
                        		<input type="hidden" name="couIndustry" value="<s:property value="couIndustry"/>"/>                        		
                            	第<input class="page-input" type="text" name="page" />页
                            	<input type="submit" value="跳转"/>
                            </form> 
                 </div>               
    		</s:else>
    		</div>
        	<!-- end next page -->
        </div>
        <!-- end page_nav -->
                    
                                               
                </div><!-- end tile-content -->                             	
			</div><!-- end tile-box -->      
		</div><!-- end floor-l -->
        
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
            <div class="weixin-con"><img src="img/kechenyoushi.jpg" /></div>
            
            <div class="aside-box">
            	<h2><span>讲师人气排名</span><a class="more" href="teacher!show">更多>></a></h2>
                <div class="hot-teacher">
                    <ul class="color-list">
                        <s:iterator value="teacherList" status="status">
                			<s:if test="#status.index <= 4">
                				<li class="item_<s:property value="#status.index"/>"><a href="teacher!getTeacherIntro?thid=<s:property value="tid"/>&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1"/><s:property value="tname"/></a></li>
                			</s:if>
                        
                        </s:iterator>
                    </ul>
                </div>            
            </div>         
            
            <div class="aside-box">
            	<h2><span>热点管理文章</span><a class="more" href="business!showArticleByCondition">更多>></a></h2>
                <div class="hot-post">
                    <ul class="color-list">
                        <s:iterator value="randArticleList">
                        	<li><a onclick="clicks(<s:property value="artid"/>)" href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artname"/></a></li>
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
        	</div>
		</div><!-- end floor-r -->
    </div><!-- end floor -->
</div><!-- end main -->

<jsp:include page="footer.jsp" flush="true" />
</body>
</html>


















