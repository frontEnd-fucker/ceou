
$(function() {
	//slider效果
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