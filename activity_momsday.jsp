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
<style>
.moms-title-top {color:#646464;}
.post {padding: 0 24px; border: 0;}
.moms-title {margin: 30px 0 20px 0; color: #8bc44e; font-weight: bold; font-size: 24px; font-family: 微软雅黑;text-align: center;}
.banner img {width: 100%;}
.post-hd {padding: 0; border: 0;}
.post-content {margin-top: 20px;text-align: left;font-size: 13px;}
.post-content p {margin-bottom: 15px;line-height: 24px;text-indent: 0;}
.videos {border-top: 1px dashed #D6D6D6;margin-top: 40px;}
.videos li {float: left;}
.videos ul {width: 715px;}
.QR {text-align: center;font-weight: bold;color: #6F6F6F;}
.QR img {width: 130px;  }
.video-box {width: 223px;height: 217px;margin-right: 13px;margin-bottom: 10px;}
.momsday-blog a {
    display: block;
    height: 34px;
    line-height: 34px;
    border-bottom: 1px dashed #D6D6D6;
    background: url(img/arrow-icon.jpg) no-repeat left center;
    padding-left: 16px;
}
.momsday-blog a:hover {color: #8bc44e; background-position: 5px center; padding-left: 20px;}
a.more {margin: 15px 5px 0 0;}
</style>
</head>

<body>


<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	
    
    <div class="floor cf">
    	<!-- floor-l -->
    	<div class="floor-l">
            
            <div class="tile-box">
                <div class="post">
                    <div class="post-hd">
                        <h2 class="moms-title moms-title-top">感恩母亲节，爱在CEOU</h2>
                        <div class="banner"><img src="whimg/activity_momsday/banner.jpg"></div>                                                
                    </div>
                    <div class="post-bd">
						<div class="post-content">
                            <p>又是一年母亲节，一个充满幸福的日子。你是否也期待着孩子打来的电话，发来祝福的短信？</p>
                            <p>中国企业在线大学，陪你重温像花儿一样的生活，聆听来自心灵深处的爱的话语。</p>
                            <p>5月11日——5月17日，中国企业在线大学母亲节亲子周，全面免费放送亲子类课程，让著名讲师王占伟、姚鸿昌、赵宏亮手把手教您亲子沟通三十六计，敬请享受亲子幸福！关注@倍增科技-CEOU 新浪微博或 倍增科技 微信号，享受更多母亲节互动，掌握一手活动信息，赶快扫一扫吧！</p>
                            <p>中国企业在线大学全体人员祝天下母亲平安、幸福、快乐，母亲节快乐！</p>
                        </div>

                        <!-- 二维码 -->
                        <div class="QR cf">
                            <div class="fl">
                                <img src="whimg/activity_momsday/QR1.jpg">
                                <p>新浪微博</p>
                            </div>
                            <div class="fl">
                                <img src="whimg/activity_momsday/QR1.jpg">
                                <p>微信</p>
                            </div>                            
                        </div>         

                        <!-- 视频 -->
                        <div class="videos cf">
                            <h2 class="moms-title">免费观看课程<a class="more" href="course!showList?couPosition=1&couSkill=5&couIndustry=150009&page=1">更多>></a></h2>
                            <ul>
                                <li>
                                    <div class="video-box">
                                        <a class="video-cover" href="teacher!getTeacherIntro?thid=23&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity_momsday/v1.jpg"></a>
                                        <p class="video-info">
                                            <a href="teacher!getTeacherIntro?thid=23&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">揭开让孩子主动学习的法宝</a>
                                            <br>
                                            <span>讲师：赵宏亮</span>
                                        </p>
                                        <a href="teacher!getTeacherIntro?thid=23&couPosition=-1&couSkill=-1&couIndustry=-1&page=1" class="icon-play"></a>
                                    </div>
                                </li>         
                                <li>
                                    <div class="video-box">
                                        <a class="video-cover" href="teacher!getTeacherIntro?thid=12&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity_momsday/v2.jpg"></a>
                                        <p class="video-info">
                                            <a href="teacher!getTeacherIntro?thid=12&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">亲子沟通三十六计</a>
                                            <br>
                                            <span>讲师：王占伟</span>
                                        </p>
                                        <a href="teacher!getTeacherIntro?thid=12&couPosition=-1&couSkill=-1&couIndustry=-1&page=1" class="icon-play"></a>
                                    </div>
                                </li>                                                   
                                <li>
                                    <div class="video-box">
                                        <a class="video-cover" href="teacher!getTeacherIntro?thid=12&couPosition=-1&couSkill=-1&couIndustry=-1&page=1"><img src="whimg/activity_momsday/v3.jpg"></a>
                                        <p class="video-info">
                                            <a href="teacher!getTeacherIntro?thid=12&couPosition=-1&couSkill=-1&couIndustry=-1&page=1">好父母成就好家庭</a>
                                            <br>
                                            <span>讲师：王占伟</span>
                                        </p>
                                        <a href="teacher!getTeacherIntro?thid=12&couPosition=-1&couSkill=-1&couIndustry=-1&page=1" class="icon-play"></a>
                                    </div>
                                </li>  
                            </ul>
                        </div>

                        <!-- 精文 -->
                        <div class="momsday-blog">
                            <h2 class="moms-title">母亲节精文</h2>
                            <ul>
                                <li><a href="business!showDetailArticle?artid=305">写给妈妈的话</a></li>
                                <li><a href="business!showDetailArticle?artid=306">永不褪色的爱</a></li>
                                <li><a href="business!showDetailArticle?artid=307">献给母亲的礼物</a></li>
                                <li><a href="business!showDetailArticle?artid=308">各国母亲节的习俗</a></li>
                                <li><a href="business!showDetailArticle?artid=309">母亲节由来</a></li>
                                <li><a href="business!showDetailArticle?artid=310">母亲节送给母亲什么礼物</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="post-ft">
                        
                        <!-- JiaThis Button BEGIN -->
                        <div style="float: right; margin-bottom: 20px;margin-top: 25px;" class="jiathis_style"><span class="jiathis_txt">分享到：</span>
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
            <div class="aside-box" style="background: #eff4e3; padding: 5px;">
                <img src="whimg/goodness.jpg" />
            </div>                                               
            
        	<div class="aside-box weibo-con cf">
            	<h2><span>倍增在线专家微博</span></h2>
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
    </div>
</div><!-- end main -->

<jsp:include page="footer.jsp" flush="true" />
</body>
</html>























