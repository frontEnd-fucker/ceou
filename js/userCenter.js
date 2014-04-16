/**
 * 常规函数
 * 命名空间为yu
 */

var yu = {};	

/**
 *	可以自动关闭的提示层
 *	@param { Number } 1为成功，-1为失败
 *	@param { string } 提示的内容
 */
yu.popFadeoutLayer = function(type, content) {
	var str = '',
		fadeOutLayer = document.createElement('div');

	switch(type) {
		case 1: str = '<div class="cont success"><p>' + content + '</p></div>';
			break;
		case -1: str = '<div class="cont error"><p>' + content + '</p></div>';
	}
	
	fadeOutLayer.id = 'fadeOutLayer';
	fadeOutLayer.innerHTML = str;

	$('body').append(fadeOutLayer);
	$('#close').click(function() {
		$(this).parent().remove();
		$('#mask').remove();
		return false;
	});

	setTimeout(function(){
		$('#fadeOutLayer').fadeOut(500, function() {
			$(this).remove();
		});			
	}, 2000);	
}	

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