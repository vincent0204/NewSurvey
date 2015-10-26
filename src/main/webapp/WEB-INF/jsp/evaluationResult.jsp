<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String code = request.getParameter("code");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	    <base href="<%=basePath%>">
	    
	    <title>MEWE自诊结果</title>
	    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
	    <link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
	    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"></link>
	    <link rel="stylesheet" href="css/layout.css" type="text/css"></link>
	</head>
    
    <body class="section">
   		<br/>
   		
   		<div class="panel panel-default">
		   <div class="panel-heading">
		   <h3 class="panel-title btn-success">
		      	请收藏本次诊断结果和编号，以便下次查询。
		      </h3>
		      <h3 class="panel-title">
		      	编号：${code}
		      </h3>
		      <h3 class="panel-title">
		      	测试结果如下:
		      </h3>
		   </div>
		   
		  <c:forEach items="${erlist}" var="er" varStatus="s" >
		   
			   <div class="panel-body">
			      	结论${s.count}：${er.conclusion}
			   </div>
			   <div class="panel-body">
			      	检测建议 : ${er.suggest}
			   </div>
			   <div class="panel-body">
			      	干预营养素 : ${er.products}
			   </div>
			   <hr/>
		   </c:forEach>
		
		</div>
		
		<div class="panel panel-default">
			<div class="panel-heading">
				<a id="link" href="http://mewetest.duapp.com/MEWE/GetEvaluationResult?code=${code}&erlist=${erlist}">
					<h3 class="panel-title btn-success">
			      		点击查看问卷详情
			        </h3>
		        </a>
			    <h3 class="panel-title">
			      	以上结果仅供参考，不作为判断疾病的依据。想更详细的了解，可咨询您的导师、营养师或医生，得到更精准的营养处方。
			    </h3>
			</div>
   		</div>
   		
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
  </body>
</html>