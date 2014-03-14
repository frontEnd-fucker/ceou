<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>正文</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
</head>

<body>


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
    
    <div class="floor cf">
    	<!-- floor-l -->
    	<div class="floor-l">
        	<div class="crumb">
            	<a href="/CEOU">首页</a>
                <span>></span>
                <a href="#">正文</a>
            </div>
            
            <div class="cate-box">
            	<h2 class="cate-title"><i></i></h2>
                <div class="cate-content">
					<dl>
						<dd>
							<a href="business!showArticleByCondition?articleCatId=3&artcategory=-1">不限</a>
			    			<a href="business!showArticleByCondition?articleCatId=3&artcategory=1">电子商务</a>
			                <a href="business!showArticleByCondition?articleCatId=3&artcategory=2">客户服务</a>
			                <a href="business!showArticleByCondition?articleCatId=3&artcategory=3">领导力</a>
			            	<a href="business!showArticleByCondition?articleCatId=3&artcategory=4">名师名家</a>
			                <a href="business!showArticleByCondition?articleCatId=3&artcategory=5">企业培训</a>
			                <a href="business!showArticleByCondition?articleCatId=3&artcategory=6">企业战略</a>
			            	<a href="business!showArticleByCondition?articleCatId=3&artcategory=7">人力资源</a>
						</dd>
					</dl>
					<dl>
						<dd>
			                <a href="business!showArticleByCondition?articleCatId=3&artcategory=8">市场营销</a>
			                <a href="business!showArticleByCondition?articleCatId=3&artcategory=9">职场兵法</a>
			            	<a href="business!showArticleByCondition?articleCatId=3&artcategory=10">职场励志</a>
						</dd>
					</dl>
                </div>
            </div>
            
            <div class="tile-box">
            	<div class="tile-top cf">
            		<h2 class="tile-title"><img src="img/zrldl.jpg" /></h2>
                </div>
                <div class="post">
                	<div class="post-hd">
                    	<h1><s:property value="articleDetail.artname"/></h1>
                        <p class="post-info">来源：<s:property value="articleDetail.artfrom"/>| 点击率：<s:property value="articleDetail.clicks"/> | 发表时间：<s:date name="articleDetail.updatetime" format="yyyy-MM-dd" /></p>
                    </div>
                    <div class="post-bd">
                    	<div class="post-summary"><s:property value="articleDetail.artprofile"/></div>
						<div class="post-content">
                        	<s:property value="articleDetail.artcontent" escape="false"/>
                        </div>
                    </div>
                    <div class="post-ft">
                    	<p class="post-author">作者：<s:property value="articleDetail.artlecturer"/></p>
                        <!--<p class="post-slogen">有华益企业的地方就有华谊学院<a href="#">http://www.123123.com</a></p>-->
                        
                        <!-- JiaThis Button BEGIN -->
                        <div style="float: right; margin-bottom: 20px;" class="jiathis_style"><span class="jiathis_txt">分享到：</span>
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
                        
                        <div class="clear-both"></div>
                        
                        <!--<div class="post-nav">
                        	<a href="#">上一篇：企业高层管理者的9大错误</a>
                            <a href="#">下一篇：影响领导力的8大因素</a>
                        </div>-->                   
                    </div>
                </div>
            </div>
        </div><!-- end floor-l -->
        
        <!-- floor-r -->
        <div class="floor-r">
        	<div class="weixin-con"><img src="img/weixin.jpg" /></div>
            <div class="weixin-con"><img src="img/kechenyoushi.jpg" /></div>
            
        	<div class="aside-box">
            	<h2><span>最新课程</span><a class="more" href="course!show">更多>></a></h2>
                <s:iterator value="randCourseList">
                <dl>
                	<dt><s:date name="updatetime" format="yyyy-MM-dd" /></dt>
                    <dd><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></dd>
                </dl> 
                </s:iterator>               
            </div>
            
            <div class="aside-box">
            	<h2 class="longer"><span>热点管理文章</span><a class="more" href="business!showArticleByCondition">更多>></a></h2>
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

<jsp:include page="footer.jsp" flush="true" />
</body>
</html>























