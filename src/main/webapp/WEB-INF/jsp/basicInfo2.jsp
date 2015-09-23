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
<link rel="stylesheet" href="<%=basePath %>css/bootstrap.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/bootstrap.min.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/layout.css" type="text/css"></link>
<title>基础信息</title>
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
				url : "ajaxAccordingToMianReqIdtoSearchOtherReq", 
				dataType:'json',
				data: 'selected_mainRequestId='+selected_mainRequestId,
				success: function(data){
					var html = "";
					$.each(data, function(i, item) {
						 html += "<option value='" + i + "'>" + item + "</option>";
			        });
					$(html).appendTo("#selected_otherRequestIds");
				}
		});
	}
</script>

<body>
<center>
	<form:form action="saveSecondBasicInfoRecord" modelAttribute="contentModel" method="post">
	  <div class="row section_div">
		<div style="display:none;">
			<form:input path="recordId"/>
		</div>
	
		<div class="col-sm-4">
			<font>工作环境:</font>
			<form:select id="workEnvironmentId" path="selected_workEnvironmentId" onchange="isShowOtherWE()">  
           		<option value=""/>--请选择--
           		<form:options items="${contentModel.workEnvironmentMap}"/>  
       		</form:select>
		</div>

		<br/>
		
		<div id="otherWorkEnvironment_div" style="display:none;" class="col-sm-4">
			<font>其他工作环境:</font>
			<input style="margin-right: 6%;" id="otherWorkEnvironment" name="otherWorkEnvironment" type="text" />
		</div>
		
		<br/>
		
		<div class="col-sm-4">
			<font>主要诉求:</font>
			<form:select style="margin-right: 0%;" id="selected_mainRequestId" path="selected_mainRequestId" onchange="searchOtherRequestPlValues()">  
           		<option value=""/>--请选择--
           		<form:options id="" items="${contentModel.mainRequestMap}"/>  
       		</form:select>
		</div>
		
		<br/>
		
		<div id="otherRequest_div" style="display: none;" class="col-sm-4">
			<font>其他诉求:</font>
			<form:select style="margin-right: 0%;" id="selected_otherRequestIds" path="selected_otherRequestIds">  
           		<option value=""/>--请选择--
       		</form:select> 
		</div>
		
		<br/>
		
		<div style="margin-left: 3%;display: none;" id="otherRequest2_div" class="col-sm-4">
			<font>其他诉求:</font>
			<form:input style="margin-right: 6%;" id="otherRequest" path="otherRequest"/>
		</div>
		
		<br/>
		
		<div class= "section">
            <input type="submit" class = "btn-success submit" style="width: 100%;"  value="保存并下一步"/>
        </div>
	  </div>
	</form:form>
</center>
</body>
</html>