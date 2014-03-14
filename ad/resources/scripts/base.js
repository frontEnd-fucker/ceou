// JavaScript Document
$(function() {
	//初始化导航选中状态
	initNav();
	
	/*
	 * 该方法用来初始化导航选中状态
	*/
	function initNav() {
		var a1 = document.URL;
		var a2 = $('#main-nav a').not('.nav-top-item');
		
		for(var i=0; i<a2.length; i++) {
			var a2Href = $(a2[i]).attr('href');
			if(a1.indexOf(a2Href) != -1) {
				$(a2[i]).addClass('current')
					.parents('ul').siblings('.nav-top-item').addClass('current').click();
			}
		}
	}
	
});