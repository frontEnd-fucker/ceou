<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="">
	<title>中国企业在线-视频播放</title>
	<link href="css/normalize.css" rel="stylesheet">
	<link href="css/base2.css" rel="stylesheet">
	<link href="css/baseUI.css" rel="stylesheet">
	<link href="css/play2.css" rel="stylesheet">
	<script src="js/vendor/modernizr-2.7.1.min.js"></script>
</head>

<body id="play2">

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">

	<!-- 视频播放模块 -->
	<div class="mod-play">
		<h2 class="title"><s:property value="courseDetail.couname"/></h2>

		<!-- 播放区域 -->
		<div class="p_area fl">
			<s:if test="%{courseDetail.couvideourl==1}">
				<div id="noPermission">
					<p>对不起，该视频需要登录之后才能观看。<a id="J_login-now" href="#">马上登录</a></p>
					<p>没有帐号？<a href="reg.jsp">马上注册</a></p>
				</div>
			</s:if>
			<s:else>
				<!-- ${courseDetail.couvideourl } -->
								<script
									src="http://union.bokecc.com/player?vid=1A029C9B04B74E9B9C33DC5901307461&siteid=96BC359D1BE46EA9&autoStart=true&width=600&height=490&playerid=BF73B0FF969BF52C&playertype=1"
									type="text/javascript"></script>
			</s:else>		
		</div>

		<!-- 选集模块 -->
		<div class="p_series fr">
			<div class="pd">
				<h3>选集</h3>
				<ul class="series-list">
					<s:iterator value="seriesCouList" status="status">
						<s:if test="%{courseDetail.cousequence==cousequence}">
							<li class="series-item curr"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="cousequence"/> </a></li>
						</s:if>
						<s:else>
							<li class="series-item"><a href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="cousequence"/> </a></li>
						</s:else>
					</s:iterator>
				</ul>
			</div>	
		</div>
	</div>
	<!-- end 视频播放模块 -->

	<!-- 标签页区域 -->
	<div class="tab fl">
		<ul class="tab-nav">
			<li class="curr"><a href="#">课程简介</a><i class="triangle"></i></li>
		</ul>
		<div class="tab-content">

			<!-- 课程简介 -->
			<div class="course-intro">		

				<div class="teacher-intro cf">
					<div class="fl">
						<img src="whimg/play2/teacher.jpg">
					</div>
					<ul class="fr">
						<li>中国菁英联盟<span>首席顾问</span></li>
						<li>中国MBA联盟<span>主 席</span></li>
						<li>北京市东城区中小企业服务中心<span>特聘顾问</span></li>
					</ul>
				</div>		
							
				<dl>
					<dt>课程简介</dt>
					<dd>
						<s:property value="courseDetail.couprofile"/>
					</dd>
				</dl>
				<!-- <dl>
					<dt>课程大纲</dt>
					<dd>
						<p>1.什么是意愿</p>
						<p>引用“空中跳板”的实例，介绍什么是意愿</p>
						<p>2.意愿=欲望</p>
						<p>授人以鱼不如授人以渔，授人以渔不如授人以欲。</p>
						<p>有了欲望、意愿，人们可以主动寻求解决方案，自己做鱼杆，找鱼下勾。没有意愿，即便有金鱼杆，他不去钓鱼，也是枉然。</p>
					</dd>
				</dl> -->
			</div>
		</div>
	</div>
	<!-- end 标签页区域 -->

	<!-- 热门推荐 -->
	<div class="recommend fr">
		<h2>热门推荐</h2>
		<ul class="recommend-list">
			<li class="recommend-item">
				<a href="#">
					<span class="hd"><img src="whimg/play2/recommend-hd.jpg"></span>
					<span class="course-name">如何获取大客户</span>
					<span class="teacher">讲师：<em>XXX</em></span>
					<span class="start"><i class="icon-start"></i>开始学习</span>
				</a>				
			</li>
			<li class="recommend-item">
				<a href="#">
					<span class="hd"><img src="whimg/play2/recommend-hd.jpg"></span>
					<span class="course-name">如何获取大客户</span>
					<span class="teacher">讲师：<em>XXX</em></span>
					<span class="start"><i class="icon-start"></i>开始学习</span>
				</a>				
			</li>
			<li class="recommend-item">
				<a href="#">
					<span class="hd"><img src="whimg/play2/recommend-hd.jpg"></span>
					<span class="course-name">如何获取大客户</span>
					<span class="teacher">讲师：<em>XXX</em></span>
					<span class="start"><i class="icon-start"></i>开始学习</span>
				</a>				
			</li>	
			<li class="recommend-item">
				<a href="#">
					<span class="hd"><img src="whimg/play2/recommend-hd.jpg"></span>
					<span class="course-name">如何获取大客户</span>
					<span class="teacher">讲师：<em>XXX</em></span>
					<span class="start"><i class="icon-start"></i>开始学习</span>
				</a>				
			</li>
			<li class="recommend-item">
				<a href="#">
					<span class="hd"><img src="whimg/play2/recommend-hd.jpg"></span>
					<span class="course-name">如何获取大客户</span>
					<span class="teacher">讲师：<em>XXX</em></span>
					<span class="start"><i class="icon-start"></i>开始学习</span>
				</a>				
			</li>											
		</ul>
	</div>
	<!-- end 热门推荐 -->

	<!-- 评论区 -->
	<div class="comment">
		<form class="cf">
			<textarea id="comment" name="comment" ></textarea>
			<div id="J_action-con" class="fr">
				<input id="comment-submit" class="btn-pill btn-pill-yellow fr" type="button" value="发表评论">
			</div>
		</form>
		<div class="all-comment">
			<h2>全部评论</h2>
			<ul class="comment-list">
				<s:iterator value="commmentList" status="status">
					<li class="comment-item">
						<div class="hd"><img src="whimg/play2/comment-avatar.jpg"></div>
						<div class="bd">
							<p class="info">
								<span class="user-name"><s:property value="username" /></span>
								<span class="date"><s:date name="comtime" format="yyyy-MM-dd HH:mm"/></span>	
							</p>
							<p class="cnt"><s:property value="comment"/> </p>
							<p class="bottom">
								<a href="#">回复</a>	
								<span>|</span>
								<a class="J_like" href="javascript:;" data-commentid="<s:property value="id" />">赞同</a>
								<span class="count-like-con">(<em class="count-like"><s:property value="praise"/></em>)</span>
							</p>
						</div>
					</li>
				</s:iterator>
			</ul>
		</div>

		<!-- page-nav -->
		<div class="page-nav cf">
            <div class="page-num">			
				<!-- previous page -->
				<s:if test="%{totalPage<=1}">
					
				</s:if>
				<s:else>
					<a data-page="1" href="#">首页</a>
	                <s:if test="page==1">
	                	<a href="#">上一页</a>
	                </s:if>
	                <s:else>
	                	<a data-page="<s:property value="page-1"/>" href="#" >上一页</a>
	                </s:else>
				</s:else>				
                <!-- end previous page -->
                
                <!-- test1 -->                
            	<s:if test="%{totalPage<=5}">
            		<s:if test="%{totalPage<=1}">
            			<s:if test="%{totalPage==0}">
            				<p class="nothing">沙发空缺中，还不快抢！</p>
            			</s:if>
            		</s:if>
            		<s:else>
            			<s:iterator begin="1" end="totalPage" var="p">
							<s:if test="#p==page">
	                    		<a data-page="<s:property />" href="#" class="curr"><s:property/></a>
	                    	</s:if>
	                    	<s:else>
	                    		<a data-page="<s:property />" href="#"><s:property/></a>
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
                    			<a data-page="<s:property />" href="#" class="curr"><s:property/></a>
                    		</s:if>
                    		<s:else>
                    			<a data-page="<s:property />" href="#"><s:property/></a>
                    		</s:else>
                    	</s:iterator>
            		</s:if>
            		<s:else>
            			<s:if test="%{page>=(totalPage-3)}">
            				<s:iterator begin="totalPage-4" end="totalPage" var="p">
                    			<s:if test="#p==page">
                    				<a data-page="<s:property />" href="#" class="curr"><s:property/></a>
                    			</s:if>
                    			<s:else>
                    				<a data-page="<s:property />" href="#"><s:property/></a>
                    			</s:else>
                    		</s:iterator>
            			</s:if>
            			<s:else>
            				<s:iterator begin="page-2" end="page+2" var="p">
                    			<s:if test="#p==page">
                    				<a data-page="<s:property />" href="#" class="curr"><s:property/></a>
                    			</s:if>
                    			<s:else>
                    				<a data-page="<s:property />" href="#"><s:property/></a>
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
                    	<a class="next" data-page="<s:property value="page+1"/>" href="comment!getCommentByPage?seriesnumber=<s:property value="courseDetail.seriesnumber"/>&courseid=<s:property value="courseDetail.couid"/>&page=<s:property value="page+1"/>">下一页</a>
                    </s:else>
                    <a data-page="<s:property value="totalPage"/>" href="#">末页</a>
        		</s:else>
            	<!-- end next page -->
            </div>                	
        </div>		
        <!-- end page-nav -->
	</div>
	<!-- end 评论区 -->
</div>
<!-- end main -->

<div class="clear-both"></div>

<jsp:include page="footer.jsp" flush="true" />
	
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/scirpt>')</script>
<script src="js/vendor/baseUI.js"></script>
<script src="js/base.js"></script>	
<!-- <script src="js/play2.js"></script> -->
<script>
$(function(){

	// 将播放器的width改为675px
	$('embed').attr('width', 675);

	// 点击马上登录弹出登录模态框
	$('#J_login-now').click(function() {
		yu.popLogin();
		return false;
	});


	// 评论
	$('#comment-submit').click(function(e){
		e.preventDefault();

		$(this).attr('disabled', true).addClass('btn-pill-disabled').val('提交中...');

		var _this = this;
		var seriesnumber = '${courseDetail.seriesnumber}';
		var courseid = '${courseDetail.couid}';
		var comment = $('#comment').val();

		if(comment == '') {
			yu.popFadeoutLayer(-1, '评论内容不能为空', $('#J_action-con'), function() {
				$(_this).attr('disabled', false).removeClass('btn-pill-disabled').val('发表评论');
			});			
			return;
		}		

		$.post('comment!addComment',{'seriesnumber':seriesnumber,'courseid':courseid,'comment':comment},function(data){

			// data.ret = 1为评论成功
			// data.ret = -1为还没登录
			if(data.ret == 1){
				
				//alert(data.username+'评论成功');
				var html = [
					'<li class="comment-item">',
						'<div class="hd"><img src="whimg/play2/comment-avatar.jpg"></div>',
						'<div class="bd">',
							'<p class="info">',
								'<span class="user-name">',data.username,'</span>',
								'<span class="date">刚刚</span>',
							'</p>',
							'<p class="cnt">',comment,'</p>',
						'</div>',
					'</li>'
				].join('');
				$('.comment-list').prepend(html);
				$('#comment').val('');
				$(_this).attr('disabled', false).removeClass('btn-pill-disabled').val('发表评论');
				$('.page-nav .nothing').hide();
			}else if(data.ret == -1){
				yu.popLogin();
				$(_this).attr('disabled', false).removeClass('btn-pill-disabled').val('发表评论');
			}else {
				alert('网络错误，请重新提交');
			}
		});
	});
	
	//点赞
	$('.J_like').click(function(e) {

		var _this = this;
		var commentid = $(this).data('commentid');

		$.post('comment!addPraise',{'commentid':commentid},function(data){

			/**
			 * data=1为评论成功
			 * data=-1为用户还没登录
			 */
			if(data == 1){
				var $countLike = $(_this).parent().find('.count-like');
				var likeSum = parseInt($countLike.text());
				likeSum++;
				yu.popFadeoutLayer(1, '+1', $(_this).parents('.comment-item'), function() {
					$countLike.text(likeSum);
					$(_this).off('click');
				});				
			}else if(data == -1) {
				yu.popLogin();
			}else{
				alert('网络错误，请重新提交');
			}
		});
	});

	// 分页
	$('.page-nav').on('click', 'a', function(e) {
		e.preventDefault();

		var seriesnumber = '${courseDetail.seriesnumber}';
		var courseid = '${courseDetail.couid}';
		var page = $(this).data('page');

		$(this).addClass('curr')
			.siblings().removeClass('curr');

		$.post('comment!getCommentByPage',{'seriesnumber':seriesnumber,'courseid':courseid,'page':page}, function(data) {
			$('.comment-list').fadeOut(700, function() {
				$(this).html(data).show();
				$("html,body").animate({scrollTop: $(".all-comment").offset().top - 55}, 800);
			});
		});
	});

	//标签页效果
	// $('.tab-nav li').mouseenter(function() {		
	// 	var index = $(this).index();
		
	// 	$(this).addClass('curr')
	// 		.siblings().removeClass('curr');
	// 	$('.tab-pane').eq(index).show()
	// 		.siblings().hide();
	// }).first().mouseenter();

});

/**
* cc player API
*/

function customFullScreen(){
//TODO 自定义全屏
}

function onPlayPaused(){
// 已暂停播放
}

function onPlayStop(){	
	var episodeSum = $('.series-item').length;
	var currEpisode = $('.series-list .curr').index() + 1;
	var nextHref = $('.series-list .curr').next().find('a').attr('href');
	
	if(currEpisode < episodeSum) {		
		location.href = nextHref;
	}
}

function on_cc_player_init( vid, objectID ){
var config = {};
//config.fullscreen_enable = 1; //启用自定义全屏
//config.fullscreen_function = "customFullScreen"; //设置自定义全屏函数的名称
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
</body>
</html>