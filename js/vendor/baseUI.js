/**
 * 常规函数
 * 命名空间为yu
 */

var yu = {};

/**
 * 弹出遮罩层 
 */
yu.addMask = function() {
	var mask = document.createElement('div');
	mask.id = 'mask';
	$('body').append(mask);
}

/**
 * 弹出登录模态框
 */
yu.popLogin = function() {
	var str = [
		'<div id="J_popout-login" class="popout-login">',
			'<h2 class="title">登录中国企业在线大学<i class="btn-close fr"></i></h2>',
			'<div class="pd">',
				'<p class="input-con">',
			    	'<label for="username">帐号：</label>',
			        '<input id="username" class="text" type="text" />',                        
			    '</p>',
			    '<p class="input-con">',
			    	'<label for="pwd">密码：</label>',
			        '<input id="pwd" class="text" type="password" />',
			    '</p>',
			    '<span id="J_popout-login-tips" class="popout-login-tips">密码错误</span>',
			    '<div class="bottom">',
			    	'<a id="J_btn-login" class="h-loginBtn" href="javascript:;">登录</a>',			    
			    	'<ul>',
			    		'<li><a href="findPwdStep1.jsp">忘记密码</a></li>',
			    		'<li><a href="reg.jsp">注册</a></li>',
			    	'</ul>',
			    '<div>',	
		    '</div>',
		'</div>'].join('');	

	$('body').append(str);	
	yu.addMask();
	$('#J_popout-login .btn-close').click(function() {
		$('#J_popout-login').remove();
		$('#mask').remove();
	});

	// input的focus&blur效果
	$('#username').focus(function() {
		$('#J_usernameTips').hide();
	}).keydown(function() {
		$(this).removeClass('error');
	});
	$('#pwd').focus(function() {
		$('#J_pwdTips').hide();
	}).keydown(function() {
		$(this).removeClass('error');
	});	
	
	// 点击回车键触发登录按钮点击
	$('#J_popout-login input').keyup(function(e) {
		if(e.which==13) {
			$('#J_btn-login').click();
		}
	});
	
	//点击登录按钮后验证表单通过则提交数据
	$('#J_btn-login').click(function() {
		yu.checkLogin();
	});	
}


/**
 * 登录验证函数
 */
yu.checkLogin = function() {
	var username = $('#username').val();
	var pwd = $('#pwd').val();

	if(!username) {
		$('#username').addClass('error').focus();			
		return;
	}
	if(!pwd) {
		$('#pwd').addClass('error').focus();
		return;
	}
	
	$.post('user!login', {'username':username,'pwd':pwd}, function(data) {	
		//-2为用户名不存在
		//-1为用户名和密码不匹配
		//1则为成功登录，刷新页面
		if(data==-2) {
			$('#J_popout-login-tips').text('您输入的账户名不存在').show();
		}else if(data==-1) {
			$('#J_popout-login-tips').text('您输入的账户名和密码不匹配').show();
		}else if(data==1) {
			location.reload();
		}else {
			alert('网络错误，请重新登录');
		}
	});	
}