<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员管理</title>
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

</head>
<body>
<div id="body-wrapper">
  <!-- Wrapper for the radial gradient background -->
   <jsp:include page="sidebar.jsp" flush="true" />
  <div id="main-content">
    <!-- Main Content Section with everything -->
    <!-- Page Head -->
    <h2>Welcome</h2>    
    <!-- 筛选器 -->
    <form id="form" action="adminusers!show" method="post">
        <p>
            <label>快速查询：</label>
             <input type="hidden" name="privilegeid" value="${privilegeid}"/>
            <input type="hidden" name="page" value="${page}"/>
            <input type="hidden" name="startDate" value="${startDate}"/>
            <input type="hidden" name="endDate" value="${endDate}"/>
            <input type="text" name="str" value="${str}"/>
            <input type="submit" />
        </p>
    </form>
    <form id="form" action="adminusers!show" method="post">
        <p>
            <label for="level_1">按权限筛选：</label>
            <select name="privilegeid">
            	<option class="default-option" value="-1">请选择...</option>
				<option value="0" <s:if test="privilegeid==0"> selected="selected" </s:if>>普通会员</option>
				<option value="1" <s:if test="privilegeid==1"> selected="selected" </s:if>>白银会员</option>
				<option value="2" <s:if test="privilegeid==2"> selected="selected" </s:if>>黄金会员</option>
				<option value="3" <s:if test="privilegeid==3"> selected="selected" </s:if>>铂金会员</option>
				<option value="4" <s:if test="privilegeid==4"> selected="selected" </s:if>>钻石会员</option>
           </select>    
        </p>     
        <p>
        	<label>按时间筛选：</label>
            <input id="startDate" name="startDate" type="date"  value="${startDate}"/>
       		     到
            <input id="endDate" name="endDate" type="date" value="${endDate}" />
            <input type="submit" />   
        </p>    
    </form>
    <!-- end 筛选器 -->
    
    <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>课程管理</h3>
        <!--<ul class="content-box-tabs">
          <li><a href="#tab1" class="default-tab">Table</a></li>
          <li><a href="#tab2">Forms</a></li>
        </ul>-->
        <div class="clear"></div>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab" id="tab1">
          <!-- This is the target div. id must match the href of this div's tab -->
          <table>
            <thead>
              <tr>
                <th>账户名</th>
                <th>邮箱</th>
                <th>用户积分</th>
                <th>用户类型</th>
                <th>用户权限</th>
                <th>用户状态</th>
                <th>注册时间</th>
                <th>操作</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <td colspan="16">
                                <!-- 以下为分页 -->
                  <div class="pagination">
                  
		                    <a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=1">首页</a>
		                    <s:if test="page==1">
		                		<a href="#">上一页</a>
		                	</s:if>
		                	<s:else>
		                		<a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property value="page-1"/>" >上一页</a>
		                	</s:else>
		                 
		                   <!-- test1 begin -->
		                    <s:if test="%{(page<=3)}">
		                     	<s:if test="%{(totalPage<=5)}">
		                         	<s:iterator begin="1" end="totalPage" var="p">
		                    			<s:if test="#p==page">
		                    				<a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>		                     
		                     	</s:if>
			                 	<s:else>
			                 		<s:iterator begin="1" end="5" var="p">
										<s:if test="#p==page">
		                    				<a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>		
			                 	</s:else>		                 			                 
		                    </s:if>
		                   <!-- test1 end -->   
		                   <!-- test2 begin -->  
		                    <s:if test="%{page>3}">
		                    	<s:if test="%{totalPage-page>2}">
		                      		<s:iterator begin="page-2" end="page+2" var="p">
		                    			<s:if test="#p==page">
		                    				<a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>
		                    	</s:if>
		                    	<s:else>
		                    	 	<s:iterator begin="totalPage-4" end="totalPage" var="p">
		                    			<s:if test="#p==page">
		                    				<a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>
		                    	</s:else>
		                    </s:if>
		                    <!-- test2 end  -->
		                    
		                    <s:if test="page==totalPage">
		                    	<a href="#">下一页</a>
		                    </s:if>
		                    <s:else>
		                    	<a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property value="page+1"/>">下一页</a>
		                    </s:else>
		                    <a href="adminusers!show?privilegeid={privilegeid}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property value="totalPage"/>">末页</a>   
		                    </div>
		                    <!--分页完毕 -->  
                  <!-- End .pagination -->
                  <div class="clear"></div>
                </td>
              </tr>
            </tfoot>
            <tbody>
               <s:iterator value="userbeanlist">
					<tr >
                    <td>${name}</td>
                    <td>${email}</td>
                    <td>${integral}</td>
                    <td>
                    <s:if test="usertype==1">个人用户</s:if>
                    <s:elseif test="usertype==2">企业用户</s:elseif>
                    <s:elseif test="usertype==3">公务员</s:elseif>
                    </td>
                    <td>
                    <s:if test="privilegeid==0">普通权限</s:if>
                    <s:elseif test="privilegeid==1">白银权限</s:elseif>
                    <s:elseif test="privilegeid==2">黄金权限</s:elseif>
                    <s:elseif test="privilegeid==3">铂金权限</s:elseif>
                    <s:elseif test="privilegeid==4">钻石权限</s:elseif>
                    </td>
                    <td>
                    <s:if test="userStatus==0">正常</s:if>
                    <s:elseif test="userStatus==1">未激活（限制登录）</s:elseif>
                    <s:elseif test="userStatus==2">异常（限制登录）</s:elseif>
                    </td>
                    <td>${regtime}</td>
                    <td><a href="#"  title="查看详细"><img src="resources/images/icons/hammer_screwdriver.png" alt="查看详细" /></a>
                    <a href="adminusers!showupdateusers?id=${id}" title="修改"><img src="resources/images/icons/pencil.png" alt="修改" /></a>
                    <a href="adminusers!deleteuser?id=${id}" title="删除"><img src="resources/images/icons/cross.png" alt="删除" /></a></td>
                  </tr>      
                  </s:iterator>
            </tbody>
          </table>
        </div>
        <!-- End #tab1 -->
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
