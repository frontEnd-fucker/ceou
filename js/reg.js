
//注册页面总流程
$(function() {
	var usernameValid = false;
	var useremailValid = false;
	var pwd1Valid = false;
	var pwd2Valid = false;
	var findPwdEmailValid = true;
	
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
	
	//验证码验证
	$('#authcode').focus(function() {
		$('#J_authcodeTips').removeClass('msg-ok msg-error').text('');
	});
	
	//找回密码第一步的邮箱验证
	$('#findPwdEmail').blur(function() {
		checkFindPwdEmail();
	}).focus(function() {
		$('#J_useremailTips').removeClass('msg-ok msg-error').text('请输入注册时的邮箱地址');
	});
	
	//找回密码第一步的验证码验证
	$('#authcode').focus(function() {
		$('#J_findPwdAuthcodeTips').removeClass('msg-ok msg-error').text('请输入验证码');
	});
	
	//找回密码第二步的验证码验证
	$('#emailAuth').focus(function() {
		$('#J_emailAuthTips').removeClass('msg-ok msg-error').text('');
	});	
	
	//更新验证码
	$('#auth-img, #J_changeImg').click(function() {
		setTimeout(function() {
			$('#auth-img').attr('src', "imageCode?date="+new Date().getTime());		
		}, 50);		
	});
	
	//注册按钮点击验证全部表单，通过则提交
	$('#J_regSubmit').click(function() {		
		$('#username, #useremail, #pwd1, #pwd2').trigger('blur');
		if(usernameValid && useremailValid && pwd1Valid && pwd2Valid) {	
			$('#J_regSubmit')[0].disabled = true;
			$('#J_regSubmit').addClass('disabled').val('提交中,请等待');				
			var authcode = $('#authcode').val();
			var username = $('#username').val();	
			var useremail = $('#useremail').val();
			var pwd2 = $('#pwd2').val();
			$.post('userReg!userRegist', {'username':username, 'pwd':pwd2, 'useremail':useremail, 'authcode':authcode}, function(data) {
				if(data==-1) {
					$('#J_regSubmit')[0].disabled = false;
					$('#J_regSubmit').removeClass('disabled').val('立即注册');						
					$('#J_authcodeTips').removeClass('msg-ok').addClass('msg-error').text('验证码错误');
				}else if(data==1) {				
					location.href = 'http://www.ceou.com.cn/userReg!toEmailAuth?useremail=' + useremail;
				}							
			});		
		}
	});
	
	
	
	//找回密码第一步
	$('#J_findPwdStep1').click(function() {	
		var useremail = $('#findPwdEmail').val();		
		var authcode = $('#authcode').val();
		checkFindPwdEmail();
		
		if(findPwdEmailValid) {
			//通过判断提交邮箱和验证码		
			$.post('user!findPwdStep1', {'useremail': useremail, 'authcode': authcode}, function(data) {
				if(data==-1) {
					//验证码错误，弹提示语
					$('#J_findPwdAuthcodeTips').removeClass('msg-ok').addClass('msg-error').text('验证码错误');
				}else if(data==1) {
					//验证码正确，跳到step2
					location.href = 'http://www.ceou.com.cn/findPwdStep2.jsp?useremail=' + useremail
				}
			});					
		}		
	});	
	
	
	//找回密码第二步
	$('#J_findPwdStep2').click(function() {
		var emailAuth = $('#emailAuth').val();
		var useremail = $('#step2useremail').text();
		if(!emailAuth) {
			//当验证码表单为空
			$('#J_emailAuthTips').removeClass('msg-ok').addClass('msg-error').text('验证码不能为空');
		}else {
			//验证码不为空，发到后台
			$.post('validateEmail!findPwdStep2',{'ufindpwdcode':emailAuth,'useremail':useremail},function(data){
				//data=1为验证码正确
				if(data==1){
					location.href = 'http://www.ceou.com.cn/validateEmail!toStep3?useremail=' + useremail + '&ufindpwdcode=' + emailAuth;
				}else{
					$('#J_emailAuthTips').removeClass('msg-ok').addClass('msg-error').text('验证码错误');
				}
			});
		}
	});
	
	//找回密码第三步
	$('#J_findPwdStep3').click(function() {
		checkPwd();
		if(pwd1Valid && pwd2Valid) {
			//密码通过格式验证
			var pwd2 = $('#pwd2').val();
			var useremail = $('#step3useremail').text();
			$.post('validateEmail!findPwdStep3',{'password':pwd2,'useremail':useremail},function(data){
				if(data==1){
					alert("修改成功，请重新登录");
					location.href = 'http://www.ceou.com.cn/login.html';
				}else{
					alert("网络超时，请重新发送");
				}
			});
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
	
	function checkFindPwdEmail() {			
		var useremail = $.trim($('#findPwdEmail').val());
		
		//判断是否为空
		if(!useremail) {
			$('#J_useremailTips').removeClass('msg-ok').addClass('msg-error').text('邮箱不能为空');
			findPwdEmailValid = false;
			return;
		}	
		
		//判断格式
		if(!/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(useremail)) {
			$('#J_useremailTips').removeClass('msg-ok').addClass('msg-error').text('邮箱格式不对');
			findPwdEmailValid = false;
			return;
		}	
		
		//异步发到服务器验证	
		$.post('user!checkUserByEmail', {'useremail': useremail}, function(data) {
			//1为该邮箱不存在,不通过验证
			//-1为该邮箱有注册过，通过验证
			if(data==1) {
				$('#J_useremailTips').removeClass('msg-ok').addClass('msg-error').text('不存在该邮箱注册的用户');				
				findPwdEmailValid = false;
			}else if(data==-1) {				
				$('#J_useremailTips').removeClass('msg-error').addClass('msg-ok').text('');
				findPwdEmailValid = true;
			}
		});			
	}
	
	
});

