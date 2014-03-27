<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>个人设置</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
<script src="js/base.js"></script>
</head>

<body id="setting">

<jsp:include page="../head.jsp" flush="true" />

<!-- main -->
<div id="main" class="wrapper">
	<div class="ad"><a href="#"><img src="img/passport-center.jpg" /></a></div>
    
    <!-- passport-l -->
    <div class="fl passport-l">
        <!-- 我的学习 -->
        <div class="gray-box">
        	<h2 class="gray-title">个人设置</h2>
            <ul class="gray-list J_tabNav">
            	<li><a class="curr" href="javascript:;">基本信息</a></li>
                <!--<li><a href="javascript:;">上传头像</a></li>-->
                <li><a href="javascript:;">更改密码</a></li>
            </ul>
        </div>
    </div><!-- end passport-l -->
    
     <!-- passport-r 003-->
    <div class="fr passport-r">
    	<div class="setting-form">
        	<form id="form_1" action="personal!editUserInfo" method="post" style="display: block;">
        		<input type="hidden" name="perBean.id" value="${perBean.id}"/>
                <div class="input-con">
                	<label for="sex">性别：</label>
                    <input value="0" <s:if test="perBean.gender==0"> checked="checked" </s:if> name="perBean.gender" type="radio" />男
                    <input value="1" <s:if test="perBean.gender==1"> checked="checked" </s:if> name="perBean.gender" type="radio" />女
                </div>
                <div class="input-con">
                	<label for="realname">真实姓名：</label>
                    <input id="realname" name="perBean.realname" value="${perBean.realname}" type="text" />
                </div>
                <div class="input-con">
                	<label for="tel">联系电话：</label>
                    <input id="tel" name="perBean.phone" value="${perBean.phone}" type="text" />
                </div>
                <div class="input-con">
                	<label for="qq">QQ：</label>
                    <input id="qq" name="perBean.qq" value="${perBean.qq}" type="text" />
                </div>
                <div class="input-con">
                	<label for="edu">教育背景：</label>
                    <select id="edu" name="perBean.eduinfo">
                    	<option value="0" <s:if test="perBean.eduinfo==0"> selected="selected" </s:if>>大学</option>
                        <option value="1" <s:if test="perBean.eduinfo==1"> selected="selected" </s:if>>大专</option>
                        <option value="2" <s:if test="perBean.eduinfo==2"> selected="selected" </s:if>>高中</option>
                        <option value="3" <s:if test="perBean.eduinfo==3"> selected="selected" </s:if>>初中</option>
                        <option value="4" <s:if test="perBean.eduinfo==4"> selected="selected" </s:if>>小学</option>
                        <option value="5" <s:if test="perBean.eduinfo==5"> selected="selected" </s:if>>其他</option>
                    </select>
                </div>
                <div class="input-con">
                	<label for="work">从事行业：${perBean.position}</label>
                    <select id="work" name="perBean.position">
                    	
                    	<option>请选择</option>
                        <option value="0" <s:if test="perBean.position==0"> selected="selected" </s:if>>在校学生</option>
                        <option value="1" <s:if test="perBean.position==1"> selected="selected" </s:if>>计算机·网络·技术</option>
                        <option value="2" <s:if test="perBean.position==2"> selected="selected" </s:if>>经营管理</option>
                        <option value="3" <s:if test="perBean.position==3"> selected="selected" </s:if>>娱乐业</option>
                        <option value="4" <s:if test="perBean.position==4"> selected="selected" </s:if>>文体工作</option>
                        <option value="5" <s:if test="perBean.position==5"> selected="selected" </s:if>>销售</option>
                        <option value="6" <s:if test="perBean.position==6"> selected="selected" </s:if>>医疗卫生</option>
                        <option value="7" <s:if test="perBean.position==7"> selected="selected" </s:if>>农林牧渔劳动者</option>
                        <option value="8" <s:if test="perBean.position==8"> selected="selected" </s:if>>酒店·餐饮·旅游·其他服务</option>
                        <option value="9" <s:if test="perBean.position==9"> selected="selected" </s:if>>美术·设计·创意</option>
                        <option value="10" <s:if test="perBean.position==10"> selected="selected" </s:if>>电子·电器·通信技术</option>
                        <option value="11" <s:if test="perBean.position==11"> selected="selected" </s:if>>外出务工人员</option>
                        <option value="12" <s:if test="perBean.position==12"> selected="selected" </s:if>>贸易·物流·采购·运输</option>
                        <option value="13" <s:if test="perBean.position==13"> selected="selected" </s:if>>建筑·房地产·装饰装修·物业管理</option>
                        <option value="14" <s:if test="perBean.position==14"> selected="selected" </s:if>>财务·审计·统计</option>
                        <option value="15" <s:if test="perBean.position==15"> selected="selected" </s:if>>电气·能源·动力</option>
                        <option value="16" <s:if test="perBean.position==16"> selected="selected" </s:if>>个体经营·商业零售</option>
                        <option value="17" <s:if test="perBean.position==17"> selected="selected" </s:if>>军人警察</option>
                        <option value="18" <s:if test="perBean.position==18"> selected="selected" </s:if>>美容保健</option>
                        <option value="19" <s:if test="perBean.position==19"> selected="selected" </s:if>>行政·后勤</option>
                        <option value="20" <s:if test="perBean.position==20"> selected="selected" </s:if> >教育·培训</option>
                        <option value="21" <s:if test="perBean.position==21"> selected="selected" </s:if>>党政机关事业单位工作者·公务员类</option>
                        <option value="22" <s:if test="perBean.position==22"> selected="selected" </s:if>>市场·公关·咨询·媒介</option>
                        <option value="23" <s:if test="perBean.position==23"> selected="selected" </s:if>>技工</option>
                        <option value="24" <s:if test="perBean.position==24"> selected="selected" </s:if>>工厂生产</option>
                        <option value="25" <s:if test="perBean.position==25"> selected="selected" </s:if>>宗教、神职人员</option>
                        <option value="26" <s:if test="perBean.position==26"> selected="selected" </s:if>>工程师</option>
                        <option value="27" <s:if test="perBean.position==27"> selected="selected" </s:if>>新闻出版·文化工作</option>
                        <option value="28" <s:if test="perBean.position==28"> selected="selected" </s:if>>金融</option>
                        <option value="29" <s:if test="perBean.position==29"> selected="selected" </s:if>>人力资源</option>
                        <option value="30" <s:if test="perBean.position==30"> selected="selected" </s:if>>保险</option>
                        <option value="31" <s:if test="perBean.position==31"> selected="selected" </s:if>>法律</option>
                        <option value="32" <s:if test="perBean.position==32"> selected="selected" </s:if>>翻译</option>
                        <option value="33" <s:if test="perBean.position==33"> selected="selected" </s:if>>自由职业者</option>
                        <option value="34" <s:if test="perBean.position==34"> selected="selected" </s:if>>待业/无业/失业</option>
                        <option value="35" <s:if test="perBean.position==35"> selected="selected" </s:if>>其他</option>
                    </select>                   
                </div>
                <div class="input-con">
                	<label for="addr">邮寄地址：</label>
                    <input id="addr" name="perBean.address" value="${perBean.address}" type="text" />
                </div>
               	<div class="input-con">
                	<input type="submit" class="reg-btn" value="保存" />
                </div>
            </form>
            <!--<form id="form_2">
            	<p style="font-size: 14px;">设置你的头像</p>
                <img src="img/default-avatar.jpg" />
                <div class="input-con">
                	请选择一张图片<input type="file" />
                </div>
            </form>-->
            <form id="form_3">
            	<div class="input-con">
                	<label for="currPwd">当前密码：</label>
                    <input id="currPwd" name="currPwd" type="text" style="width: 128px;" />
                </div>
            	<div class="input-con">
                	<label for="newPwd1">新密码：</label>
                    <input id="newPwd1" name="newPwd1" type="password" />
                </div>         
            	<div class="input-con">
                	<label for="newPwd2">新密码：</label>
                    <input id="newPwd2" name="newPwd2" type="password" />
                </div>   
               	<div class="input-con">
                	<input id="J_pwdSave" type="button" class="reg-btn" value="保存" style="margin-left: 110px;" />
                </div>                                         
            </form>
        </div>         
    </div><!-- end passport-r 003-->
    
</div><!-- main -->

<div class="clear-both"></div>
		
<jsp:include page="../footer.jsp" flush="true" />

</body>
</html>








