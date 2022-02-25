<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function register(){
		var mobile = $("#mobile").val();
		$.ajax({
			url:"MyServlet",
			data:"mobile=" + mobile,
			请求方式:"post",
			success:function(result,testStatus){
				if(result == "true"){
					alert("号码已经存在，jquery注册失败");
				}else{
					alert("jquery注册成功");
				}
			}
		})
		/*
		$.post(
				"MyServlet",
				"mobile=" + mobile,
				function(result){
					if(result == "true"){
						alert("号码已经存在，post注册失败");
					}else{
						alert("post注册成功");
					}
				},
				"Text"
				)*/
		
		/*		
		$("#span1").load(
				"MyServlet",
				"mobile=" + mobile	
		)*/
		
		/*
		//Json 示例
		var student = {"name":"zs","age":23};
		alert(student.name + "----" + student.age);
		
		
		var students = [
				{"name":"zs","age":23},
				{"name":"ls","age":33},
				{"name":"ww","age":43}
		];
		for(var i=0;i<students.length;i++){
			alert(students[i].name + "----" + students[i].age);
		}*/
		
		/*
		$.getJSON(
				"MyServlet",
				//"mobile=" + mobile,
				{"mobile":mobile},
				function(result){
					if(result.msg == "true"){
						alert("号码已经存在，JSON注册失败");
					}else{
						alert("JSON注册成功");
					}
				},
				"Text"
				)
		
		*/
	}	
		
</script>
</head>
<body>
   
	
	        手机：<input type="text" id="mobile" />
		<input type="button" value="验证" onclick="register()"></input><br />
		<span id="span1"></span>
</body>
</html>