
$(function() {

	//标签页效果
	$('.tab-nav li').mouseenter(function() {		
		var index = $(this).index();
		
		$(this).addClass('curr')
			.siblings().removeClass('curr');
		$('.tab-pane').eq(index).show()
			.siblings().hide();
	}).first().mouseenter();



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
		alert('fuck');
		//window.location.href="course!showCouDetail?couid=418";
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
});