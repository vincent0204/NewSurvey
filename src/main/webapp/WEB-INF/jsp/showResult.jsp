<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>自诊结果</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
<link rel="stylesheet" href="<%=basePath %>css/bootstrap.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/bootstrap.min.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/layout.css" type="text/css"></link>
</head>
<body>
	<center>
       	<div>
           <img src="<%=basePath %>images/mewe.jpg"/>
        </div>
        
        <br/>
	
       	<div>
          <img src="<%=basePath %>images/${evaluationResultsModel.imageName}"/>
        </div>
        <br/>
        
       	<div style="width: 95%; vertical-align: middle; margin:auto;">
            <span>
             	<font size="+1">您的健康状况属于"${evaluationResultsModel.description}"</font>
			</span>
        </div>
	    <br/>
	    
	    <center>
           <div class= "section">
               <input type="submit" class = "btn-success submit" style="width: 100%;"  value="查看结果"/>
           </div>
        </center> 
    </center>
</body>
</html>