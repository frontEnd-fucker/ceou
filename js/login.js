
//注册页面流程
$(function() {
	var valided = false;
	$('#username').blur(function() {
		checkUsername();
	});
	$('#useremail').blur(function() {
		checkUseremail();
	});
	$('#pwd1').blur(function() {
		checkPwd1();
	});
	$('#pwd2').blur(function() {
		checkPwd2();
	});
	$('.reg-btn').click(function() {
		$('#username, #useremail, ')
	});
	//更新验证码
	$('#auth-img').click(function() {
		setTimeout(function() {
			$('#auth-img').attr('src', "imageCode?date="+new Date().getTime());		
		}, 50);		
	});
	$('#J_changeImg').click(function() {
		$('#auth-img').trigger('click');
	});
});

function checkUsername() {
	var username = $('#username').val();
	$.post('user!checkUserByName', {'name': username}, function(data) {
		console.log('fucking ok');
		if(data==1) {
			alert('注册成功');
			//$(this).siblings('.tips').removeClass('error').addClass('okay').text('用户名可用');
		}else if(data==-1) {
			alert('用户名已存在');
			//$(this).sibings('.tips').removeClass('okay').addClass('error').text('该用户名已被注册');
		}
	}).fail(function() {console.log('fucking fail');});
}

/*function checkUsername() {
	var username = $('#username').val();
	$.post('index.php', {'name': username}, function(data) {
		console.log('fuck');
		if(data) {
			alert('ok');
			$(this).siblings('.tips').removeClass('error').addClass('okay').text('用户名可用');
		}else {
			$(this).sibings('.tips').removeClass('okay').addClass('error').text('该用户名已被注册');
		}
	}).fail(function() {console.log('fucekkk');});
}*/