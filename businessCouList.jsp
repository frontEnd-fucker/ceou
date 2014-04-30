<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:wb="http://open.weibo.com/wb">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>课程列表</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
</head>

<body id="course-list">

<jsp:include page="head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
    
	<div class="floor">
    
    	<!-- floor-l -->
    	<div class="floor-l">
        	<div class="crumb">
            	<a href="/CEOU">首页</a>
                <span>></span>
                <s:if test="catId==1">
                	<a href="business!showBusinessList?catId=1&ifceou=-1">倍增商学院课程</a><span>></span>
                	<s:if test="ifceou==0"><a href="business!showBusinessList?catId=1&ifceou=0">普通课程</a></s:if>
                	<s:if test="ifceou==1"><a href="business!showBusinessList?catId=1&ifceou=1">名师堂</a></s:if>
                	<s:if test="ifceou==2"><a href="business!showBusinessList?catId=1&ifceou=2">实战堂</a></s:if>
                </s:if>
               	<s:if test="catId==3"><a href="business!showBusinessList?catId=3&ifceou=1">企业商学院课程</a></s:if>
            </div>
            
         <!-- cate-box --> 
            <div class="cate-box">
            	<h2 class="cate-title">分类管理</h2>
                <div class="cate-content">
                	<s:if test="couPosition==-1 && couSkill==-1">
	                	<dl class="cf">
	                    	<dt>通用课程:</dt>
	                        <dd>
	                        	<a <s:if test="couSkill==1">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=1&page=1">创业课程</a>
	                            <a <s:if test="couSkill==2">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=2&page=1">管理课程</a>
	                            <a <s:if test="couSkill==3">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=3&page=1">营销课程</a>
	                            <a <s:if test="couSkill==4">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=4&page=1">职场课程</a>
	                            <a <s:if test="couSkill==5">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=5&page=1">生活</a>
	                        </dd>
	                    </dl>
	                    
	                    <dl class="cf">
	                    <dt>行业:</dt>
	                        <dd>
	                        	<a <s:if test="couIndustry==210001">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210001&page=1">医疗</a>
	                            <a <s:if test="couIndustry==210002">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210002&page=1">餐饮</a>
	                            <a <s:if test="couIndustry==210003">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210003&page=1">房地产</a>
	                            <a <s:if test="couIndustry==210004">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210004&page=1">汽车</a>
	                            <a <s:if test="couIndustry==210005">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210005&page=1">保险</a>
	                            <a <s:if test="couIndustry==210006">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210006&page=1">酒店</a>
	                            <a <s:if test="couIndustry==210007">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210007&page=1">零售</a>
	                            <a <s:if test="couIndustry==210008">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210008&page=1">银行</a>
	                            <a <s:if test="couIndustry==210009">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210009&page=1">美容美发</a>
	                            <a <s:if test="couIndustry==210010">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210010&page=1">制造</a>
	                            <a <s:if test="couIndustry==210011">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210011&page=1">服装</a>
	                            <a <s:if test="couIndustry==210012">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210012&page=1">电子商务</a>
	                            <a <s:if test="couIndustry==210013">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210013&page=1">物业管理</a>
	                            <a <s:if test="couIndustry==210014">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210014&page=1">家居建材</a>
	                            <a <s:if test="couIndustry==210015">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210015&page=1">物流</a>
	                        </dd>
	                    </dl>
                	</s:if>
                
                
                	<s:if test="couPosition==1 && couSkill==1">
                		<dl class="cf">
	                    	<dt>创业课程:</dt>
	                        <dd>
								<a <s:if test="couIndustry==-1">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=-1&page=1">不限</a>
	                        	<a <s:if test="couIndustry==110001">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=110001&page=1">创业心路</a>
	                            <a <s:if test="couIndustry==110002">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=110002&page=1">商业模式 </a>
	                            <a <s:if test="couIndustry==110003">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=110003&page=1">创业团队</a>
	                            <a <s:if test="couIndustry==110004">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=110004&page=1">产品战略</a>
	                            <a <s:if test="couIndustry==110005">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=110005&page=1">股权期权</a>
	                            <a <s:if test="couIndustry==110006">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=110006&page=1">投资融资</a>
	                            <a <s:if test="couIndustry==110007">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=110007&page=1">运营实务</a>
	                            <a <s:if test="couIndustry==110008">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=110008&page=1">税务法律</a>
	                        </dd>
                    	</dl>
                	</s:if>
                		
                	<s:if test="couPosition==1 && couSkill==2">
                		<dl class="cf">
	                    	<dt>管理课程:</dt>
	                        <dd>
	                			<a <s:if test="couIndustry==-1">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=-1&page=1">不限</a>
	                        	<a <s:if test="couIndustry==120001">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=120001&page=1">领导力</a>
	                            <a <s:if test="couIndustry==120002">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=120002&page=1">运营管理 </a>
	                            <a <s:if test="couIndustry==120003">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=120003&page=1">战略管理</a>
	                            <a <s:if test="couIndustry==120004">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=120004&page=1">人力资源管理</a>
	                            <a <s:if test="couIndustry==120005">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=120005&page=1">资本运作管理</a>
	                            <a <s:if test="couIndustry==120006">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=120006&page=1">企业文化</a>
	                            <a <s:if test="couIndustry==120007">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=120007&page=1">财务管理</a>
	                            <a <s:if test="couIndustry==120008">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=120008&page=1">危机管理</a>
	                            <a <s:if test="couIndustry==120009">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=120009&page=1">项目管理</a>
	                            <a <s:if test="couIndustry==120010">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=120010&page=1">生产制造</a>
	                            <a <s:if test="couIndustry==120011">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=120011&page=1">物流管理</a>
	                        </dd>
                   		</dl>
                	</s:if>
                	
                	<s:if test="couPosition==1 && couSkill==3">
                		<dl class="cf">
	                    	<dt>营销课程:</dt>
	                        <dd>
	                            <a <s:if test="couIndustry==-1">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=-1&page=1">不限</a>
	                        	<a <s:if test="couIndustry==130001">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=3&couIndustry=130001&page=1">营销系列</a>
	                        </dd>
                    	</dl>
                	</s:if>
                	
                	<s:if test="couPosition==1 && couSkill==4">
                		    
                    <dl class="cf">
                    	<dt>职场课程:</dt>
	                        <dd>
	                			<a <s:if test="couIndustry==-1">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=-1&page=1">不限</a>
	                        	<a <s:if test="couIndustry==140001">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140001&page=1">职业规划</a>
	                            <a <s:if test="couIndustry==140002">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140002&page=1">成功励志 </a>
	                            <a <s:if test="couIndustry==140003">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140003&page=1">情商管理</a>
	                            <a <s:if test="couIndustry==140004">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140004&page=1">团队建设</a>
	                            <a <s:if test="couIndustry==140005">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140005&page=1">情绪管理</a>
	                            <a <s:if test="couIndustry==140006">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140006&page=1">求职面试</a>
	                            <a <s:if test="couIndustry==140007">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140007&page=1">销售技巧</a>
	                            <a <s:if test="couIndustry==140008">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140008&page=1">谈判沟通</a>
	                            <a <s:if test="couIndustry==140009">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140009&page=1">高效工作</a>
	                            <a <s:if test="couIndustry==140010">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140010&page=1">升职加薪</a>
	                            <a <s:if test="couIndustry==140011">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140011&page=1">与老板相处</a>
	                            <a <s:if test="couIndustry==140012">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140012&page=1">职场礼仪</a>
	                            <a <s:if test="couIndustry==140013">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140013&page=1">创新思维</a>
	                            <a <s:if test="couIndustry==140014">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140014&page=1">时间管理</a>
	                            <a <s:if test="couIndustry==140015">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140015&page=1">辞职跳槽</a>
	                            <a <s:if test="couIndustry==140016">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=140016&page=1">工作汇报</a>
	                        </dd>
                    	</dl>
                	</s:if>
                	
                	<s:if test="couPosition==1 && couSkill==5">
                		<dl class="cf">
                    	<dt>生活:</dt>
	                        <dd>
	                			<a <s:if test="couIndustry==-1">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=<s:property value="couPosition"/>&couSkill=<s:property value="couSkill"/>&couIndustry=-1&page=1">不限</a>
	                        	<a <s:if test="couIndustry==150001">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=150001&page=1">兴趣爱好</a>
	                            <a <s:if test="couIndustry==150002">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=150002&page=1">人生感悟 </a>
	                            <a <s:if test="couIndustry==150003">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=150003&page=1">国学智慧</a>
	                            <a <s:if test="couIndustry==150004">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=150004&page=1">语言技能</a>
	                            <a <s:if test="couIndustry==150005">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=150005&page=1">风水文化</a>
	                            <a <s:if test="couIndustry==150006">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=150006&page=1">情感婚姻</a>
	                            <a <s:if test="couIndustry==150007">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=150007&page=1">教育考试</a>
	                            <a <s:if test="couIndustry==150008">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=150008&page=1">理财投资</a>
	                            <a <s:if test="couIndustry==150009">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=150009&page=1">亲子教育</a>
	                            <a <s:if test="couIndustry==150010">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=1&couSkill=<s:property value="couSkill"/>&couIndustry=150010&page=1">养生保健</a>
	                        </dd>
                    	</dl>
                	</s:if>
                	
                	<s:if test="couPosition==2 && couSkill==1">
                		<dl class="cf">
                    	<dt>行业:</dt>
	                        <dd>
	                        	<a <s:if test="couIndustry==210001">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210001&page=1">医疗</a>
	                            <a <s:if test="couIndustry==210002">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210002&page=1">餐饮</a>
	                            <a <s:if test="couIndustry==210003">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210003&page=1">房地产</a>
	                            <a <s:if test="couIndustry==210004">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210004&page=1">汽车</a>
	                            <a <s:if test="couIndustry==210005">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210005&page=1">保险</a>
	                            <a <s:if test="couIndustry==210006">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210006&page=1">酒店</a>
	                            <a <s:if test="couIndustry==210007">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210007&page=1">零售</a>
	                            <a <s:if test="couIndustry==210008">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210008&page=1">银行</a>
	                            <a <s:if test="couIndustry==210009">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210009&page=1">美容美发</a>
	                            <a <s:if test="couIndustry==210010">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210010&page=1">制造</a>
	                            <a <s:if test="couIndustry==210011">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210011&page=1">服装</a>
	                            <a <s:if test="couIndustry==210012">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210012&page=1">电子商务</a>
	                            <a <s:if test="couIndustry==210013">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210013&page=1">物业管理</a>
	                            <a <s:if test="couIndustry==210014">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210014&page=1">家居建材</a>
	                            <a <s:if test="couIndustry==210015">class="cur"</s:if> href="business!showBusinessList?catId=<s:property value="catId"/>&ifceou=<s:property value="ifceou"/>&couPosition=2&couSkill=1&couIndustry=210015&page=1">物流</a>
	                        </dd>
                    	</dl>
                	</s:if>                                    
                </div>
            </div><!-- end cate-box -->
              
            <div class="tile-box">
                <!-- tile-top -->
                <div class="tile-top cf">
                    <h2 class="tile-title">培训课程</h2>            
                </div><!-- end tile-top -->  
                
                <div class="tile-content cf">
                    <s:iterator value="businessCouList">
	                	<dl class="course-intro cf">
	                    	<dt>
	                    		<a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><img src="img/kecheng-list.jpg" /></a>
	                    	</dt>
	                        <dd>
	                        	<h3>
	                        	<a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a>
	                        	</h3>
	                            <p class="course-meta">
	                            	<span>讲师：<s:property value="coulecturer"/></span>
	                                <span>点击：<s:property value="clicks"/></span>
	                                <span>发布时间:<s:date name="updatetime" format="yyyy-MM-dd" /></span>
	                            </p>
	                            <p class="course-intro-content"><s:property value="couprofile"/></p>
	                        </dd>
	                        <a onclick="couclicks(<s:property value="couid"/>)" class="read-more" href="course!showCouDetail?couid=<s:property value="couid"/>"></a>
	                    </dl>
                    </s:iterator>
                    
                    
        <!-- page_nav -->
		<div class="page-nav cf">
        <div class="page-num">
	
			<!-- previous page -->
			<s:if test="%{totalPage<=1}">
				
			</s:if>
			<s:else>
				<a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=1">首页</a>
                <s:if test="page==1">
                	<a href="#">上一页</a>
                </s:if>
                <s:else>
                	<a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=<s:property value="page-1"/>" >上一页</a>
                </s:else>
			</s:else>
			
            <!-- end previous page -->
            
            <!-- test1 -->
            
        	<s:if test="%{totalPage<=5}">
        		<s:if test="%{totalPage<=1}">
        			<s:if test="%{totalPage==0}">
        				<p class="nothing">你暂时没有课程哦:(</p>
        			</s:if>
        		</s:if>
        		<s:else>
        			<s:iterator begin="1" end="totalPage" var="p">
						<s:if test="#p==page">
                    		<a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=<s:property />" class="page-home"><s:property/></a>
                    	</s:if>
                    	<s:else>
                    		<a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=<s:property />"><s:property/></a>
                    	</s:else>
                	</s:iterator>
        		</s:else>
        	</s:if>
        	
        	<!-- end test1 -->
        	
        	<!-- test2 -->
        	<s:else>
        		<s:if test="%{page<=3}">
        			<s:iterator begin="1" end="5" var="p">
						<s:if test="#p==page">
                			<a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=<s:property />" class="page-home"><s:property/></a>
                		</s:if>
                		<s:else>
                			<a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=<s:property />" ><s:property/></a>
                		</s:else>
                	</s:iterator>
        		</s:if>
        		<s:else>
        			<s:if test="%{page>=(totalPage-3)}">
        				<s:iterator begin="totalPage-4" end="totalPage" var="p">
                			<s:if test="#p==page">
                				<a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=<s:property />" class="page-home"><s:property/></a>
                			</s:if>
                			<s:else>
                				<a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=<s:property />"><s:property/></a>
                			</s:else>
                		</s:iterator>
        			</s:if>
        			<s:else>
        				<s:iterator begin="page-2" end="page+2" var="p">
                			<s:if test="#p==page">
                				<a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=<s:property />" class="page-home"><s:property/></a>
                			</s:if>
                			<s:else>
                				<a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=<s:property />" ><s:property/></a>
                			</s:else>
                		</s:iterator>
        			</s:else>
        		</s:else>
        	</s:else>        	
        	<!-- end test2 -->
        	
        	<!-- next page -->
    		<s:if test="%{totalPage<=1}">
    		
    		</s:if>
    		<s:else>
    			<s:if test="page==totalPage">
            		<a href="#">下一页</a>
            	</s:if>
                <s:else>
                	<a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=<s:property value="page+1"/>">下一页</a>
                </s:else>
                <a href="business!showBeizengCou?catId=3&couPosition=<s:property value="couPosition" />&couSkill=<s:property value="couSkill" />&couIndustry=<s:property value="couIndustry" />&page=<s:property value="totalPage"/>">末页</a>
				 <div class="page-skip">
                        <form action="business!showBeizengCou">
                        		<input type="hidden" name="catId" value="3"/>
                        		<input type="hidden" name="couPosition" value="<s:property value="couPosition"/>"/>
                        		<input type="hidden" name="couSkill" value="<s:property value="couSkill"/>"/>
                        		<input type="hidden" name="couIndustry" value="<s:property value="couIndustry"/>"/>
                            	第<input class="page-input" type="text" name="page" />页
                            	<input type="submit" value="跳转"/>
                        </form> 
                 </div>               
    		</s:else>
    		</div>
        	<!-- end next page -->
        </div>
        <!-- end page_nav -->
                                                   
                </div>                             	
            </div>         
        </div><!-- end floor-l -->
        
        <!-- floor-r -->
        <div class="floor-r">
            <!-- weibo -->
            <div class="weixin-con aside-box">
            	<h2>关注微博</h2>
                <div class="weibo-content cf">
                	<img class="hd" src="whimg/weibo-logo.jpg" />
                    <div class="bd">
                    	<p>关注中国企业在线官方微博，第一时间获取信息！</p>
                        <wb:follow-button uid="3970272720" type="red_1" width="67" height="24" ></wb:follow-button>
                    </div>
                </div>                
            </div><!-- end weibo -->
            
        	<div class="aside-box">
            	<h2><span>最新课程</span><a class="more" href="course!showList">更多>></a></h2>
                 <s:iterator value="randCourseList">
	                <dl>
	                	<dt><s:date name="updatetime" format="yyyy-MM-dd" /></dt>
	                    <dd><a onclick="couclicks(<s:property value="couid"/>)" href="course!showCouDetail?couid=<s:property value="couid"/>"><s:property value="couname"/></a></dd>
	                </dl> 
                </s:iterator>                
            </div> 
            
            <div class="aside-box">
            	<h2><span>热点管理文章</span><a class="more" href="business!showArticleByCondition">更多>></a></h2>
                <div class="hot-post">
                    <ul class="color-list">
                        <s:iterator value="randArticleList">
                        	<li><a onclick="clicks(<s:property value="artid"/>)" href="business!showDetailArticle?artid=<s:property value="artid"/>"><s:property value="artname"/></a></li>
                        </s:iterator>
                    </ul>
                </div>            
            </div>
            
        	<div class="aside-box weibo-con cf">
            	<h2><span>倍增在线专家微博</span></h2>
                <ul class="weibo-list cf">
                	<li>
                    	<a href="http://weibo.com/512566567"><img src="img/wb/wangzhanwei.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/512566567">王占伟</a>
                        <a class="follow-btn" href="http://weibo.com/512566567"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/3y10"><img src="img/wb/zhanwen.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/3y10">张文</a>
                        <a class="follow-btn" href="http://weibo.com/3y10"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/hongzhibo"><img src="img/wb/hongzhibo.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/hongzhibo">红智博</a>
                        <a class="follow-btn" href="http://weibo.com/hongzhibo"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/u/2281034985"><img src="img/wb/chengsheming.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/u/2281034985">程社明</a>
                        <a class="follow-btn" href="http://weibo.com/u/2281034985"></a>                        
                    </li>    
                	<li>
                    	<a href="http://weibo.com/u/1641106772"><img src="img/wb/zouzhongtang.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/u/1641106772">邹中棠</a>
                        <a class="follow-btn" href="http://weibo.com/u/1641106772"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/xinlizixushi"><img src="img/wb/zhaoxigang.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/xinlizixushi">赵喜刚</a>
                        <a class="follow-btn" href="http://weibo.com/xinlizixushi"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/u/2236201582"><img src="img/wb/jiangyongsheng.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/u/2236201582">江永胜</a>
                        <a class="follow-btn" href="http://weibo.com/u/2236201582"></a>                        
                    </li>
                	<li>
                    	<a href="http://weibo.com/houdaxue"><img src="img/wb/aizhipeng.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/houdaxue">艾志朋</a>
                        <a class="follow-btn" href="http://weibo.com/houdaxue"></a>                        
                    </li>   
                	<li>
                    	<a href="http://weibo.com/jiuyuan99"><img src="img/wb/zhanjiuyuan.jpg" /></a>
                        <a class="wb-name" href="http://weibo.com/jiuyuan99">张九元</a>
                        <a class="follow-btn" href="http://weibo.com/jiuyuan99"></a>                        
                    </li>                                                                                              
                </ul>
        	</div>  
		                                               
        </div><!-- end floor-r -->
    </div>
</div><!-- end main -->
<div class="clear-both"></div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
