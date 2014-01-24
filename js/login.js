// JavaScript Document
$(function() {
	$('#username').focus(function() {
		$('#J_usernameTips').hide();
	});
	$('#pwd').focus(function() {
		$('#J_pwdTips').hide();
	});	
	
	//点击登录按钮后验证表单通过则提交数据
	$('#J_loginBtn').click(function() {
		var username = $('#username').val();
		var pwd = $('#pwd').val();
		//var usertype = $('radio[name=usertype]:checked').val();
		if(!username) {
			$('#J_usernameTips').show();
			return;
		}
		if(!pwd) {
			$('#J_pwdTips').show();
			return;
		}
		
		$.post('user!login', {'username':username,'pwd':pwd}, function(data) {	
			//-2为用户名不存在
			//-1为用户名和密码不匹配
			//1则为成功登录，跳转到个人中心页面	
			if(data==-2) {
				$('#J_usernameTips').text('您输入用账户名不存在').show();
			}else if(data==-1) {
				$('#J_pwdTips').text('您输入的账户名和密码不匹配').show();
			}else if(data==1) {
				//登录成功，设置账户cookie
				$.cookie('cookieUsername', username, {expires: 365, path: '/'});
				location.href = 'http://www.ceou.com.cn/CEOU/passport.jsp';
			}
		});
	});
});