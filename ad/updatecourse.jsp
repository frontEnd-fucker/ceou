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
            <input id="h-level_2" type="hidden" name="couSkill" value="${coursebean.couskill}"/>
            <input id="h-level_3" type="hidden" name="couIndustry" value="${coursebean.couindustry}"/>
            <input id="h-mLevel_2" type="hidden" name="ifceou" value="${coursebean.ifceou}"/>
		<form id="form" action="admincourse!updatecourse" method="post" enctype="multipart/form-data">
            <fieldset class="column-left">
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->             
            <p>
              <label>课程名称：</label>
              <input type="hidden" name="coursebean.couid" value="${coursebean.couid}"/>
              <input class="text-input medium-input" type="text" id="small-input" name="coursebean.couname" value="${coursebean.couname}"/>
            </p>
            <p>
            	<label>添加封面图片：</label>
            	<div class="cover" ><img src="../image/course/${coursebean.coupicurl}" /></div>
              <input type="hidden" name="coursebean.coupicurl" value="${coursebean.coupicurl}"/>         
              <input type="file" name="myFile"/>
            </p>    
            <!-- 模块 -->           
          <p>
      	<label>所属模块</label>
        <select id="mLevel_1" name="coursebean.catid">
        		<option class="default-option" value="-1">请选择...</option>
				<option value="1" <s:if test="coursebean.catid==1"> selected="selected" </s:if>>倍增学院</option>
				<option value="2" <s:if test="coursebean.catid==2"> selected="selected" </s:if>>名师堂</option>
				<option value="3" <s:if test="coursebean.catid==3"> selected="selected" </s:if>>商学院</option>
				<option value="4" <s:if test="coursebean.catid==4"> selected="selected" </s:if>>在线学历院</option>
        </select>
        <select id="mLevel_2" name="coursebean.ifceou">
            <option class="default-option" value="-1">请选择...</option>
        </select>  
        </p>                         
            <!-- 类别 --> 
            <p>
            <label for="level_1">所属类别：</label>
            <select id="level_1" name="coursebean.couposition">
                <option class="default-option" value="-1">请选择...</option>
                <option value="1" <s:if test="coursebean.couposition==1"> selected="selected" </s:if>>通用</option>
                <option value="2" <s:if test="coursebean.couposition==2"> selected="selected" </s:if>>行业</option>
            </select>
            <select id="level_2" name="coursebean.couskill">
                <option class="default-option" value="-1">请选择...</option>
            </select>
            <select id="level_3" name="coursebean.couindustry">
                <option class="default-option" value="-1">请选择...</option>
            </select>              
        </p>  
                                     
            <p>
            	<label>课程权限：</label>
             <select name="coursebean.coupower" >
						<option value="0" <s:if test="coursebean.coupower==0"> selected="selected" </s:if>>免费课程</option>
						<option value="1" <s:if test="coursebean.coupower==1"> selected="selected" </s:if>>白银会员</option>
						<option value="2" <s:if test="coursebean.coupower==2"> selected="selected" </s:if>>黄金会员</option>
						<option value="3" <s:if test="coursebean.coupower==3"> selected="selected" </s:if>>铂金会员</option>
						<option value="4" <s:if test="coursebean.coupower==4"> selected="selected" </s:if>>钻石会员</option>
			</select>
              <!-- Classes for input-notification: success, error, information, attention -->      
              <span class="input-notification information png_bg">数字越大，所需权限越高</span>         
            </p> 
            <p>
            	<label>课程状态：</label>
             <select name="coursebean.coustatus" >
						<option value="0" <s:if test="coursebean.coustatus==0"> selected="selected" </s:if>>审核</option>
						<option value="1" <s:if test="coursebean.coustatus==1"> selected="selected" </s:if>>CC</option>
						<option value="2" <s:if test="coursebean.coustatus==2"> selected="selected" </s:if>>其他</option>
			</select>             
            </p>     
            <p>
            	<label>更新人：</label>
              <input class="text-input small-input" type="text" id="small-input" name="coursebean.updatename" value="${coursebean.updatename}"/>
            </p>          	      
            </fieldset>    
            <fieldset class="column-right">
              <p>
                <label>&nbsp; &nbsp; 讲师名：</label>
                <input class="text-input small-input" type="text" id="small-input" name="coursebean.coulecturer" value="${coursebean.coulecturer}"/>
              </p>
            	<p>
              	<label>课程评分：</label>
                <select name="coursebean.couscore" class="small-input">
                  <option value="1" <s:if test="coursebean.couscore==1"> selected="selected" </s:if>>1</option>
                  <option value="2" <s:if test="coursebean.couscore==2"> selected="selected" </s:if>>2</option>
                  <option value="3" <s:if test="coursebean.couscore==3"> selected="selected" </s:if>>3</option>
                  <option value="4" <s:if test="coursebean.couscore==4"> selected="selected" </s:if>>4</option>
                  <option value="5" <s:if test="coursebean.couscore==5"> selected="selected" </s:if>>5</option>
                </select> 
              </p>  
            	<p>
              	<label>课程地址：</label>
                <input class="text-input small-input" type="text" id="small-input" name="coursebean.couvideourl" value="<s:property value="coursebean.couvideourl"/>"/>
              </p>        
              <p>
                <label>课程优先：</label>
                <select name="coursebean.mark4" >
						<option value="1" <s:if test="coursebean.mark4==1"> selected="selected" </s:if>>默认</option>
						<option value="0" <s:if test="coursebean.mark4==0"> selected="selected" </s:if>>最低</option>
						<option value="2" <s:if test="coursebean.mark4==2"> selected="selected" </s:if>>优先筛选</option>
						<option value="3" <s:if test="coursebean.mark4==3"> selected="selected" </s:if>>二级导航</option>
						<option value="4" <s:if test="coursebean.mark4==4"> selected="selected" </s:if>>一级导航</option>
				</select> 
                <!-- Classes for input-notification: success, error, information, attention -->      
                <span class="input-notification information png_bg">数字越大，优先级越高</span>         
              </p>     
            	<p>
              	<label>课程价格：</label>
                <input class="text-input small-input" type="text" id="small-input" name="coursebean.coumoney" value="${coursebean.coumoney}" />
              </p>     
              <p>
                <label class="align-left">课程简介：</label>
                <textarea style="width: 51% !important; height: 150px;" name="coursebean.couprofile"><s:property value="coursebean.couprofile"/></textarea>
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
