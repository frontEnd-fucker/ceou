<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>temp.html</title>

		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">

		<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

		<style type="text/css">
ul {
	list-style: none;
	text-align: center;
}

ul li {
	float: left;
	margin: 40px;
}

.s {
	font-size: 14px;
	height: 200px;
	text-align: right;
	margin-top: 100px;
}
</style>
	</head>

	<body>
		<h1>
			头像上传成功！
		</h1>
		<div align="center">
			<ul>
				<li>
					<img src="${sessionScope.img1}" width="130" height="130" />
					${sessionScope.img1}
				</li>
				<li>
					<img src="${sessionScope.img2}" width="90" height="90" />
					${sessionScope.img2}
				</li>
				<li>
					<img src="${sessionScope.img3}" width="50" height="50" />
					${sessionScope.img3}
				</li>
			</ul>
		</div>
		<div class="s">
			<input type="button" value="关闭窗口" onclick=
	shutClose();;
/>
		</div>
	</body>
	<script type="text/javascript">
	function shutClose() {
		window.close();
	}
</script>
</html>
