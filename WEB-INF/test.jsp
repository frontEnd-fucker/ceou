<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  	<p>尊敬的${sessionScope.userBean.name}:</p>
   	<p style="color: red">我们发现您目前已在其他地方登录，可能是您的号被盗取，如果没有，重新登录即可</p>
   	<p><a style="font-size: 50px " href="www.ceou.com.cn/login.html">点击重新登录</a></p>
   	<p><a style="font-size: 50px " href="www.ceou.com.cn/findPwdStep1.jsp">点击找回密码</a></p>
  </body>
</html>
