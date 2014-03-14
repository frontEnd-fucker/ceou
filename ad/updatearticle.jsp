<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加文章页面</title>
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
        <h3>添加文章</h3>
        <!--<ul class="content-box-tabs">
          <li><a href="#tab1" class="default-tab">Table</a></li>
          <li><a href="#tab2">Forms</a></li>
        </ul>-->
        <div class="clear"></div>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div  id="tab2" style="display: block;">
          <form action="adminarticle!updatearticle" method="post">
            <fieldset class="column-left">
              <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
              <!-- 追加隐藏框，文章ID -->
              <input type="hidden" name="articlebean.artid" value="${articlebean.artid}" />             
              <p>
                <label>文章名：</label>
                <input class="text-input small-input" type="text" id="small-input" name="articlebean.artname" value="${articlebean.artname}" />
              </p>
              <p>
                <label>作者：</label>
                <input class="text-input small-input" type="text" id="small-input" name="articlebean.artlecturer" value="${articlebean.artlecturer}" />
              </p>    
              <p>
                <label>来源：</label>
                <input class="text-input small-input" type="text" id="small-input" name="articlebean.artfrom" value="${articlebean.artfrom}" />
              </p>                       
              <p>
                <label>所属模块：</label>
                <select name="articlebean.catid" class="small-input">
                  <option value="0" <s:if test="articlebean.catid==0"> selected="selected" </s:if>>默认</option>
                  <option value="1" <s:if test="articlebean.catid==1"> selected="selected" </s:if>>倍增学院</option>
                  <option value="2" <s:if test="articlebean.catid==2"> selected="selected" </s:if>>名师堂</option>
                  <option value="3" <s:if test="articlebean.catid==3"> selected="selected" </s:if>>商学院</option>
                  <option value="4" <s:if test="articlebean.catid==4"> selected="selected" </s:if>>在线学历院</option>
                </select>                           
              </p>  
              <p>
                <label>优先级：</label>
                <select name="articlebean.mark4" class="small-input">
                  <option value="0" <s:if test="articlebean.mark4==0"> selected="selected" </s:if>>默认</option>
                  <option value="1" <s:if test="articlebean.mark4==1"> selected="selected" </s:if>>优先筛选</option>
                  <option value="2" <s:if test="articlebean.mark4==2"> selected="selected" </s:if>>二级导航</option>
                  <option value="3" <s:if test="articlebean.mark4==3"> selected="selected" </s:if>>一级导航</option> 
                </select>                           
              </p> 
              <p>
                <label>所属类别：</label>
                <select name="articlebean.artcategory" class="small-input">
                  <option value="1" <s:if test="articlebean.artcategory==1"> selected="selected" </s:if>>电子商务</option>
                  <option value="2" <s:if test="articlebean.artcategory==2"> selected="selected" </s:if>>客户服务</option>
                  <option value="3" <s:if test="articlebean.artcategory==3"> selected="selected" </s:if>>领导力</option>
                  <option value="4" <s:if test="articlebean.artcategory==4"> selected="selected" </s:if>>名师名家</option>
                  <option value="5" <s:if test="articlebean.artcategory==5"> selected="selected" </s:if>>企业培训</option>
                  <option value="6" <s:if test="articlebean.artcategory==6"> selected="selected" </s:if>>企业战略</option>
                  <option value="7" <s:if test="articlebean.artcategory==7"> selected="selected" </s:if>>人力资源</option>
                  <option value="8" <s:if test="articlebean.artcategory==8"> selected="selected" </s:if>>市场营销</option>
                  <option value="9" <s:if test="articlebean.artcategory==9"> selected="selected" </s:if>>职场兵法</option>
                  <option value="10" <s:if test="articlebean.artcategory==10"> selected="selected" </s:if>>职场励志</option>
                </select>                           
              </p>                                   	      
            </fieldset>    
            <fieldset class="column-right">
              <p>
                <label>权限：</label>
                <select name="articlebean.artpower" class="small-input">
						<option value="0" <s:if test="articlebean.artpower==0"> selected="selected" </s:if>>普通权限</option>
						<option value="1" <s:if test="articlebean.artpower==1"> selected="selected" </s:if>>白银权限</option>
						<option value="2" <s:if test="articlebean.artpower==2"> selected="selected" </s:if>>黄金权限</option>
						<option value="3" <s:if test="articlebean.artpower==3"> selected="selected" </s:if>>铂金权限</option>
						<option value="4" <s:if test="articlebean.artpower==4"> selected="selected" </s:if>>钻石权限</option>
                </select>                           
              </p> 
            	<p>
              	<label>状态：</label>
                <select name="articlebean.artstatus" class="small-input">
                  <option value="0" <s:if test="articlebean.artstatus==0"> selected="selected" </s:if>>审核中</option>
                  <option value="1" <s:if test="articlebean.artstatus==1"> selected="selected" </s:if>>正常</option>
                  <option value="2" <s:if test="articlebean.artstatus==2"> selected="selected" </s:if>>热点</option>
                </select> 
              </p>  
            	<p>
              	<label>更新人：</label>
                <input class="text-input small-input" type="text" id="small-input" name="articlebean.updatename" value="${articlebean.updatename}" />
              </p>        
            	<p>
              	<label>更新时间：</label>
                <input class="text-input small-input" type="text" id="small-input" name="articlebean.updatetime" value="${articlebean.updatetime}" />
              </p>    
              <p>
                <label class="align-left">文章简介：</label>
                <textarea style="width: 51% !important; height: 150px;" name="articlebean.artprofile" >${articlebean.artprofile}</textarea>
              </p>
              <p>
                <label class="align-left">文章内容：</label>
                <textarea style="width: 51% !important; height: 150px;" name="articlebean.artcontent" >${articlebean.artcontent}</textarea>
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
