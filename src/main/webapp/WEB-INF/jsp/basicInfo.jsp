<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<title>基础信息</title>
</head>
<style type="text/css">
	.div{
		text-align: center;
	}
	.font{
		width: 30%;
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

<script type="text/javascript">
	function isShowOtherWE() {
		var workEnvironment = document.getElementById("workEnvironmentId").value;
		if (workEnvironment == "15") {
			document.getElementById("otherWorkEnvironment_div").style.display="block";//15 = 其他
			return;
		}
		document.getElementById("otherWorkEnvironment_div").style.display="none";
	}
	
	// Main Req
	function searchMainSubRequestPLValue() {
		document.all.selected_mainSubRequestId.options.length = 0;// remove all options 
		var selected_mainRequestId = document.getElementById("selected_mainRequestId").value;
		if (selected_mainRequestId == "21") {
			document.getElementById("mainSubRequest_div").style.display="none";
			document.getElementById("mainSubRequestOther_div").style.display="block"; //21 = 其他
			return;
		}
		document.getElementById("mainSubRequest_div").style.display="block";
		document.getElementById("mainSubRequestOther_div").style.display="none";
		$.ajax({
			type: "POST",  
				url : "ajaxAccordingToMianOrOtherReqIdtoSearchSubReq", 
				dataType:'json',
				data: 'selected_mainOrOtherRequestId='+selected_mainRequestId,
				success: function(data){
					var html = "<option value=''>"+ "--请选择--" + "</option>";
					$.each(data, function(i, item) {
						 html += "<option value='" + i + "'>" + item + "";
			        });
					$(html).appendTo("#selected_mainSubRequestId");
				}
		});
	}
	
	// Other Req
	function searchOtherSubRequestPLValue() {
		document.all.selected_otherSubRequestIds.options.length = 0;// remove all options 
		var selected_otherRequestId = document.getElementById("selected_otherRequestId").value;
		if (selected_otherRequestId == "21") {
			document.getElementById("otherSubRequest_div").style.display="none";
			document.getElementById("otherSubRequestOther_div").style.display="block"; //21 = 其他
			return;
		}
		document.getElementById("otherSubRequest_div").style.display="block";
		document.getElementById("otherSubRequestOther_div").style.display="none";
		$.ajax({
			type: "POST",  
				url : "ajaxAccordingToMianOrOtherReqIdtoSearchSubReq", 
				dataType:'json',
				data: 'selected_mainOrOtherRequestId='+selected_otherRequestId,
				success: function(data){
					var html = "";
					$.each(data, function(i, item) {
						 html += "<option value='" + i + "'>" + item + "</option>";
			        });
					$(html).appendTo("#selected_otherSubRequestIds");
				}
		});
	}
</script>
<body>
<center>
	<form:form action="saveBasicInfoRecord" modelAttribute="BasicInfoModel" method="post" 
		onsubmit="return checkRequiredInfo()">
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
                 <div id="FieldLable" align="left"><b>姓名</b><font color="red"> *</font>
                 <form:input id="userName" path="userName" cssClass="form-control" cssStyle="height: 30px;"/>
                 </div>
             </div>
             
             <br/>
             
             <div class="col-sm-4">
                 <div id="FieldLable" align="left"><b style="margin-right: 4%">电话</b>
                 	<form:input id="phone" path="phone" cssClass="form-control" cssStyle="height: 30px;"/>
                 </div>
             </div>
             
             <br/>
             
             <div class="col-sm-4">
                 <div id="FieldLable" align="left"><b style="margin-right: 4%">性别</b>
                 	<form:radiobutton cssClass="inputRadio" path="sex" value="1"/>
                 	<span style="margin-right: 5%;margin-left: 1%;">男</span>
				 	<form:radiobutton cssClass="inputRadio" path="sex" value="0"/>
				 	<span style="margin-right: 15%;margin-left: 1%;">女</span>
                 </div>
             </div>
             
             <br/>
             
             <div class="col-sm-4">
                 <div id="FieldLable" align="left"><b>年龄</b><font color="red"> *</font>
                 	<form:input id="age" path="age" cssClass="form-control" cssStyle="height: 30px;"/>
                 </div>
             </div>
             
             <br/>
             
             <div class="col-sm-4">
                 <div id="FieldLable" align="left"><b style="margin-right: 4%">身高</b>
                 	<form:input id="height" path="height" cssClass="form-control" cssStyle="height: 30px;" 
                 		placeholder="cm" />
                 </div>
             </div>
             
             <br/>
             
             <div class="col-sm-4">
                 <div id="FieldLable" align="left"><b style="margin-right: 4%">体重</b>
                 	<form:input id="weight" path="weight" cssClass="form-control" cssStyle="height: 30px;" 
                 		placeholder="kg" />
                 </div>
             </div>
             
             <br/>
             
			<div class="col-sm-4">
				<div id="FieldLable" align="left"><b style="margin-right: 4%">工作环境</b>
					<form:select id="workEnvironmentId" path="selected_workEnvironmentId" cssClass="form-control" 
						onchange="isShowOtherWE()">  
		           		<option value=""/>--请选择--
		           		<form:options items="${BasicInfoModel.workEnvironmentMap}"/>  
		       		</form:select>
	       		</div>
			</div>

			<br/>
		
			<div id="otherWorkEnvironment_div" style="display:none;" class="col-sm-4">
				<div id="FieldLable" align="left"><b style="margin-right: 4%">其他工作环境</b>
					<form:input path="otherWorkEnvironment" id="otherWorkEnvironment" 
						cssStyle="height: 30px;" cssClass="form-control" />
				</div>
			</div>
		
			<br/>
		
			<div class="col-sm-4">
				<div id="FieldLable" align="left"><b style="margin-right: 4%">主要诉求</b>
					<form:select style="margin-right: 0%;" id="selected_mainRequestId" path="selected_mainRequestId" 
						onchange="searchMainSubRequestPLValue()" cssClass="form-control">  
		           		<option value=""/>--请选择--
		           		<form:options id="" items="${BasicInfoModel.mainRequestMap}"/>  
		       		</form:select>
	       		</div>
			</div>
		
			<br/>
			
			<div id="mainSubRequest_div" style="display: none;" class="col-sm-4">
				<div id="FieldLable" align="left"><b style="margin-right: 4%">主要诉求2</b>
					<form:select style="margin-right: 0%;" id="selected_mainSubRequestId" path="selected_mainSubRequestId" 
						cssClass="form-control">  
		       		</form:select> 
	       		</div>
			</div>
			
			<br/>
			<div style="display: none;" id="mainSubRequestOther_div" class="col-sm-4">
				<div id="FieldLable" align="left"><b style="margin-right: 4%">主要诉求2(其他)</b>
					<form:input cssStyle="height: 30px;"  id="mainSubRequestOther" path="mainSubRequestOther" 
						cssClass="form-control"/>
				</div>
			</div>
			
			 <br/>
		
			<div id="otherRequest_div" class="col-sm-4">
				<div id="FieldLable" align="left"><b style="margin-right: 4%">其他诉求</b>
					<form:select style="margin-right: 0%;" id="selected_otherRequestId" path="selected_otherRequestId" 
						cssClass="form-control" onchange="searchOtherSubRequestPLValue();">  
		           		<option value=""/>--请选择--
		           		<form:options id="" items="${BasicInfoModel.otherRequestMap}"/>
		       		</form:select> 
	       		</div>
			</div>
			
			<br/>
			
			<div id="otherSubRequest_div" style="display: none;" class="col-sm-4">
				<div id="FieldLable" align="left"><b style="margin-right: 4%">其他诉求2</b>
					<form:select style="margin-right: 0%;" id="selected_otherSubRequestIds" path="selected_otherSubRequestIds" 
						cssClass="form-control">  
		           		<option value=""/>--请选择--
		       		</form:select> 
	       		</div>
			</div>
		
			<br/>
			<div style="display: none;" id="otherSubRequestOther_div" class="col-sm-4">
				<div id="FieldLable" align="left"><b style="margin-right: 4%">其他诉求2(其他)</b>
					<form:input cssStyle="height: 30px;"  id="otherSubRequestOther" path="otherSubRequestOther" 
						cssClass="form-control"/>
				</div>
			</div>
		
			<br/>
		
            <div class="col-sm-4">
                <div id="FieldLable"><font id="errInfo" color="red"></font></div>
            </div>
             
            <br/>
            
            <div class= "section">
                   <input type="submit" class = "btn-success submit" style="width: 100%;"  value="保存并下一步"/>
            </div>
	     </div>
	</div>
	</form:form>
</center>
</body>
</html>