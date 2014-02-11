
//注册页面总流程
$(function() {
	var usernameValid = false;
	var useremailValid = false;
	var pwd1Valid = false;
	var pwd2Valid = false;
	
	//用户名验证
	$('#username').blur(function() {
		checkUsername();
	})
	.focus(function() {
		$('#J_usernameTips').removeClass('msg-ok msg-error').text('可使用字母、数字或下划线');
	});
	
	//邮箱验证
	$('#useremail').blur(function() {
		checkUseremail();
	})
	.focus(function() {
		$('#J_useremailTips').removeClass('msg-ok msg-error').text('请输入正确的邮箱地址');
	});
	
	//密码验证	
	$('#pwd1, #pwd2').blur(function() {
		checkPwd();
	});
	$('#pwd1').focus(function() {
		$('#J_pwd1Tips').removeClass('msg-ok msg-error').text('6-20位字符。可使用字母、数字或符号的组合');
	});
	$('#pwd2').focus(function() {
		$('#J_pwd2Tips').removeClass('msg-ok msg-error').text('请再次输入密码');
	});
	
	//更新验证码
	$('#auth-img, #J_changeImg').click(function() {
		setTimeout(function() {
			$('#auth-img').attr('src', "imageCode?date="+new Date().getTime());		
		}, 50);		
	});
	
	//注册按钮点击验证全部表单，通过则提交
	$('#J_regSubmit').click(function() {		
		//alert('fuck');
		$('#username, #useremail, #pwd1, #pwd2').trigger('blur');
		if(usernameValid && useremailValid && pwd1Valid && pwd2Valid) {		
//			var authcode = $('#authcode').val();
//			var username = $('#username').val();	
//			var useremail = $('#useremail').val();
//			var pwd2 = $('#pwd2').val();
//			$.post('user!userRegist', {'username':username, 'pwd':pwd2, 'useremail':useremail, 'authcode':authcode}, function(data) {
//				if(data==-1) {
//					alert('验证码错误！');
//				}else if(data==1) {
//					alert('恭喜您注册成功');	
//					location.href = 'http://www.ceou.com.cn';
//				}							
//			});		
			$('form[name=reg-form]').submit();
		}
	});
	
	//找回密码第一步
	$('#J_findPwdStep1').click(function() {		
		checkUseremail();
		if(useremailValid) {
			var useremail = $('#useremail').val();
			var authcode = $('#authcode').val();
			$.post('url', {'useremail': useremail, 'authcode': authcode}, function(data) {
				if(data==-1) {
					//验证码错误，弹提示语
					alert('验证码错误');
				}else if(data==1) {
					//验证码正确，跳到step2
					alert('验证码正确');
					location.href = 'http://www.ceou.com.cn/findPwdStep2.jsp'
				}
			});
		}
	});	
	
	//找回密码第二步
	$('#J_findPwdStep2').click(function() {
		var emailAuth = $('#emailAuth').val();
		if(!emailAuth) {
			//当验证码表单为空
			alert('请输入验证码');
		}else {
			//验证码不为空，发到后台
			alert('验证码不为空');
			location.href = 'http://www.ceou.com.cn/findPwdStep3.jsp'
		}
	});
	
	//找回密码第三步
	$('#J_findPwdStep3').click(function() {
		checkPwd();
		if(pwd1Valid && pwd2Valid) {
			//密码通过格式验证
			var pwd2 = $('#pwd2').val();
			alert('可以向后台发送密码了');
		}
	});
	
	function checkUsername() {
		var username = $.trim($('#username').val());
		
		//判断用户名是否为空
		if(!username) {
			$('#J_usernameTips').removeClass('msg-ok').addClass('msg-error').text('用户名不能为空');
			return;
		}
		
		//判断格式
		if(!/^[\u4E00-\u9FA5A-Za-z0-9_]+$/.test(username)) {
			$('#J_usernameTips').removeClass('msg-ok').addClass('msg-error').text('用户名格式不对');
			return;
		}
		
		//异步发到服务器验证
		$.post('user!checkUserByName', {'username': username}, function(data) {
			if(data==1) {
				$('#J_usernameTips').removeClass('msg-error').addClass('msg-ok').text('');
				usernameValid = true;
			}else if(data==-1) {				
				$('#J_usernameTips').removeClass('msg-ok').addClass('msg-error').text('该用户名已被注册');
				usernameValid = false;
			}
		});
	}
	
	function checkUseremail() {
		var useremail = $.trim($('#useremail').val());
		
		//判断是否为空
		if(!useremail) {
			$('#J_useremailTips').removeClass('msg-ok').addClass('msg-error').text('邮箱不能为空');
			useremailValid = false;
			return;
		}	
		
		//判断格式
		if(!/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(useremail)) {
			$('#J_useremailTips').removeClass('msg-ok').addClass('msg-error').text('邮箱格式不对');
			useremailValid = false;
			return;
		}	
		
		//异步发到服务器验证	
		$.post('user!checkUserByEmail', {'useremail': useremail}, function(data) {
			if(data==1) {
				$('#J_useremailTips').removeClass('msg-error').addClass('msg-ok').text('');
				useremailValid = true;
			}else if(data==-1) {				
				$('#J_useremailTips').removeClass('msg-ok').addClass('msg-error').text('该邮箱已被注册');
				useremailValid = false;
			}
		});			
	}
	
	function checkPwd() {
		var pwd1 = $('#pwd1').val();
		var pwd2 = $('#pwd2').val();
		//判断pwd1
		if(pwd1.length<6 || pwd1.length>20) {
			$('#J_pwd1Tips').removeClass('msg-ok').addClass('msg-error').text('密码长度只能在6-20位字符之间');
			pwd1Valid = false;
			return;
		}else {
			$('#J_pwd1Tips').removeClass('msg-error').addClass('msg-ok').text('');
			pwd1Valid = true;
		}
		//判断pwd2
		if(pwd1 != pwd2) {
			$('#J_pwd2Tips').removeClass('msg-ok').addClass('msg-error').text('两次输入密码不一致');
			pwd2Valid = false;
			return;
		}else {
			$('#J_pwd2Tips').removeClass('msg-error').addClass('msg-ok').text('');
			pwd2Valid = true;
		}
	}		
});

