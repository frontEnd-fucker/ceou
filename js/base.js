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
		bb.login();
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


$(function() {
	
	//个人设置切换tab 切换表单功能
	$('.J_tabNav li a').click(function() {
		var tabIndex = $('.J_tabNav li a').index(this);
		$(this).addClass('curr').parent('li').siblings('li').find('a').removeClass('curr');
		$('.setting-form form').eq(tabIndex).show()
			.siblings('form').hide();
	});
	
	//个人设置修改密码	
	$('#J_pwdSave').click(function() {
		var currPwd = $('#currPwd').val();
		var newPwd1 = $('#newPwd1').val();
		var newPwd2 = $('#newPwd2').val();		
		
		if(newPwd1.length<6 || newPwd1.length>20) {
			alert('密码长度只能在6-20位字符之间');
			return;
		}else if(newPwd1 != newPwd2) {
			alert('两次输入密码不一致');
			return;			
		}else {
			$.post('personal!editPwd', {'pwd':currPwd,'newPwd':newPwd2}, function(data) {
				if(data == -1) {
					alert('旧密码错误');
				}else if(data == 1) {
					alert('修改成功');
					location.href="http://www.ceou.com.cn/login.html";
				}else {
					alert('网络超时,请重新提交');
				}
			});
		}				
	});
});











