
$(function() {

	//标签页效果
	$('.tab-nav li').mouseenter(function() {		
		var index = $(this).index();
		
		$(this).addClass('curr')
			.siblings().removeClass('curr');
		$('.tab-pane').eq(index).show()
			.siblings().hide();
	}).first().mouseenter();
});