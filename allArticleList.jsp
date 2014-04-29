<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:wb="http://open.weibo.com/wb">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>文章列表</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
</head>

<body id="allArticleList">

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	<div class="ad"><img src="img/slider2.jpg" /></div>
    
	<div class="floor">
    
    	<!-- floor-l -->
    	<div class="floor-l">
        	<div class="crumb">
            	<a href="#">首页</a>
                <span>></span>
                <a href="business!showArticleByCondition">文章列表</a>
            </div>
            
            <!-- cate-box --> 
            <div class="cate-box">
            	<h2 class="cate-title">管理分类</h2>
                <div class="cate-content">
                	<dl class="cf">
                        <dd>
                			<a <s:if test="artcategory==-1">class="cur"</s:if> href="business!showArticleByCondition?articleCatId=-1&artcategory=-1">不限</a>
                        	<a <s:if test="artcategory==1">class="cur"</s:if> href="business!showArticleByCondition?articleCatId=-1&artcategory=1">电子商务</a>
                            <a <s:if test="artcategory==2">class="cur"</s:if> href="business!showArticleByCondition?articleCatId=-1&artcategory=2">客户服务</a>
                            <a <s:if test="artcategory==3">class="cur"</s:if> href="business!showArticleByCondition?articleCatId=-1&artcategory=3">领导力</a>
                        	<a <s:if test="artcategory==4">class="cur"</s:if> href="business!showArticleByCondition?articleCatId=-1&artcategory=4">名师名家</a>
                            <a <s:if test="artcategory==5">class="cur"</s:if> href="business!showArticleByCondition?articleCatId=-1&artcategory=5">企业培训</a>
                            <a <s:if test="artcategory==6">class="cur"</s:if> href="business!showArticleByCondition?articleCatId=-1&artcategory=6">企业战略</a>
                        	<a <s:if test="artcategory==7">class="cur"</s:if> href="business!showArticleByCondition?articleCatId=-1&artcategory=7">人力资源</a>
                            <a <s:if test="artcategory==8">class="cur"</s:if> href="business!showArticleByCondition?articleCatId=-1&artcategory=8">市场营销</a>
                            <a <s:if test="artcategory==9">class="cur"</s:if> href="business!showArticleByCondition?articleCatId=-1&artcategory=9">职场兵法</a>
                        	<a <s:if test="artcategory==10">class="cur"</s:if> href="business!showArticleByCondition?articleCatId=-1&artcategory=10">职场励志</a>
                        </dd>                        
                    </dl>                                     
                </div>
            </div><!-- end cate-box -->   
            
            <div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title">培训课程</h2>            
                </div><!-- end tile-top -->  
                
                <div class="tile-content cf">
                	<div class="kejians">
                        <s:iterator value="allArticleByCon">
                    	<div class="kejian cf">
                        	<div class="kejian-hd">
                            	<h3>
                            		<a onclick="clicks(<s:property value="artid"/>)" href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artname"/></a>
								</h3>
                                <p class="kejian-meta">
                                	来源：<span class="from"><s:property value="artfrom"/></span>&nbsp;&nbsp;|&nbsp;
                                    点击数：<span class="clickCount"><s:property value="clicks"/></span>&nbsp;&nbsp;|&nbsp;
                                    发布时间：<span class="pub-date"><s:date name="updatetime" format="yyyy-MM-dd" /></span>                             
                                </p>
                            </div>
                            <div class="kejian-bd">
                            	<s:property value="artprofile"/>
                            </div>
                            <a onclick="clicks(<s:property value="artid"/>)" class="read-more" href="business!showDetailArticle?artid=<s:property value="artid"/>"></a>
                        </div>
                        </s:iterator>
                    </div>                 
                    
        <!-- page_nav -->
		<div class="page-nav cf">
        <div class="page-num">
	
			<!-- previous page -->
			<s:if test="%{totalPage<=1}">
				
			</s:if>
			<s:else>
				<a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=1">首页</a>
                <s:if test="page==1">
                	<a href="#">上一页</a>
                </s:if>
                <s:else>
                	<a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=<s:property value="page-1"/>" >上一页</a>
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
                    		<a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=<s:property />" class="page-home"><s:property/></a>
                    	</s:if>
                    	<s:else>
                    		<a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=<s:property />"><s:property/></a>
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
                			<a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=<s:property />" class="page-home"><s:property/></a>
                		</s:if>
                		<s:else>
                			<a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=<s:property />"><s:property/></a>
                		</s:else>
                	</s:iterator>
        		</s:if>
        		<s:else>
        			<s:if test="%{page>=(totalPage-3)}">
        				<s:iterator begin="totalPage-4" end="totalPage" var="p">
                			<s:if test="#p==page">
                				<a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=<s:property />" class="page-home"><s:property/></a>
                			</s:if>
                			<s:else>
                				<a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=<s:property />"><s:property/></a>
                			</s:else>
                		</s:iterator>
        			</s:if>
        			<s:else>
        				<s:iterator begin="page-2" end="page+2" var="p">
                			<s:if test="#p==page">
                				<a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=<s:property />" class="page-home"><s:property/></a>
                			</s:if>
                			<s:else>
                				<a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=<s:property />"><s:property/></a>
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
                	<a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=<s:property value="page+1"/>">下一页</a>
                </s:else>
                <a href="business!showArticleByCondition?articleCatId=-1&artcategory=<s:property value="artcategory"/>&page=<s:property value="totalPage"/>">末页</a>
				 <div class="page-skip">
                        <form action="business!showArticleByCondition">
                        	<input type="hidden" name="articleCatId" value="-1"/>
                        	<input type="hidden" name="artcategory" value="<s:property value="artcategory"/>"/>
                                                                          第<input class="page-input" type="text" name="page" />页
                            <input type="submit" value="跳转"/>
                       </form> 
                 </div>               
    		</s:else>
    		</div>
        	<!-- end next page -->
        </div>
        <!-- end page_nav -->
                </div>                             	
            </div>         
        </div><!-- end floor-l -->
        
        <!-- floor-r -->
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

<div class="ad"><img src="img/ad-placeholder.jpg" /></div>

<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
