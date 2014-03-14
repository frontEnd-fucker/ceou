<%@ page language="java" import="java.util.*,com.ceou.bean.AdminUserBean" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<script src="resources/scripts/base.js" type="text/javascript"></script>
      <!-- sidebar -->
  <div id="sidebar">
    <div id="sidebar-wrapper">
      <!-- Sidebar with logo and menu -->
      <h1 id="sidebar-title"><a href="#">Simpla Admin</a></h1>
      <!-- Logo (221px wide) -->
      <a href="#"><img id="logo" src="resources/images/logo.png" alt="Simpla Admin logo" /></a>
      <!-- Sidebar Profile links -->
       <% AdminUserBean ausb=(AdminUserBean)session.getAttribute("adminuserBean");%> 
      <div id="profile-links"> Hello, <a href="#" title="Edit your profile"><%=ausb.getUsername() %></a><br />
        <br />
        <a href="http:\\www.ceou.com.cn" title="View the Site">进入官网</a> | <a href="adminlogin!outLogin" title="Sign Out">登出</a> </div>
      <ul id="main-nav">
        <!-- Accordion Menu -->
          <!-- Add the class "no-submenu" to menu items with no sub menu -->
        <li> <a href="#" class="nav-top-item">
          <!-- Add the class "current" to current menu item -->
          课程管理 </a>
          <ul>
            <li><a href="addcourse.jsp">快速添加课程</a></li>
            <li><a href="admincourse!show">课程管理</a></li>
            <!-- Add class "current" to sub menu items also -->
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item"> 文章管理 </a>
          <ul>
            <li><a href="addarticle.jsp">快速添加文章</a></li>
            <li><a href="adminarticle!show">文章管理</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item"> 会员管理 </a>
          <ul>
            <li><a href="addusers.jsp">快速添加会员</a></li>
            <li><a href="adminusers!show">会员管理</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item"> 帐号管理 </a>
          <ul>
            <li><a href="#">帐号管理</a></li>
          </ul>
        </li>
      </ul>
      <!-- End #main-nav -->
    </div>
  </div>
  <!-- End #sidebar -->
