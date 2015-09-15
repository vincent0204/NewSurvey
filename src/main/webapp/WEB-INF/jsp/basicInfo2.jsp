<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test Title</title>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<style type="text/css">
	.div{
		text-align: center;
	}
	.font{
		width: 30%;
	}
</style>
<script type="text/javascript">
	function isShowOtherWE() {
		var workEnvironment = document.getElementById("workEnvironmentId").value;
		if (workEnvironment == "15") {
			document.getElementById("otherWorkEnvironment_div").style.display="block";//15 = 其他
			return;
		}
		document.getElementById("otherWorkEnvironment_div").style.display="none";
	}
	
	function searchOtherRequestPlValues() {
		var html = "";
		var selected_mainRequestId = document.getElementById("selected_mainRequestId").value;
		if (selected_mainRequestId == "21") {
			document.getElementById("otherRequest_div").style.display="none";
			document.getElementById("otherRequest2_div").style.display="block"; //21 = 其他
			return;
		}
		document.getElementById("otherRequest_div").style.display="block";
		document.getElementById("otherRequest2_div").style.display="none";
		$.ajax({
			type: "POST",  
				url : "accMianReqIdtoSearchOtherReq", 
				dataType:'json',
				data: 'selected_mainRequestId='+selected_mainRequestId,
				success: function(data){
					$.each(data, function(i, item) {
						 html += "<option value='" + i + "'>" + item + "</option>";
						 $(html).appendTo("#selected_otherRequestIds");
			        });
				}
		});
	}
</script>

<body>
<center>
	<form:form action="" modelAttribute="contentModel" method="post">
		<div>
			<font>工作环境:</font>
			<form:select id="workEnvironmentId" path="selected_workEnvironmentId" onchange="isShowOtherWE()">  
           		<option value=""/>--请选择--
           		<form:options items="${contentModel.workEnvironmentMap}"/>  
       		</form:select>
		</div>
		
		<br/>
		<br/>
		
		<div id="otherWorkEnvironment_div" style="display:none;">
			<font>其他工作环境:</font>
			<input id="otherRequest" name="otherRequest" type="text" />
		</div>
		
		<br/>
		<br/>
		
		<div>
			<font>主要诉求:</font>
			<form:select id="selected_mainRequestId" path="selected_mainRequestId" onchange="searchOtherRequestPlValues()">  
           		<option value=""/>--请选择--
           		<form:options id="" items="${contentModel.mainRequestMap}"/>  
       		</form:select>
		</div>
		
		<br/>
		<br/>
		
		<div id="otherRequest_div" style="display: none;">
			<font>其他诉求:</font>
			<form:select id="selected_otherRequestIds" path="selected_otherRequestIds">  
           		<option value=""/>--请选择--
       		</form:select> 
		</div>
		
		<br/>
		<br/>
		
		<div id="otherRequest2_div" style="display:none;">
			<font>其他诉求:</font>
			<input id="otherRequest2" name="otherRequest2" type="text" />
		</div>
	</form:form>
</center>
</body>
</html>