<%@ page language="java" import="java.util.*,com.ceou.bean.AdminUserBean" pageEncoding="utf-8"%>
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
        <h3>添加课程信息</h3>
        <!--<ul class="content-box-tabs">
          <li><a href="#tab1" class="default-tab">Table</a></li>
          <li><a href="#tab2">Forms</a></li>
        </ul>-->
        <div class="clear"></div>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div  id="tab2" style="display: block;">
		<form id="form" action="admincourse!addcourse" method="post" enctype="multipart/form-data">
            <fieldset class="column-left">
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->             
            <p>
              <label>课程名称：</label>
              <input class="text-input medium-input" type="text" id="small-input" name="coursebean.couname" />
            </p>
            <p>
            	<label>添加封面图片：</label>
            	<div class="cover" ><img src="resources/images/cover.jpg" /></div>              
              <input type="file" name="myFile"/>
            </p>    
            <p>
             	<label>所属模块：</label>
              <select id="mLevel_1" name="coursebean.catid" class="small-input">
				<option class="default-option" value="-1">请选择...</option>
				<option value="0">培训课程</option>
				<option value="1">倍增学院</option>
				<option value="2">名师堂</option>
				<option value="3">商学院</option>
				<option value="4">在线学历院</option>
              </select>       
              <select id="mLevel_2" name="coursebean.ifceou" class="small-input">
                <option class="default-option">请选择...</option>
              </select>       
            </p>  
            <p>
                <label for="level_1">所属类别：</label>
                <select id="level_1" name="coursebean.couposition">
                    <option class="default-option" value="0">请选择...</option>
                    <option value="1">通用</option>
                    <option value="2">行业</option>
                </select>
                <select id="level_2" name="coursebean.couskill">
                    <option class="default-option" >请选择...</option>
                </select>
                <select id="level_3" name="coursebean.couindustry">
                    <option class="default-option" >请选择...</option>
                </select>  
            </p>               
            <p>
            	<label>课程权限：</label>
             <select name="coursebean.coupower" >
						<option value="0">免费课程</option>
						<option value="1" >白银会员</option>
						<option value="2" >黄金会员</option>
						<option value="3" >铂金会员</option>
						<option value="4" >钻石会员</option>
			</select>
              <!-- Classes for input-notification: success, error, information, attention -->      
              <span class="input-notification information png_bg">数字越大，所需权限越高</span>         
            </p> 
            <p>
            	<label>课程状态：</label>
             <select name="coursebean.coustatus" >
						<option value="0" >审核</option>
						<option value="1" >CC</option>
						<option value="2" >大众</option>
			</select>             
            </p>     
            <p>
            	<label>更新人：</label>
              <input class="text-input small-input" type="text" id="small-input" name="coursebean.updatename" />
            </p>          	      
            </fieldset>    
            <fieldset class="column-right">
              <p>
                <label>&nbsp; &nbsp; 讲师名：</label>
                <input class="text-input small-input" type="text" id="small-input" name="coursebean.coulecturer" />
              </p>
            	<p>
              	<label>课程评分：</label>
                <select name="coursebean.couscore" class="small-input">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                </select> 
              </p>  
            	<p>
              	<label>课程地址：</label>
                <input class="text-input small-input" type="text" id="small-input" name="coursebean.couvideourl" />
              </p>        
              <p>
                <label>课程优先：</label>
                <select name="coursebean.mark4" >
						<option value="1">默认</option>
						<option value="0" >最低</option>
						<option value="2" >优先筛选</option>
						<option value="3" >二级导航</option>
						<option value="4" >一级导航</option>
				</select> 
                <!-- Classes for input-notification: success, error, information, attention -->      
                <span class="input-notification information png_bg">数字越大，优先级越高</span>         
              </p>     
            	<p>
              	<label>课程价格：</label>
                <input class="text-input small-input" type="text" id="small-input" name="coursebean.coumoney" />
              </p>     
              <p>
                <label class="align-left">课程简介：</label>
                <textarea style="width: 51% !important; height: 150px;" name="coursebean.couprofile"></textarea>
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
