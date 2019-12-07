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
<script type="text/javascript">
    $(function(){
    	$.ajax({
    		url:"emplist.do",
    		type:"post",
    		success:function(datas){
    			for(var i=0;i<datas.length;i++){
    				var data = datas[i];
    				// 把data  转换成表格的一行
    				var  trStr = "<tr><td>"+data.id+"</td><td>"+data.no+"</td><td>"
    				+data.password+"</td><td>"+data.age+"</td><td>"+data.email+"</td><td>"+data.salary+"</td></tr>";
    			    $("#datas").append($(trStr));
    			}
    		}
    	});
    });
</script>
</head>
<body>
  <table  id="datas" class="table table-hover table-bordered">
      <tr><th>ID</th><th>账号</th><th>密码</th><th>年龄</th><th>邮箱</th><th>薪水</th></tr>
  </table>
</body>
</html>