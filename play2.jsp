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
			${courseDetail.couvideourl }			
		</div>

		<!-- 热门推荐 -->
		<!-- <div class="p_recommend fr">
			<h3>热门推荐</h3>
			<ul class="p_recommend-list">
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
		</div>	 -->	

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
			<li><a href="#">老师简介</a><i class="triangle"></i></li>
			<li class="last"><a href="#">观看讲义</a><i class="triangle"></i></li>
		</ul>
		<div class="tab-content">

			<!-- 课程简介 -->
			<div class="tab-pane course-intro">				
				<dl>
					<dt>课程简介</dt>
					<dd>
						<s:property value="courseDetail.couprofile"/>
					</dd>
				</dl>
				<dl>
					<dt>课程大纲</dt>
					<dd>
						<p>1.什么是意愿</p>
						<p>引用“空中跳板”的实例，介绍什么是意愿</p>
						<p>2.意愿=欲望</p>
						<p>授人以鱼不如授人以渔，授人以渔不如授人以欲。</p>
						<p>有了欲望、意愿，人们可以主动寻求解决方案，自己做鱼杆，找鱼下勾。没有意愿，即便有金鱼杆，他不去钓鱼，也是枉然。</p>
					</dd>
				</dl>
			</div>

			<!-- 老师介绍 -->
			<div class="tab-pane teacher-intro cf">
				<div class="fl">
					<img src="whimg/play2/teacher.jpg">
				</div>
				<ul class="fr">
					<li>中国菁英联盟<span>首席顾问</span></li>
					<li>中国MBA联盟<span>主 席</span></li>
					<li>北京市东城区中小企业服务中心<span>特聘顾问</span></li>
				</ul>
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
			<input id="comment-submit" class="btn-pill btn-pill-yellow fr" type="button" value="提交">
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
								<span class="date"><s:date name="comtime" format="yyyy-MM-dd hh:mm:ss"/></span>	
							</p>
							<p class="cnt"><s:property value="comment"/> </p>
							<p class="bottom">
								<a href="#">回复</a>	
								<span>|</span>
								<a class="J_praise" href="#" data-commentid="<s:property value="id" />">赞同</a>
								<span>(<s:property value="praise"/>)</span>					
							</p>
						</div>
					</li>
				</s:iterator>
			</ul>
		</div>

		<!-- page-nav -->
		<div id="page-nav">
			<a href="#">上一页</a>
			<a href="#">1</a>
			<a href="#">2</a>
			<a href="#">3</a>
			<a href="#">下一页</a>
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
<script src="js/base.js"></script>	
<script src="js/play2.js"></script>
<script>
$(function(){

	// 将播放器的width改为675px
	$('embed').attr('width', 675);

	// 评论
	$('#comment-submit').click(function(){
		var seriesnumber = '${courseDetail.seriesnumber}';
		var courseid = '${courseDetail.couid}';
		var comment = $('#comment').val();
		$.post('comment!addComment',{'seriesnumber':seriesnumber,'courseid':courseid,'comment':comment},function(data){
			// data.ret = 1为评论成功
			// data.ret = -1为还没登录
			if(data.ret == 1){
				alert(data.username+'评论成功');
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
			}else if(data.ret == -1){
				alert('对不起，只有登录后才能评论');
			}else {
				alert('网络错误，请重新提交');
			}
		});
	});
	
	//点赞
	$('.J_praise').click(function() {
		var commentid = $(this).data('commentid');
		$.post('comment!addPraise',{'commentid':commentid},function(data){
			if(data == 1){
				alert('点赞成功');
			}
			if(data == -1) {
				alert('请先登录');
			}
			else{
				alert('网络错误，请重新提交');
			}
		});
	});

	// 分页
	$('#page-nav').on('click', 'a', function(e) {
		e.preventDefault();
		$.post('comment', function(data) {
			$('.comment-list').fadeOut(700, function() {
				$(this).html(data).show();
				$("html,body").animate({scrollTop: $(".all-comment").offset().top}, 1500);
			});
		});
	});
});
</script>
</body>
</html>