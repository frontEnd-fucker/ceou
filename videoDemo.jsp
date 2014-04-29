<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:wb="http://open.weibo.com/wb">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>videoCourse</title>
		<link href="css/base.css" rel="stylesheet" type="text/css" />
		<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
		<script src="js/base.js"></script>
		<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js"
			type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	function customFullScreen(){
    //TODO 自定义全屏
  }
  
  function onPlayPaused(){
    // 已暂停播放
  }
  
  function onPlayStop(){
  	//window.location.href="course!showCouDetail?couid=418";
  	alert('fuck');
  }
  
  function on_cc_player_init( vid, objectID ){
    var config = {};
    config.fullscreen_enable = 1; //启用自定义全屏
    config.fullscreen_function = "customFullScreen"; //设置自定义全屏函数的名称
    config.on_player_pause = "onPlayPaused"; //设置当暂停播放时的回调函数的名称
    config.on_player_stop="onPlayStop";//播放结束后回调函数的名称
    
    var player = getSWF( objectID );
    player.setConfig( config );
  }
  
  function getSWF( swfID ) {
    if( navigator.appName.indexOf( "Microsoft" ) != -1 ){
      return window[ swfID ];
    } else {
      return document[ swfID ];
    }
  }
</script>
	</head>

	<body id="introPage">

		<!-- header -->
		<jsp:include page="head.jsp" flush="true" />
		<!-- end header -->

		<!-- main -->
		<div id="main" class="wrapper">
			<div class="ad">
				<img src="img/slider2.jpg" />
			</div>

			<div class="floor cf">
				<!-- floor-l -->
				<div class="floor-l">
					<div class="crumb">
						<a href="/CEOU">首页</a>
						<span>></span>
						<s:if test="courseDetail.catid==1">
							<a href="course!show">培训课程</a>
						</s:if>
						<s:if test="courseDetail.catid==2">
							<s:if test="courseDetail.ifceou==0">
								<a href="teacher!show">名师堂</a>
							</s:if>
							<s:if test="courseDetail.ifceou==1">
								<a href="business!showbeizeng">倍增学院</a>
								<span>></span>
								<a href="business!showBZCouByTh?catId=2&ifceou=1&couPosition=-1">名师堂</a>
							</s:if>
						</s:if>
						<s:if test="courseDetail.catid==3">
							<a href="business!show">商学院</a>
							<span>></span>
							<a href="business!showbeizeng">倍增学院</a>
						</s:if>
						<s:if test="courseDetail.catid==4">
							<a href="business!show">商学院</a>
							<span>></span>
							<a
								href="business!showEnterpriseCou?catId=4&ifceou=-1&couPosition=-1">企业商学院</a>
						</s:if>
						<s:if test="courseDetail.catid==6">
							<a href="edu!show">在线学历院</a>
							<span>></span>
							<a href="edu!showCoubyskill?couSkill=-1">技能院校</a>
						</s:if>
						<s:if test="courseDetail.catid==7">
							<a href="edu!show">在线学历院</a>
							<span>></span>
							<a href="edu!showCoubyindustry?couIndustry=1">知名学府</a>
						</s:if>
						<span>></span>
						<a href="#">正文</a>
					</div>

					<!--视频-->
					<div class="tile-box">
						<div class="tile-top cf">
							<h2 class="tile-title">
								培训课程
							</h2>
						</div>

						<div class="tile-content">
							<!-- ccPlayer -->
							<div class="ccPlayer-con">

								<script
									src="http://union.bokecc.com/player?vid=1A029C9B04B74E9B9C33DC5901307461&siteid=96BC359D1BE46EA9&autoStart=true&width=600&height=490&playerid=BF73B0FF969BF52C&playertype=1"
									type="text/javascript"></script>

								<!--						${courseDetail.couvideourl }-->
							</div>
							<!-- end ccPlayer -->
						</div>
					</div>
					<!--end 视频-->

					<div class="tile-box">
						<div class="tile-top cf">
							<h2 class="tile-title">
								课程简介
							</h2>
						</div>
						<div class="tile-content cf">
							<dl class="course-intro cf">
								<dt>
									<img src="<s:property value="courseDetail.coupicurl"/>" />
									<!-- JiaThis Button BEGIN -->
									<div class="jiathis_style">
										<span class="jiathis_txt">分享到：</span>
										<a class="jiathis_button_qzone"></a>
										<a class="jiathis_button_tsina"></a>
										<a class="jiathis_button_tqq"></a>
										<a class="jiathis_button_renren"></a>
										<a class="jiathis_button_kaixin001"></a>
										<a href="http://www.jiathis.com/share?uid=1868491"
											class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis"
											target="_blank"></a>
										<a class="jiathis_counter_style"></a>
									</div>
									<script type="text/javascript">
                            var jiathis_config={
                                data_track_clickback:true,
                                summary:"",
                                shortUrl:false,
                                hideMore:false
                            }
                            </script>
									<script type="text/javascript"
										src="http://v3.jiathis.com/code/jia.js?uid=1868491"
										charset="utf-8"></script>
									<!-- JiaThis Button END -->
								</dt>
								<dd>
									<h3>
										<s:property value="courseDetail.couname" />
									</h3>
									<p class="course-meta cf">
										<span>讲师：<s:property value="courseDetail.coulecturer" />
										</span>
										<span class="rate">评分:</span>
									</p>
									<p class="course-intro-content">
										<strong>课程简介：</strong>
										<s:property value="courseDetail.couprofile" />
									</p>
								</dd>
								<a class="learn-btn" href="#"></a>
							</dl>
						</div>
					</div>

					<!-- 猜你喜欢 -->
					<!--<div class="tile-box">
            	<div class="tile-top cf">
                	<h2 class="tile-title">
                    	<img src="img/beixunkechen.jpg" />
                    </h2>
                </div>
                <div class="tile-content cf">
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box last">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>      
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>
                    <div class="post-box last">
                        <a href="#"><img src="img/post-placeholder.jpg" /></a>
                        <p class="post-info">5S推行实用手法和步骤<br /><span>讲师：安岷</span></p>
                    </div>                                	
                </div>
            </div>-->
					<!-- end 猜你喜欢 -->
				</div>
				<!-- end floor-l -->

				<!-- floor-r -->
				<div class="floor-r">
					<div class="aside-box" style="background: #eff4e3; padding: 5px;">
						<img src="whimg/goodness.jpg" />
					</div>
					<!-- weibo -->
					<div class="weixin-con aside-box">
						<h2>
							关注微博
						</h2>
						<div class="weibo-content cf">
							<img class="hd" src="whimg/weibo-logo.jpg" />
							<div class="bd">
								<p>
									关注中国企业在线官方微博，第一时间获取信息！
								</p>
								<wb:follow-button uid="3970272720" type="red_1" width="67"
									height="24"></wb:follow-button>
							</div>
						</div>
					</div>
					<!-- end weibo -->
					<div class="aside-box" style="height: 452px">
						<h2>
							<span>最新新闻</span><a class="more"
								href="business!showArticleByCondition">更多>></a>
						</h2>
						<s:iterator value="randArticleList">
							<dl>
								<dt>
									<s:date name="updatetime" format="yyyy-MM-dd" />
								</dt>
								<dd>
									<a onclick="clicks(<s:property value="artid"/>)"
										href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property
											value="artname" /> </a>
								</dd>
							</dl>
						</s:iterator>
					</div>
				</div>
				<!-- end floor-r -->
			</div>
		</div>
		<!-- end main -->

		<!-- footer -->
		<jsp:include page="footer.jsp" flush="true" />
		<!-- end footer -->
	</body>
</html>
































