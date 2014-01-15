<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>detail</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
</head>

<body>


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
    
    <div class="floor cf">
    	<!-- floor-l -->
    	<div class="floor-l">
        	<div class="crumb">
            	<a href="#">首页</a>
                <span>></span>
                <a href="#">最新岗位培训课程</a>
                <span>></span>
                <a href="#">正文</a>
            </div>
            
            <div class="cate-box">
            	<h2 class="cate-title"><i></i><a href="#">更多>></a></h2>
                <div class="cate-content">
                	<dl>
                    	<dd>
                        	<a href="#">企业战略</a>
                            <a href="#">企业战略</a>
                            <a href="#">企业战略</a>
                            <a href="#">企业战略</a>
                            <a href="#">企业战略</a>
                            <a href="#">企业战略</a>
                            <a href="#">企业战略</a>
                        </dd>
                    </dl>
                    <dl>
                    	<dd>
                        	<a href="#">客户服务</a>
                            <a href="#">客户服务</a>
                            <a href="#">客户服务</a>
                        </dd>
                    </dl>
                </div>
            </div>
            
            <div class="tile-box">
            	<div class="tile-top cf">
            		<h2 class="tile-title"><img src="img/beixunkechen.jpg" /></h2>
                </div>
                <div class="post">
                	<div class="post-hd">
                    	<h1><s:property value="articleDetail.artname"/></h1>
                        <p class="post-info">来源：<s:property value="articleDetail.artfrom"/>| 点击率：55555555555 | 发表时间：<s:property value="articleDetail.updatetime"/></p>
                    </div>
                    <div class="post-bd">
                    	<div class="post-summary"><s:property value="articleDetail.artprofile"/></div>
						<div class="post-content">
                        	<s:property value="articleDetail.artcontent" escape="false"/>
                        </div>
                    </div>
                    <div class="post-ft">
                    	<p class="post-author">作者：<s:property value="articleDetail.artlecturer"/></p>
                        <p class="post-slogen">有华益企业的地方就有华谊学院<a href="#">http://www.123123.com</a></p>
                        
                        <!-- JiaThis Button BEGIN -->
                        <div class="jiathis_style"><span class="jiathis_txt">分享到：</span>
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
                        
                        <div class="post-nav">
                        	<a href="#">上一篇：企业高层管理者的9大错误</a>
                            <a href="#">下一篇：影响领导力的8大因素</a>
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
            
        	<div class="aside-box weibo-con">
            	<h2>华誉在线专家微博<a class="more" href="#">更多>></a></h2>
        	</div>                     
        </div><!-- end floor-r -->
    </div>
</div><!-- end main -->

<jsp:include page="footer.jsp" flush="true" />
</body>
</html>























