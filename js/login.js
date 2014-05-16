// JavaScript Document
$(function() {
	$('#username').focus(function() {
		$('#J_usernameTips').hide();
	});
	$('#pwd').focus(function() {
		$('#J_pwdTips').hide();
	});	
	
	//输入密码后点击回车键触发登录按钮点击
	$('#pwd').keyup(function(e) {
		if(e.which==13) {
			$('#J_loginBtn').click();
		}
	});
	
	//点击登录按钮后验证表单通过则提交数据
	$('#J_loginBtn').click(function() {
		var username = $('#username').val();
		var pwd = $('#pwd').val();
		//var usertype = $('radio[name=usertype]:checked').val();
		if(!username) {
			$('#J_usernameTips').text('请输入用户名').show();
			return;
		}
		if(!pwd) {
			$('#J_pwdTips').text('请输入密码').show();
			return;
		}
		
		$.post('user!login', {'username':username,'pwd':pwd}, function(data) {	
			//-2为用户名不存在
			//-1为用户名和密码不匹配
			//1则为成功登录，跳转到个人中心页面	
			if(data==-2) {
				$('#J_usernameTips').text('您输入的用户名不存在').show();
			}else if(data==-1) {
				$('#J_pwdTips').text('您输入的用户名和密码不匹配').show();
			}else if(data==1) {
				//登录成功，设置账户cookie
				//$.cookie('cookieUsername', username, {expires: 365, path: '/'});
				location.href = 'personal!show';
			}
		});
	});

	// popout弹出层的事件代理
	$('#popout').on('click', 'a', function(e) {

		var $otherLogin = $('#popout').find('.other-login'); 
		var $otherBind = $('#popout').find('.other-bind');
		var $otherReg = $('#popout').find('.other-reg');

		switch (this.id) {

			// 点击关闭按钮
			case 'close':
				$('#popout, .mask').hide();
				return false;
				break;

			// 点击绑定
			case 'J_bind':
				$otherLogin.hide();
				$otherBind.show();
				return false;
				break;

			// 绑定时点击返回
			case 'J_bindBack':
				$otherBind.hide();
				$otherLogin.show();
				return false;
				break;

			// 注册时点击返回
			case 'J_regBack':
				$otherReg.hide();
				$otherLogin.show();
				return false;
				break;			

			// 点击立即登录
			case 'J_loginNow':
				$otherLogin.hide();
				$otherReg.show();
				return false;
				break;				
		}
	});

	// 处理placeholder
	$('.placeholder').click(function() {
		$(this).prev('.input-txt').trigger('focus');
	});	
	$('.input-txt').focus(function() {
		if(!this.value.length) {
			$(this).next().hide();
		}
	}).blur(function() {
		if(!this.value.length) {
			$(this).next().show();
		}
	});
});