<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>MEWE自诊程序</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
   	<meta name="description" content="MEWE自诊程序" />
	<link rel="stylesheet" href="<%=basePath %>css/bootstrap.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=basePath %>css/bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=basePath %>css/layout.css" type="text/css"></link>
    </head>
    <style type="text/css">
	span{
		margin-left: 2%;
		margin-right: 5%;
	}
	
</style>
    <body>
    <form:form action="toNextInterventionEvaluationPage" modelAttribute="questionModel" method="post">
        <div class="section">
	        <br/>
	        	<center>
		        	<div>
		                <img src="<%=basePath %>images/mewe.jpg"/>
		            </div>
	            </center>
	         	
	         	<br/>
	         	 <div style="width: 95%; vertical-align: middle; margin:auto;">
	                <span>
	                	<font size="+1">请如实填写以下信息，系统会根据您的症状，自动评估您的健康状况，并给出相关建议。</font>
					</span>
					 <br/>
	            </div>
	            <br/>
	            
	            <form:hidden path="basicId"/>
		        <form:hidden path="sectionId"/>
		        
	            <a id="link" data-toggle="collapse" data-parent="#accordion" data-target="#section_one">
		            <div class="btn-success title">
		                <span><font size="+1">&nbsp;&nbsp;${questionModel.sectionLabel}</font></span>
		            </div></a>
	            <c:forEach var="question" items="${questionModel.questionList}">
		            <div id = "section_one"  class="collapse in section">
		                <br/>
		                <div class="row section_div">
		                    <div class="col-sm-6">
		                        <div id="FieldLable"><b>${question.label}</b></div>
		                        <br/>
									<input type="radio" name="${question.id}answerVal" value="0" checked="checked"/><span>无</span>
									<input type="radio" name="${question.id}answerVal" value="1" /><span>轻</span>
									<input type="radio" name="${question.id}answerVal" value="2" /><span>重</span>
		                    </div>
		                </div>
		         	</div>
		         </c:forEach>
          </div>
            <br/>
                    
            <br/>
                    
            <center>
                <div class= "section">
                    <input type="submit" class = "btn-success submit" style="width: 100%;"  value="保存并下一步"/>
                </div>
            </center>   
            <br/>
        </div>
        </form:form>
  </body>
</html>
