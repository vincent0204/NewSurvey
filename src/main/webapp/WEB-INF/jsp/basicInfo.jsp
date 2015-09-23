<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
<link rel="stylesheet" href="<%=basePath %>css/bootstrap.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/bootstrap.min.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/layout.css" type="text/css"></link>
<title>基础信息</title>
</head>

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
<center>
	<form action="saveFirstBasicInfoRecord" method="post" onsubmit="return checkRequiredInfo()">
	<div class="section">
		<div style="width: 95%; vertical-align: middle; margin:auto;">
            <h1>欢迎使用MEWE自诊程序</h1>
			<br/>
        </div>
		<div style="width: 95%; vertical-align: middle; margin:auto;">
            <h1>基础信息</h1>
			<br/>
        </div>
		<div class="row section_div">
             <div class="col-sm-4">
                 <div id="FieldLable" align="left"><b>姓名</b><font color="red"> *</font><input style="height: 30px;" class="form-control" type="text" id="userName" name="userName" /></div>
             </div>
             
             <br/>
             
             <div class="col-sm-4">
                 <div id="FieldLable" align="left"><b style="margin-right: 4%">电话</b><input style="height: 30px;" class="form-control" type="text" id="phone" name="phone" /></div>
             </div>
             
             <br/>
             
             <div class="col-sm-4">
                 <div id="FieldLable" align="left"><b style="margin-right: 4%">性别</b>
                 	<input  class="inputRadio" type="radio" id="m" name="sex" value="1" checked="checked" />
                 	<span style="margin-right: 5%;margin-left: 1%;">男</span>
				 	<input class="inputRadio" type="radio" id="f" name="sex" value="0" />
				 	<span style="margin-right: 15%;margin-left: 1%;">女</span>
                 </div>
             </div>
             
             <br/>
             
             <div class="col-sm-4">
                 <div id="FieldLable" align="left"><b>年龄</b><font color="red"> *</font>
                 	<input style="height: 30px;" class="form-control" type="text" id="age" name="age" />
                 </div>
             </div>
             
             <br/>
             
             <div class="col-sm-4">
                 <div id="FieldLable" align="left"><b style="margin-right: 4%">身高</b>
                 <input style="height: 30px;" class="form-control" type="text" id="height" name="height" placeholder="cm"/>
                 </div>
             </div>
             
             <br/>
             
             <div class="col-sm-4">
                 <div id="FieldLable" align="left"><b style="margin-right: 4%">体重</b>
                 <input style="height: 30px;" class="form-control" type="text" id="weight" name="weight" placeholder="kg"/>
                 </div>
             </div>
             
             <br/>
             
             <div class="col-sm-4">
                 <div id="FieldLable"><font id="errInfo" color="red"></font></div>
             </div>
             
             <br/>
             
             <div class= "section">
                    <input type="submit" class = "btn-success submit" style="width: 100%;"  value="下一页"/>
             </div>
	     </div>
	</div>
	</form>
</center>
</body>
</html>