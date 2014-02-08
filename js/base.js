//slider效果
$(function() {	
	var sliderTimer = null;
	var $controlNav  = $('.control-nav a');
	var len = $controlNav.length;
	var index = 0;
	
	$controlNav.mouseover(function() {
        index = $controlNav.index(this);
        showImg(index);	
	}).eq(0).mouseover();
	
	$('#slider').hover(function() {
		if(sliderTimer) {
			clearInterval(sliderTimer);
		}
	}, function() {
		sliderTimer = setInterval(function() {
			showImg(index);
			index++;
			if(index==len) {index=0;}
		}, 3000);
	}).trigger('mouseleave');	
});

function showImg(index) {
	var $controlNav  = $('.control-nav a');
	$('.slide').eq(index).stop(true, true).fadeIn('slow')
	           .siblings().fadeOut('slow');
	$controlNav.eq(index).addClass('cur')
					   .siblings().removeClass('cur');
}

//topbar菜单的效果
$(function() {
	$('.top-r-subnav').hover(function() {
		$('.header-top-r').find('.show').hide();
		$(this).css('width', 'auto');
		$('.header-top-r').find('.hide').show();
	}, function() {
		$('.header-top-r').find('.hide').hide();
		$(this).css('width', 120);
		$('.header-top-r').find('.show').show();
	});
});

//视频收藏功能
$(function() {
	$('.fav').click(function() {
		$.post('', {'couseId':couseId}, function() {
			//1为收藏成功
			//-1为未登录
			if(data==1) {
				$(this).replaceWith('<a href="passport.jsp" class="favorited">已收藏</a>');
			}else if(data==-1) {
				bb.login();
			}
		});
	});
});








