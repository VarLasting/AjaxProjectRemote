<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<script type="text/javascript">
	function register(){
		
		//var mobile = document.getElementById("mobile").value;
		var mobile = document.getElementById("mobile").value;
		//全局变量 不用var
		xmlHttpRequest = new XMLHttpRequest();
		
		//xmlHttpRequest.open("get", "MyServlet?mobile=" + mobile, true);
		xmlHttpRequest.open("post", "MyServlet", true);
		
		//设置post方式的头信息
		xmlHttpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		//k,v对
		xmlHttpRequest.send("mobile=",mobile);
		
		//设置回调函数
		xmlHttpRequest.onreadystatechange = callBack ;
		
	}	
	
	function callBack(){
		if(xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200){
			//接收服务端返回的数据 
			var data = xmlHttpRequest.responseText;
			if(data == "true"){
				alert("该号码已经存在，请重新设置");
			}else{
				alert("注册成功111");
			}
		}
	}
</script>
</head>
<body>
    <!--  第一种方式：全局刷新
	<form action="MyServlet" method="post">
		手机：<input type="text" name="mobile" />
		<input type="submit" value="验证"></input>
	</form>
	-->
	
	        手机：<input type="text" id="mobile" />
		<input type="button" value="验证" onclick="register()"></input>
</body>
</html>