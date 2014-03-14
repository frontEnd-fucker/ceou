<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>课程管理</title>
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
    <form id="form" action="adminarticle!show" method="post" >
        <p>
            <label>快速查询：</label>
            <input type="hidden" name="artcategory" value="${artcategory}"/>
            <input id="h-level_2" type="hidden" name="artstatus" value="${artstatus}"/>
            <input type="hidden" name="catId" value="${catId}"/>
            <input type="hidden" name="page" value="${page}"/>
            <input type="hidden" name="startDate" value="${startDate}"/>
            <input type="hidden" name="endDate" value="${endDate}"/>
            <input type="text" name="str" value="${str}"/>
            <input type="submit" />
        </p>
    </form >     
    <form id="form1" action="adminarticle!show" method="post" >
        <p>
            <label>按模块筛选：</label>
          	<select  name="catId">
          			<option class="default-option" value="-1">请选择...</option>
                  <option value="0" <s:if test="catId==0"> selected="selected" </s:if>>默认</option>
                  <option value="1" <s:if test="catId==1"> selected="selected" </s:if>>倍增学院</option>
                  <option value="2" <s:if test="catId==2"> selected="selected" </s:if>>名师堂</option>
                  <option value="3" <s:if test="catId==3"> selected="selected" </s:if>>商学院</option>
                  <option value="4" <s:if test="catId==4"> selected="selected" </s:if>>在线学历院</option>
        	</select>
        </p>  
        <p>
            <label for="level_1">按类别筛选：</label>
                <select name="artcategory" >
                  <option class="default-option" value="-1">请选择...</option>
                  <option value="1" <s:if test="artcategory==1"> selected="selected" </s:if>>电子商务</option>
                  <option value="2" <s:if test="artcategory==2"> selected="selected" </s:if>>客户服务</option>
                  <option value="3" <s:if test="artcategory==3"> selected="selected" </s:if>>领导力</option>
                  <option value="4" <s:if test="artcategory==4"> selected="selected" </s:if>>名师名家</option>
                  <option value="5" <s:if test="artcategory==5"> selected="selected" </s:if>>企业培训</option>
                  <option value="6" <s:if test="artcategory==6"> selected="selected" </s:if>>企业战略</option>
                  <option value="7" <s:if test="artcategory==7"> selected="selected" </s:if>>人力资源</option>
                  <option value="8" <s:if test="artcategory==8"> selected="selected" </s:if>>市场营销</option>
                  <option value="9" <s:if test="artcategory==9"> selected="selected" </s:if>>职场兵法</option>
                  <option value="10" <s:if test="artcategory==10"> selected="selected" </s:if>>职场励志</option>
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
                <th>文章名</th>
                <th>作者</th>
                <th>所属模块</th>
                <th>类别</th>
                <th>来源</th>
                <th>文章权限</th>
                <th>更新人</th>
                <th>更新时间</th>
                <th>文章状态</th>
                <th>优先级</th>
                <th>操作</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <td colspan="16">
                
                <!-- 以下为分页 -->
                  <div class="pagination">
                  
		                    <a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=1">首页</a>
		                    <s:if test="page==1">
		                		<a href="#">上一页</a>
		                	</s:if>
		                	<s:else>
		                		<a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property value="page-1"/>" >上一页</a>
		                	</s:else>
		                 
		                   <!-- test1 begin -->
		                    <s:if test="%{(page<=3)}">
		                     	<s:if test="%{(totalPage<=5)}">
		                         	<s:iterator begin="1" end="totalPage" var="p">
		                    			<s:if test="#p==page">
		                    				<a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>		                     
		                     	</s:if>
			                 	<s:else>
			                 		<s:iterator begin="1" end="5" var="p">
										<s:if test="#p==page">
		                    				<a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
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
		                    				<a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>
		                    	</s:if>
		                    	<s:else>
		                    	 	<s:iterator begin="totalPage-4" end="totalPage" var="p">
		                    			<s:if test="#p==page">
		                    				<a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>
		                    	</s:else>
		                    </s:if>
		                    <!-- test2 end  -->
		                    
		                    <s:if test="page==totalPage">
		                    	<a href="#">下一页</a>
		                    </s:if>
		                    <s:else>
		                    	<a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property value="page+1"/>">下一页</a>
		                    </s:else>
		                    <a href="adminarticle!show?catId=${catId}&artcategory=${artcategory}&artstatus=${artstatus}&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property value="totalPage"/>">末页</a>   
		                    </div>
		                    <!--分页完毕 -->       
                  <!-- End .pagination -->
                  <div class="clear"></div>
                </td>
              </tr>
            </tfoot>
            <tbody>
            
               <s:iterator value="artlist">
					 <tr>
                    <td>${artname}</td>
                    <td>${artlecturer}</td>
                    <td>
                    <s:if test="catid==0">默认</s:if>
                    <s:elseif test="catid==1">倍增学院</s:elseif>
                    <s:elseif test="catid==2">名师堂</s:elseif>
                    <s:elseif test="catid==3">商学院</s:elseif>
                    <s:elseif test="catid==4">在线学历院</s:elseif>
                    </td>
                    <td>
                    <s:if test="artcategory==1">电子商务</s:if>
                    <s:elseif test="artcategory==2">客户服务</s:elseif>
                    <s:elseif test="artcategory==3">领导力</s:elseif>
                    <s:elseif test="artcategory==4">名师名家</s:elseif>
                    <s:elseif test="artcategory==5">企业培训</s:elseif>
                    <s:elseif test="artcategory==6">企业战略</s:elseif>
                    <s:elseif test="artcategory==7">人力资源</s:elseif>
                    <s:elseif test="artcategory==8">市场营销</s:elseif>
                    <s:elseif test="artcategory==9">职场兵法</s:elseif>
                    <s:elseif test="artcategory==10">职场励志</s:elseif>
                    </td>
                    <td>${artfrom}</td>
                    <td>
                    <s:if test="artpower==0">普通权限</s:if>
                    <s:elseif test="artpower==1">白银权限</s:elseif>
                    <s:elseif test="artpower==2">黄金权限</s:elseif>
                    <s:elseif test="artpower==3">铂金权限</s:elseif>
                    <s:elseif test="artpower==4">钻石权限</s:elseif>
                    </td>
                    <td>${updatename}</td>
                    <td>${updatetime}</td>
                    <td>
                    <s:if test="artstatus==0">审核中</s:if>
                    <s:elseif test="artstatus==1">正常</s:elseif>
                    <s:elseif test="artstatus==2">热点</s:elseif>
                    </td>
                    <td>
                    <s:if test="mark4==0">默认</s:if>
                    <s:elseif test="mark4==1">优先</s:elseif>
                    <s:elseif test="mark4==2">二级导航</s:elseif>
                    <s:elseif test="mark4==3">一级导航</s:elseif>
                    </td>
                    <td><a href="#"  title="Edit"><img src="resources/images/icons/pencil.png" alt="查看详细" /></a>|<a href="adminarticle!showupdatearticle?artid=${artid}"><img src="resources/images/icons/hammer_screwdriver.png" alt="修改" /></a>|<a href="adminarticle!deletearticle?artid=${artid}" title="Delete"><img src="resources/images/icons/cross.png" alt="删除" /></a></td>
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
