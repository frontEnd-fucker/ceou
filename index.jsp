<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="wb:webmaster" content="956c14eeccb2d352" />
<meta property="qc:admins" content="1545573273635756375636" />
<title>中国企业在线大学</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
</head>

<body>

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">

	<!-- slider -->
    <div id="slider">
    	<div class="slides">
        	<div class="slide"><a href="reg.jsp"><img src="img/1.jpg" /></a></div>
            <div class="slide"><a href="reg.jsp"><img src="img/2.jpg" /></a></div>
            <div class="slide"><a href="reg.jsp"><img src="img/3.jpg" /></a></div>
            <div class="slide"><a href="reg.jsp"><img src="img/4.jpg" /></a></div>
        </div>
        <div class="control-nav">
        	<a class="cur" href="reg.jsp"><img src="img/1.1.jpg" /></a>
            <a href="reg.jsp"><img src="img/2.1.jpg" /></a>
            <a href="reg.jsp"><img src="img/3.1.jpg" /></a>
            <a href="reg.jsp"><img src="img/4.1.jpg" /></a>
        </div>
    </div><!-- end slider -->
    
    <div class="portal">
    	<a href="#"><img src="img/portal1.jpg" /></a>
        <a href="#"><img src="img/portal2.jpg" /></a>
        <a href="#"><img src="img/portal3.jpg" /></a>
        <a href="#"><img src="img/portal4.jpg" /></a>
    </div>
    
    <!-- 培训课程 -->
    <div class="floor">
        
        <!-- floor-whole -->
        <div class="floor-whole cf">
        
            <!-- tile-top -->
            <div class="tile-top cf">
                <h2 class="tile-title"><img src="img/beixunkechen.jpg" /></h2>
                <div class="tile-top-nav">
                    <ul>
                           <li><a href="course!showList">更多</a></li>
                    </ul>
                </div>
            </div><!-- end tile-top -->  
            
            <!-- tile-content -->   
            <div class="tile-content cf">   
                <div class="video-box">
                    <a href="course!showCouDetail?couid=393"><img src="img/video-placeholder.jpg" /></a>
                    <p class="post-info"><a href="course!showCouDetail?couid=44">微演说1</a><br /><span>讲师：<a href="teacher!showCouByTeacher?thid=7&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">王风范</a></span></p>
                </div>
                <div class="video-list">
                    <h3><span>培训课程</span><a href="course!showList?couPosition=-1&couSkill=-1&couIndustry=-1&page=1">更多>></a></h3>
                    <ul>
                        <li><a href="course!showCouDetail?couid=456">消费者行为心理学2</a></li>
                        <li><a href="course!showCouDetail?couid=457">消费者行为心理学3</a></li>
                        <li><a href="course!showCouDetail?couid=458">消费者行为心理学4</a></li>
                        <li><a href="course!showCouDetail?couid=381">智慧演讲法3</a></li>
                        <li><a href="course!showCouDetail?couid=392">智慧演讲法4</a></li>
                        <li><a href="course!showCouDetail?couid=393">智慧演讲法5</a></li>
                        <li><a href="course!showCouDetail?couid=384">智慧演讲法6</a></li>
                        <li><a href="course!showCouDetail?couid=385">智慧演讲法7</a></li>
                    </ul>
                </div>
                <div class="apply-form">            	
                    <form>
                        <label><strong>*</strong>公司：<input type="text" maxlength="20" /></label>
                        <label><strong>*</strong>姓名：<input type="text" maxlength="20" /></label>
                        <label><strong>*</strong>手机：<input type="text" maxlength="20" /></label>
                        <label>
                            城市：
                            <select>
                                <option>所在地区</option>
                            </select>
                            <select>
                                <option>城市</option>
                            </select>                        
                        </label>
                        <label>
                            <strong>*</strong>类型：
                            <input type="radio" name="userType" style="height: auto"/>会员
                            <input type="radio" name="userType" style="height: auto"/>非会员
                        </label>
                        <input class="submit-btn" type="submit" value="立即申请" />
                    </form>
                </div>										
            </div><!-- end tile-content -->
        </div><!-- end floor-whole -->
    </div><!-- end 培训课程 -->
    

    <div class="floor cf">
    
    	<!-- floor-L -->
    	<div class="floor-l">
        
        	<!-- 名师堂 -->
            <div class="tile-box h_300">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/mingshitang.jpg" /></h2>
                    <div class="tile-top-nav">
                        <ul>
                            <li><a href="teacher!show">更多</a></li>
                        </ul>
                    </div>                
                </div><!-- end tile-top -->        
                
                <div class="tile-content">
                    <div class="post-box-con cf" style="margin-top: 0;">
                        <div class="post-box">
                            <a href="teacher!showCouByTeacher?thid=1&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="img/msai.jpg" /></a>
                            <p class="post-info">讲师： <a href="teacher!showCouByTeacher?thid=1&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">艾志朋</a><br /><span>职务：教授</span></p>
                        </div>
                        <div class="post-box">
                            <a href="teacher!showCouByTeacher?thid=2&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="img/mszou.jpg" /></a>
                            <p class="post-info">讲师：<a href="teacher!showCouByTeacher?thid=2&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">周斌</a><br /><span>职务：教授</span></p>
                        </div>
                        <div class="post-box">
                            <a href="teacher!showCouByTeacher?thid=3&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="img/mszhang.jpg" /></a>
                            <p class="post-info">讲师：<a href="teacher!showCouByTeacher?thid=3&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">张九元</a><br /><span>职务：教授</span></p>
                        </div>
                        <div class="post-box last">
                            <a href="teacher!showCouByTeacher?thid=4&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="img/mszhao.jpg" /></a>
                            <p class="post-info">讲师<a href="teacher!showCouByTeacher?thid=4&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">：赵喜刚</a><br /><span>职务：教授</span></p>
                        </div> 
                    </div>    
                    
                    <div class="post-list-bottom cf">
                        <ul>
                            <li><a href="teacher!showCouByTeacher?thid=5&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">张岩</a></li>
                            <li><a href="teacher!showCouByTeacher?thid=6&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">王德友</a></li>
                            <li><a href="teacher!showCouByTeacher?thid=7&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">王风范</a></li>
                            <li><a href="teacher!showCouByTeacher?thid=8&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">照日格图</a></li>
                            <li><a href="teacher!showCouByTeacher?thid=9&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">侯希平</a></li>
                            <li><a href="teacher!showCouByTeacher?thid=10&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">程社明</a></li>
                            <li><a href="teacher!showCouByTeacher?thid=11&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">红智博</a></li>
                            <li><a href="teacher!showCouByTeacher?thid=12&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">王占伟</a></li>
                        </ul>
                    </div>                                                             
                </div>
            </div><!-- end 名师堂 -->
            
            <!-- 商学院 -->
            <div class="tile-box h_300">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/shangxueyuan.jpg" /></h2>
                    <div class="tile-top-nav">
                        <ul>
                            <li><a href="business!showbeizeng">倍增学院</a></li>
                            <li>|</li>
                            <li><a href="business!showEnterpriseCou?catId=3&ifceou=1">企业商学院</a></li>
                        </ul>
                    </div>                
                </div><!-- end tile-top -->  
                
                <div class="tile-content cf">        
                    <a href="course!showCouDetail?couid=47" class="little-slide">
                        <img src="img/shouye-img.jpg" />
                        <p class="info-bg"><span>领导者场景讲话艺术</span> <span class="author">讲师：侯希平</span></p>
                    </a>
                    <div class="post-list-r">
                    
                        <!-- 标签页 -->
                        <div class="tab-con">
                            <div class="tab-nav">
                                <ul class="cf">
                            		<!--
                                    <li class="cur" id="tab-nav_1"><a href="business!showBeizengCou?catId=3&couPosition=1">绩效管理真谛</a><i class="triangle"></i></li>
                                    <li id="tab-nav_2"><a href="business!showBeizengCou?catId=3&couPosition=2">职业经理人素质</a><i class="triangle"></i></li>                               
                                    <li id="tab-nav_3" class="last"><a href="business!showBeizengCou?catId=3&couPosition=3">绩效文化的建立</a><i class="triangle"></i></li>
                                    -->
                                </ul> 
                            </div>
                            <div class="tab-pages">
                                <div class="tab-page color-list" id="page_1">
                                    <ul>
                                        <li class="item_0"><a href="course!showCouDetail?couid=428">总裁倍增绩效1</a><span>[2014.02.26]</span></li>
                                        <li class="item_1"><a href="course!showCouDetail?couid=429">总裁倍增绩效2</a><span>[2014.02.26]</span></li>
                                        <li class="item_2"><a href="course!showCouDetail?couid=430">总裁倍增绩效3</a><span>[2014.02.26]</span></li>
                                        <li class="item_3"><a href="course!showCouDetail?couid=468">信任管理1</a><span>[2014.02.26]</span></li>
                                        <li class="item_4"><a href="course!showCouDetail?couid=467">信任管理2</a><span>[2014.02.26]</span></li>
                                        <li class="item_5"><a href="course!showCouDetail?couid=468">信任管理3</a><span>[2014.02.26]</span></li>
                                        <li class="item_6"><a href="course!showCouDetail?couid=469">信任管理4</a><span>[2014.02.26]</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end 标签页 -->
                    </div>                
                </div>  
        	</div><!-- end 商学院 -->          
        </div><!-- end floor-L -->
        
        <!-- floor-r -->
        <div class="floor-r">
        	<div class="aside-box h_300">
            	<h2><span>最新新闻</span><a class="more" href="business!showArticleByCondition">更多>></a></h2>
                <dl>
                	<dt>2014年01月06日</dt>
                    <dd><a href="business!showDetailArticle?artid=24">成功从关注客户的客户开始</a></dd>
                    <dd><a href="business!showDetailArticle?artid=21">如何提高客户服务质量</a></dd>
                </dl>
                <dl class="last">
                	<dt>2014年01月06日</dt>
                    <dd><a href="business!showDetailArticle?artid=43">表义含糊是老板的艺术</a></dd>
                    <dd><a href="business!showDetailArticle?artid=47">当被下属告状后</a></dd>
                </dl>                
            </div>
            
        	<div class="aside-box h_300">
            	<h2><span>最新课程</span><a class="more" href="course!showList?couPosition=-1&couSkill=-1&couIndustry=-1&page=1">更多>></a></h2>
                <dl>
                	<dt>2014年01月06日</dt>
                    <dd><a href="course!showCouDetail?couid=202">工作分析与职位说明书</a></dd>
                    <dd><a href="course!showCouDetail?couid=208">这样才叫职业化</a></dd>
                </dl>
                <dl class="last">
                	<dt>2014年01月06日</dt>
                    <dd><a href="course!showCouDetail?couid=210">社区工作者队伍建设</a></dd>
                    <dd><a href="course!showCouDetail?couid=238">幼师保教知识与能力</a></dd>
                </dl>                
            </div>             
        </div><!-- end floor-r -->
    </div><!-- end floor-2 -->
    

    
    <div class="ad">
    	<a href="#"><img src="img/ad-placeholder.jpg" /></a>
    </div>
    
    <!-- floor3 -->
    <div class="floor">
    	
        <!-- floor-l -->
        <div class="floor-l">
        	
            <!-- 在线学历院 -->
        	<div class="tile-box">
            	<!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title"><img src="img/zaixianxueli.jpg" /></h2>
                    <div class="tile-top-nav">
                        <ul>
                            <li><a href="edu!showCoubyskill?catId=4&ifceou=1">技能学院</a></li>
                            <li>|</li>
                            <li><a href="edu!showCoubyskill?catId=4&ifceou=1">知名学府</a></li>
                        </ul>
                    </div>                
                </div><!-- end tile-top -->      
                
                <!-- tile-content -->
                <div class="tile-content">
                    <div class="post-box-con cf" style="margin-top: 0;">
                        <div class="post-box">
                            <a href="course!showCouDetail?couid=316"><img src="image/couid316.jpg" /></a>
                            <p class="post-info"><a href="course!showCouDetail?couid=316">生产效率提升与问题分析(1)</a></p>
                        </div>
                        <div class="post-box">
                            <a href="course!showCouDetail?couid=317"><img src="image/couid317.jpg" /></a>
                            <p class="post-info"><a href="course!showCouDetail?couid=317">生产效率提升与问题分析(2)</a></p>
                        </div>
                        <div class="post-box">
                            <a href="course!showCouDetail?couid=318"><img src="image/couid318.jpg" /></a>
                            <p class="post-info"><a href="course!showCouDetail?couid=318">ISM提升制药企业生产效率</a></p>
                        </div>
                        <div class="post-box last">
                            <a href="course!showCouDetail?couid=319"><img src="image/couid319.jpg" /></a>
                            <p class="post-info"><a href="course!showCouDetail?couid=319">生产效率提升专家</a></p>
                        </div> 
                    </div>	
                    
                    <div class="post-list-bottom cf">
                        <ul>
                            <li><a href="course!showCouDetail?couid=320">工厂生产效率的提升</a></li>
                            <li><a href="course!showCouDetail?couid=321">Shoplogix采访视频</a></li>
                            <li><a href="course!showCouDetail?couid=322">企业管理培训课程（6）</a></li>
                            <li><a href="course!showCouDetail?couid=323">九大控制方法提升效率</a></li>
                            <li><a href="course!showCouDetail?couid=324">企业管理培训课程（5）</a></li>
                            <li><a href="course!showCouDetail?couid=325">生产日提升效率HD</a></li>
                            <li><a href="course!showCouDetail?couid=326">生产协调提升效率</a></li>
                            <li><a href="course!showCouDetail?couid=327">机器人提升生产效率</a></li>
                        </ul>
                    </div>                                                             
                </div><!-- end tile-content -->  
            </div><!-- end 在线学历院 --> 
            
            <!-- brand -->
            <div class="brand cate-box">
            	<h2 class="cate-title"><i></i><a href="#">更多>></a></h2>
                <div class="brand-con">
                    <a href="#"><img src="img/hy/hy_1.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_2.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_3.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_4.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_5.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_6.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_7.jpg" /></a>
                    
                    <a href="#"><img src="img/hy/hy_8.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_9.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_10.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_11.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_12.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_13.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_14.jpg" /></a>
                    
                    <a href="#"><img src="img/hy/hy_15.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_16.jpg" /></a>
                    <a href="#"><img src="img/hy/hy_17.jpg" /></a>              
                </div>
            </div><!-- end brand -->        
        </div><!-- end floor-l -->

        <!-- floor-r -->
        <div class="floor-r">
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
            <div class="weixin-con"><img src="img/weixin.jpg" /></div>
        </div><!-- end floor-r -->
    </div><!-- end floor3 -->
</div><!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
