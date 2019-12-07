<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<script type="text/javascript">
	function reg2(){
		var no= $("#no").val();
		var password= $("#password").val();
		var age= $("#age").val();
		var email= $("#email").val();
		var salary= $("#salary").val();
		$.ajax({
			url:"reg.do",
			type:"post",
			success:function(data){
				if(data==true){
					alert("注册成功")
					location.href="toLogin.do"
				}else{
					alert("注册失败")
					location.href="toReg.do"
				}
			},
			data:{no:no,password:password,age:age,email:email,salary:salary}
		});
	}
</script>
<body style="padding:30px">

	<h3>欢迎来到注册页面</h3>
		<form>
			账号:<input type="text"     placeholder="请输入您的姓名" name="no" id="no"class="input input-sm"><br><br>
			密码:<input type="password" placeholder="请输入您的密码" name="password" id="password" class="input input-sm"><br><br>
			年龄:<input type="text"     placeholder="请输入您的年龄" name="age"  id="age" class="input input-sm"><br><br>
			邮箱:<input type="text"     placeholder="请输入您的邮箱" name="email"  id="email" class="input input-sm"><br><br>
			薪水:<input type="text"     placeholder="请输入您的薪水" name="salary" id="salary"class="input input-sm"><br><br>
		<input type="button" value="点击注册" onclick="reg2()" class="btn btn-sm btn-info"class="input input-sm"> 
		</form>

</body>
</html>