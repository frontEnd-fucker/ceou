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
    
     <!-- 筛选器 -->
    <form id="form" action="admincourse!show" method="post" >
        <p>
            <label>快速查询：</label>
            <input type="hidden" name="couPosition" value="${couPosition}"/>
            <input id="h-level_2" type="hidden" name="couSkill" value="${couSkill}"/>
            <input id="h-level_3" type="hidden" name="couIndustry" value="${couIndustry}"/>
            <input type="hidden" name="catId" value="${catId}"/>
            <input id="h-mLevel_2" type="hidden" name="ifceou" value="${ifceou}"/>
            <input type="hidden" name="page" value="${page}"/>
            <input type="hidden" name="startDate" value="${startDate}"/>
            <input type="hidden" name="endDate" value="${endDate}"/>
            <input type="text" name="str" value="${str}"/>
            <input type="submit" />
        </p>
    </form >    
    <form id="form1" action="admincourse!show" method="post" >
    	<p>
      	<label>按模块筛选：</label>
        <select id="mLevel_1" name="catId">
        		<option class="default-option" value="-1">请选择...</option>
				<option value="1" <s:if test="catId==1"> selected="selected" </s:if>>倍增学院</option>
				<option value="2" <s:if test="catId==2"> selected="selected" </s:if>>名师堂</option>
				<option value="3" <s:if test="catId==3"> selected="selected" </s:if>>商学院</option>
				<option value="4" <s:if test="catId==4"> selected="selected" </s:if>>在线学历院</option>
        </select>
        <select id="mLevel_2" name="ifceou">
            <option class="default-option" value="-1">请选择...</option>
        </select>  
        </p>  
        <p>
            <label for="level_1">按分类筛选：</label>
            <select id="level_1" name="couPosition">
                <option class="default-option" value="-1">请选择...</option>
                <option value="1" <s:if test="couPosition==1"> selected="selected" </s:if>>通用</option>
                <option value="2" <s:if test="couPosition==2"> selected="selected" </s:if>>行业</option>
            </select>
            <select id="level_2" name="couSkill">
                <option class="default-option" value="-1">请选择...</option>
            </select>
            <select id="level_3" name="couIndustry">
                <option class="default-option" value="-1">请选择...</option>
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
                <th>课程名称</th>
                <th>讲师名</th>
                <th>评分</th>
                <th>所属模块</th>
                <th>子模块</th>
                <th>总类别</th>
                <th>二级分类</th>
                <th>三级分类</th>
                <th>课程权限</th>
                <th>课程价格</th>
                <th>优先级</th>
                <th>更新人</th>
                <th>更新时间</th>
                <th>课程状态</th>
                <th>操作</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <td colspan="16">
                
                <!-- 以下为分页 -->
                  <div class="pagination">
                  
		                    <a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=1">首页</a>
		                    <s:if test="page==1">
		                		<a href="#">上一页</a>
		                	</s:if>
		                	<s:else>
		                		<a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property value="page-1"/>" >上一页</a>
		                	</s:else>
		                 
		                   <!-- test1 begin -->
		                    <s:if test="%{(page<=3)}">
		                     	<s:if test="%{(totalPage<=5)}">
		                         	<s:iterator begin="1" end="totalPage" var="p">
		                    			<s:if test="#p==page">
		                    				<a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>		                     
		                     	</s:if>
			                 	<s:else>
			                 		<s:iterator begin="1" end="5" var="p">
										<s:if test="#p==page">
		                    				<a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
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
		                    				<a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>
		                    	</s:if>
		                    	<s:else>
		                    	 	<s:iterator begin="totalPage-4" end="totalPage" var="p">
		                    			<s:if test="#p==page">
		                    				<a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number current"><s:property/></a>
		                    			</s:if>
		                    			<s:else>
		                    				<a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property />" class="number"><s:property/></a>
		                    			</s:else>
		                    		</s:iterator>
		                    	</s:else>
		                    </s:if>
		                    <!-- test2 end  -->
		                    
		                    <s:if test="page==totalPage">
		                    	<a href="#">下一页</a>
		                    </s:if>
		                    <s:else>
		                    	<a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property value="page+1"/>">下一页</a>
		                    </s:else>
		                    <a href="admincourse!show?couPosition=${couPosition}&couSkill=${couSkill}&couIndustry=${couIndustry }&catId=${catId }&ifceou=${ifceou }&startDate=${startDate}&endDate=${endDate}&str=${str}&page=<s:property value="totalPage"/>">末页</a>   
		                    </div>
		                    <!--分页完毕 -->       
                  <!-- End .pagination -->
                  <div class="clear"></div>
                </td>
              </tr>
            </tfoot>
            <tbody>
            
               <s:iterator value="ceoulist">
					 <tr>
                    <td>${couname}</td>
                    <td>${coulecturer}</td>
                    <td>${couscore}</td>
                    <s:if test="catid==0"><td>培训课程</td>
                    	<td><s:if test="ifceou==1">培训课程</s:if></td>
                    </s:if>
                    <s:elseif test="catid==1"><td>倍增学院</td>
                    	<td>
                    		<s:if test="ifceou==0">普通课程</s:if>
                    	    <s:elseif test="ifceou==1">名师堂</s:elseif>
                    	    <s:elseif test="ifceou==2">实战堂</s:elseif>
                    	    <s:else>无数据</s:else>
                    	
                    	</td>
                    </s:elseif>
                    <s:elseif test="catid==2"><td>名师堂</td>
                    	<td>
                    	<s:if test="ifceou==0">名师堂</s:if>
                    	<s:else>无数据</s:else>
                    	</td>
                    </s:elseif>
                    <s:elseif test="catid==3"><td>商学院</td>
                    	<td>
                    		<s:if test="ifceou==0">普通课程</s:if>
                    	    <s:elseif test="ifceou==1">企业商学院</s:elseif>
                    	    <s:elseif test="ifceou==2">政企学院</s:elseif>
                    	    <s:else>无数据</s:else>
                    	</td>
                    </s:elseif>
                    <s:elseif test="catid==4"><td>在线学历院</td>
                    <s:else>无数据</s:else>
                    	<td>
                    	<s:if test="ifceou==0">普通课程</s:if>
                    	    <s:elseif test="ifceou==1">技能院校</s:elseif>
                    	    <s:elseif test="ifceou==2">知名学府</s:elseif>
                    	    <s:else>无数据</s:else>
                    	</td>
                    </s:elseif>
                    <s:else><td>无数据</td><td>无数据</td></s:else>
                    
                    <s:if test="couposition==1"><td>通用</td>
                    
                     <s:if test="couskill==0"><td>无</td>
                    <td>
                     <s:if test="couindustry==0">无</s:if>
                     <s:else>无数据</s:else>                
                    </td>
                    </s:if>
                    <s:elseif test="couskill==1"><td>创业课程</td>
                    <td>
                      <s:if test="couindustry==0">无</s:if>
                      <s:elseif test="couindustry==110001">创业心路</s:elseif>
                      <s:elseif test="couindustry==110002">商业模式</s:elseif>
                      <s:elseif test="couindustry==110003">创业团队</s:elseif>
                      <s:elseif test="couindustry==110004">产品战略</s:elseif>
                      <s:elseif test="couindustry==110005">股权期权</s:elseif>
                      <s:elseif test="couindustry==110006">投资融资</s:elseif>
                      <s:elseif test="couindustry==110007">运营实物</s:elseif>
                      <s:elseif test="couindustry==110008">税务法律</s:elseif>  
                      <s:else>无数据</s:else>                  
                    </td>
                    </s:elseif>
                    <s:elseif test="couskill==2"><td>管理课程</td>
                    <td>
                    <s:if test="couindustry==0">无</s:if>
                     <s:elseif test="couindustry==120001">领导力</s:elseif>
                      <s:elseif test="couindustry==120002">运营管理</s:elseif>
                      <s:elseif test="couindustry==120003">战略管理</s:elseif>
                      <s:elseif test="couindustry==120004">人力资源管理</s:elseif>
                      <s:elseif test="couindustry==120005">资本运作管理</s:elseif>
                      <s:elseif test="couindustry==120006">企业文化</s:elseif>
                      <s:elseif test="couindustry==120007">财务管理</s:elseif>
                      <s:elseif test="couindustry==120008">危机管理</s:elseif>     
					  <s:elseif test="couindustry==120009">项目管理</s:elseif>
                      <s:elseif test="couindustry==120010">生产制造</s:elseif>
                      <s:elseif test="couindustry==120011">物流管理</s:elseif>   
                      <s:else>无数据</s:else>             
                    </td>
                    </s:elseif>
                    <s:elseif test="couskill==3"><td>营销课程</td>
                     <td>
                     <s:if test="couindustry==0">无</s:if>
                     <s:elseif test="couindustry==130001">营销系列</s:elseif>     
                     <s:else>无数据</s:else>      
                    </td>
                    </s:elseif>
                    <s:elseif test="couskill==4"><td>职场课程</td>
                     <td>
                     <s:if test="couindustry==0">无</s:if>
                     <s:elseif test="couindustry==140001">职业规划</s:elseif>
                      <s:elseif test="couindustry==140002">成功励志</s:elseif>
                      <s:elseif test="couindustry==140003">情商管理</s:elseif>
                      <s:elseif test="couindustry==140004">团队建设</s:elseif>
                      <s:elseif test="couindustry==140005">情绪管理</s:elseif>
                      <s:elseif test="couindustry==140006">求职面试</s:elseif>
                      <s:elseif test="couindustry==140007">销售技巧</s:elseif>
                      <s:elseif test="couindustry==140008">谈判沟通</s:elseif>     
					  <s:elseif test="couindustry==140009">高效工作</s:elseif>
                      <s:elseif test="couindustry==140010">升职加薪</s:elseif>
                      <s:elseif test="couindustry==140011">与老板相处</s:elseif>    
                      <s:elseif test="couindustry==140012">职场礼仪</s:elseif>
                      <s:elseif test="couindustry==140013">创新思维</s:elseif>     
					  <s:elseif test="couindustry==140014">时间管理</s:elseif>
                      <s:elseif test="couindustry==140015">辞职跳槽</s:elseif>
                      <s:elseif test="couindustry==140016">工作汇报</s:elseif> 
                      <s:else>无数据</s:else>             
                    </td>
                    </s:elseif>
                    <s:elseif test="couskill==5"><td>生活</td>
                    <s:else>无数据</s:else>
                     <td>
                      <s:if test="couindustry==0">无</s:if>
                      <s:elseif test="couindustry==150001">兴趣爱好</s:elseif>
                      <s:elseif test="couindustry==150002">人生感悟</s:elseif>
                      <s:elseif test="couindustry==150003">国学智慧</s:elseif>
                      <s:elseif test="couindustry==150004">语言技能</s:elseif>
                      <s:elseif test="couindustry==150005">风水文化</s:elseif>
                      <s:elseif test="couindustry==150006">情感婚姻</s:elseif>
                      <s:elseif test="couindustry==150007">教育考试</s:elseif>
                      <s:elseif test="couindustry==150008">理财投资</s:elseif>     
					  <s:elseif test="couindustry==150009">亲子教育</s:elseif>
                      <s:elseif test="couindustry==150010">养生保健</s:elseif>     
                      <s:else>无数据</s:else>
                    </td>
                    </s:elseif>
                    <s:else><td>无数据</td></s:else>
                    </s:if>
                    <s:elseif test="couposition==2"><td>行业</td>
                     <s:if test="couskill==0"><td>无</td>
                    <td>
                      <s:if test="couindustry==0">无</s:if>             
                    </td>
                    </s:if>   
                    
                     <s:elseif test="couskill==1"><td>行业</td>
                    <td>
                      <s:if test="couindustry==0">无</s:if>
                      <s:elseif test="couindustry==210001">医疗</s:elseif>
                      <s:elseif test="couindustry==210002">餐饮</s:elseif>
                      <s:elseif test="couindustry==210003">房地产</s:elseif>
                      <s:elseif test="couindustry==210004">汽车</s:elseif>
                      <s:elseif test="couindustry==210005">保险</s:elseif>
                      <s:elseif test="couindustry==210006">酒店</s:elseif>
                      <s:elseif test="couindustry==210007">零售</s:elseif>
                      <s:elseif test="couindustry==210008">银行</s:elseif>     
                      <s:elseif test="couindustry==210009">美容美发</s:elseif>
                      <s:elseif test="couindustry==210010">制造</s:elseif>
                      <s:elseif test="couindustry==210011">服装</s:elseif>
                      <s:elseif test="couindustry==210012">电子商务</s:elseif>
                      <s:elseif test="couindustry==210013">物业管理</s:elseif>
                      <s:elseif test="couindustry==210014">家居建材</s:elseif>
                      <s:elseif test="couindustry==210015">物流</s:elseif> 
                      <s:else>无数据</s:else>                 
                    </td>
                    </s:elseif>  
                    <s:else><td>无数据</td></s:else> 
                    </s:elseif>
                    <s:else><td>无数据</td></s:else>
                    <td>
                    <s:if test="coupower==0">免费课程</s:if>
                    <s:elseif test="coupower==1">白银课程</s:elseif>
                    <s:elseif test="coupower==2">黄金课程</s:elseif>
                    <s:elseif test="coupower==3">铂金课程</s:elseif>
                    <s:elseif test="coupower==4">钻石课程</s:elseif>
                    </td>
                    <td>${coumoney}</td>
                    <td>
                     <s:if test="mark4==0">最低</s:if>
                    <s:elseif test="mark4==1">默认</s:elseif>
                    <s:elseif test="mark4==2">优先</s:elseif>
                    <s:elseif test="mark4==3">二级导航</s:elseif>
                    <s:elseif test="mark4==4">一级导航</s:elseif>
                    </td>
                    <td>${updatename}</td>
                    <td>${updatetime}</td>
                    <td>
                    <s:if test="coustatus==0">审核</s:if>
                    <s:elseif test="coustatus==1">CC</s:elseif>
                    <s:elseif test="coustatus==2">大众</s:elseif>
                    </td>
                    <td>
                    <a href="#"  title="查看详细"><img src="resources/images/icons/hammer_screwdriver.png" alt="查看详细" /></a>
                    <a href="admincourse!showupdatecourse?couid=${couid}" title="修改"><img src="resources/images/icons/pencil.png" alt="修改" /></a>
                    <a href="admincourse!deletecourse?couid=${couid}" title="删除"><img src="resources/images/icons/cross.png" alt="删除" /></a></td>
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
