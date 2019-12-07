<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body style="padding:30px">
	<h3>欢迎来到登陆页面~!</h3>
	<form action="login.do" method="post">
		<input type="text" placeholder="请输入账号" name="no" class="input input-sm"><br><br>
		<input type="password" placeholder="请输入密码" name="password" class="input input-sm"><br><br>
		<input type="submit" value="登录" class="input input-sm"> 
	</form>

	
</body>
</html>