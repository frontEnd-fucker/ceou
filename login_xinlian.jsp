<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
	<script type="text/javascript" language="javascript">
    		function validateName(){
    			$.post(
    			"user!checkUserByName",{'name':'b'},function(data){
    				var userStatus = data;
    				alert(userStatus);
    			});
    		}
    </script>

  </head>
  
  <body>
    	<input type="text" name="name" value="<s:property value="name"/>" />
    	<input type="button" value="点击" onClick="validateName()" />
  </body>
</html>
