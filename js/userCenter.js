
$(function() {

	//aside跟随滚动
	$(window).scroll(function() {
		var scrollTop = $(this).scrollTop();
		if( scrollTop >= 102) {
			$('aside').css({
				position: 'fixed',
				top: 0,
				left: 'auto'
			});
		}else if( scrollTop < 102) {
			$('aside').css('position', 'absolute');
		}
	});

});