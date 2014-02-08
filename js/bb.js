// 命名空间bb

var bb = {};

/**
 * 登录弹出层
 */
bb.login = function() {	 
	var htmlTxt = '<div class="signup-form"><form><div class="input-con"><label for="username">用户名：</label><input id="username" name="username" type="text" /><p id="J_usernameTips">请输入用户名</p></div><div class="input-con"><label for="pwd">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label><input id="pwd" name="pwd" type="password" /><p id="J_pwdTips">请输入密码</p></div><div class="btn-con"><a id="J_loginBtn" class="blue-btn" href="#">登录</a><a class="blue-btn" href="reg.jsp">注册</a><a class="forget-btn" href="#">忘记密码？</a></div></form></div>';
	
	bb.addMask(.6);
	$('body').append(htmlTxt);
}

/**
 * 添加遮罩层
 */
bb.addMask = function(opacity) {
	$('div', {css: {width: 100%}},);
}