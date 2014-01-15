<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>名师堂</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
</head>

<body>

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
    
	<div class="floor cf">
    
    	<!-- floor-l -->
		<div class="floor-l">
        	<div class="crumb">
            	<a href="#">首页</a>
                <span>></span>
                <a href="#">名师堂</a>
            </div>            
            
			<div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/peixunjiangshi.jpg" /></h2>            
                </div><!-- end tile-top -->  
                
                <div class="tile-content cf">
                    <div class="tIntro-boxs cf">
						<s:iterator value="teacherList">
                        <div class="tIntro-box">
                            <div class="tIntro-box-hd">
                                <a href="teacher!showCouByTeacher?thid=<s:property value="tid"/>&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1"><img src="img/kecheng-list.jpg" /></a>
                                <p class="teacher-name">
									<a href="teacher!showCouByTeacher?thid=<s:property value="tid"/>&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1"><s:property value="tname"/></a>
								</p>
                                <p class="teacher-title"><s:property value="tposition"/></p>
                            </div>
                            <div class="tIntro-box-bd">                        	
                                <p><strong>专家简介：</strong><s:property value="tintro" /></p>
                            </div>
                        </div>
						</s:iterator>	                                                                                                                     
                    </div>
                    
                    <div class="clear-both" style="height:50px;"></div>
                    
                    <div class="page-nav cf">
                    	<div class="page-num">
                      		<a class="page-home" href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=1">首页</a>
		                    <s:if test="page==1">
		                		<a href="#">上一页</a>
		                	</s:if>
		                	<s:else>
		                		<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property value="page-1"/>">上一页</a>
		                	</s:else>
		                    
		                    <s:iterator begin="1" end="totalPage" var="p">
		                    	<s:if test="#p==page">
		                    		<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />" class="page-home"><s:property/></a>
		                    	</s:if>
		                    	<s:else>
		                    		<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property />"><s:property/></a>
		                    	</s:else>
		                    </s:iterator>
		                    
		                    <s:if test="page==totalPage">
		                    	<a href="#">下一页</a>
		                    </s:if>
		                    <s:else>
		                    	<a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property value="page+1"/>">下一页</a>
		                    </s:else>
		                    <a href="teacher!show?couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=<s:property value="couIndustry"/>&page=<s:property value="totalPage"/>">末页</a>
                        </div>
                        <div class="page-skip">
                        	<form action="teacher!show">
                            	<input type="hidden" name="couPosition" value="<s:property value="couPosition"/>"/>
                        		<input type="hidden" name="couSkill" value="<s:property value="couSkill"/>"/>
                        		<input type="hidden" name="couIndustry" value="<s:property value="couIndustry"/>"/>
                        		
                            	跳至第<input type="text" name="page" />页
                            	<input type="submit" value="跳转"/>
                            </form> 
                    	</div>
                    </div><!-- end page-nav -->                                     
                </div><!-- end tile-content -->                             	
			</div><!-- end tile-box -->      
		</div><!-- end floor-l -->
        
        <!-- floor-r -->
        <div class="floor-r">
        	<div class="weixin-con"><img src="img/weixin.jpg" /></div>
            <div class="weixin-con"><img src="img/kechenyoushi.jpg" /></div>
            
            <div class="aside-box">
            	<h2 class="longer">讲师人气排名<a class="more" href="#">更多>></a></h2>
                <div class="hot-teacher">
                    <ul class="color-list">
                        <s:iterator value="randCourseList">
                        	<li class="item_7"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></li>
                        </s:iterator>
                    </ul>
                </div>            
            </div>         
            
            <div class="aside-box">
            	<h2 class="longer">热点管理文章<a class="more" href="#">更多>></a></h2>
                <div class="hot-post">
                    <ul class="color-list">
                        <s:iterator value="randArticleList">
                        	<li><a href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artname"/></a></li>
                        </s:iterator>
                    </ul>
                </div>            
            </div>
            
        	<div class="aside-box weibo-con cf">
            	<h2>华誉在线专家微博<a class="more" href="#">更多>></a></h2>
                <ul class="weibo-list cf">
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>    
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>   
                	<li>
                    	<a href="#"><img src="img/weibo.jpeg" /></a>
                        <a class="wb-name" href="#">华企商学院</a>
                        <a class="follow-btn" href="#"></a>                        
                    </li>                                                                                              
                </ul>
                <a class="green-btn" href="#" style="margin: 7px auto 6px;">一键关注</a>
        	</div>                                              
        </div><!-- end floor-r -->
    </div><!-- end floor -->
</div><!-- end main -->

<jsp:include page="footer.jsp" flush="true" />
</body>
</html>


















