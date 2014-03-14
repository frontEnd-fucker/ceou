<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加课程信息页面</title>
<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>
<!-- jQuery Datepicker Plugin -->
<!--<script type="text/javascript" src="resources/scripts/jquery.datePicker.js"></script>-->
<!--<script type="text/javascript" src="resources/scripts/jquery.date.js"></script>-->
<script src="resources/scripts/3levelSelector.js"></script>
</head>
<body>
<div id="body-wrapper">
  <!-- Wrapper for the radial gradient background -->
  <jsp:include page="sidebar.jsp" flush="true" />
  <div id="main-content">
    <!-- Main Content Section with everything -->
    <!-- Page Head -->
    <h2>Welcome</h2>
    <!-- End .clear -->
    <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>修改会员账户</h3>
        <!--<ul class="content-box-tabs">
          <li><a href="#tab1" class="default-tab">Table</a></li>
          <li><a href="#tab2">Forms</a></li>
        </ul>-->
        <div class="clear"></div>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div  id="tab2" style="display: block;">
		<form id="form" action="adminusers!updateuser" method="post">
            <fieldset>
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->             
            <p>
              <label>会员帐号：</label>
               <input type="hidden" name="userBean.id" value="${userBean.id}"/>
              ${userBean.name }
            </p>
            <p>
              <label>会员邮箱：</label>
                ${userBean.email }
            </p>
            <p>
            	<label>用户积分：</label>
			 <input class="text-input small-input" type="text" id="small-input" name="userBean.integral" value="${userBean.integral}" />             
            </p>  
            <p>
            	<label>用户类型：</label>
              <select name="userBean.usertype" class="small-input">
                <option value="1" <s:if test="userBean.usertype==1"> selected="selected" </s:if>>个人用户</option>
                <option value="2" <s:if test="userBean.usertype==2"> selected="selected" </s:if>>企业用户</option>
                <option value="3" <s:if test="userBean.usertype==3"> selected="selected" </s:if>>公务员</option>
              </select>               
            </p>  
            <p>
            	<label>用户权限：</label>
              <select name="userBean.privilegeid" class="small-input">
						<option value="0" <s:if test="userBean.privilegeid==0"> selected="selected" </s:if>>普通会员</option>
						<option value="1" <s:if test="userBean.privilegeid==1"> selected="selected" </s:if>>白银会员</option>
						<option value="2" <s:if test="userBean.privilegeid==2"> selected="selected" </s:if>>黄金会员</option>
						<option value="3" <s:if test="userBean.privilegeid==3"> selected="selected" </s:if>>铂金会员</option>
						<option value="4" <s:if test="userBean.privilegeid==4"> selected="selected" </s:if>>钻石会员</option>
              </select>               
            </p>  
            <p>
            	<label>用户状态：</label>
              <select name="userBean.userStatus" class="small-input">
                <option value="0" <s:if test="userBean.userStatus==0"> selected="selected" </s:if>>正常</option>
                <option value="1" <s:if test="userBean.userStatus==1"> selected="selected" </s:if>>未激活（限制登录）</option>
                <option value="2" <s:if test="userBean.userStatus==2"> selected="selected" </s:if>>异常（限制登录）</option>
              </select>               
            </p>                                                                                                             
            </fieldset>        
            <div class="clear"></div>
            <p>
              <input class="button" type="submit" value="  保存  " />
            </p>             
            <!-- End .clear -->
          </form>
        </div>
        <!-- End #tab2 -->
      </div>
      <!-- End .content-box-content -->
    </div>
    <!-- End .content-box -->	
    <div class="clear"></div>

    <div id="footer"> <small>
      <!-- Remove this notice or replace it with whatever you want -->
      &#169; Copyright 2010 Your Company | Powered by <a href="#">admin templates</a> | <a href="#">Top</a> </small> </div>
    <!-- End #footer -->
  </div>
  <!-- End #main-content -->
</div>
</body>
<!-- Download From www.exet.tk-->
</html>
