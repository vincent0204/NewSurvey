<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath(); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
<title>基础信息</title>
</head>
<style type="text/css">
	table{
		text-align: center;
		width: 100%;
		height: 100%;
	};
	
	td{
		text-align: left;
	}
	
	span{
		width: 20%;
		margin-right: 5px;
	}
	
	.inputNormalText{
		width: 40%;
		margin-left: 10px;
	}
	
	.inputRequiredText{
		width: 40%;
	}
	
	.inputRadio{
		width: 18%;
	}
</style>

<script type="text/javascript">
	function checkRequiredInfo() {
		var userName = document.getElementById("userName").value;
		var age = document.getElementById("age").value;
		if (userName == "" && age == ""){
			document.getElementById("errInfo").innerHTML = "请输入必填信息!";
			return false;
		}
			return true;
	}
</script>

<body>
	<form action="saveBasicInfoRecord?flag=1" method="post" onsubmit="return checkRequiredInfo()">
		<table align="center">
			<tr><td><h1>欢迎使用MEWE自诊程序</h1></td></tr>
			<tr><td><h3>基础信息</h3></td></tr>
			<tr><td><span>姓名<font color="red">*</font></span><input class="inputRequiredText" type="text" id="userName" name="userName" /></td></tr>
			<tr><td><span>电话</span><input class="inputNormalText" type="text" id="phone" name="phone" /></td></tr>
			<tr><td><span>性别<font color="red">*</font></span>
			<input class="inputRadio" type="radio" id="m" name="sex" value="m" checked="checked"/><span>男</span>
			<input class="inputRadio" type="radio" id="f" name="sex" value="f" /><span>女</span>
			</td></tr>
			<tr><td><span>年龄<font color="red">*</font></span><input class="inputRequiredText" type="text" id="age" name="age" /></td></tr>
			<tr><td><span>身高</span><input class="inputNormalText" type="text" id="height" name="height" placeholder="cm"/></td></tr>
			<tr><td><span>体重</span><input class="inputNormalText" type="text" id="weight" name="weight" placeholder="kg"/></td></tr>
			<tr><td><font id="errInfo" color="red"></font></td></tr>
			<tr><td><input type="submit" value="下一步" /></td></tr>
		</table>
	</form>
</body>
</html>