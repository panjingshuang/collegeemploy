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
<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/entrance.css">
<title>入口</title>
</head>
<body>
	<div class="entrance">
		<div class="college">
			<a href="${pageContext.request.contextPath}/college/login" style="display: block; text-decoration: none;" ><span>学生入口</span></a>
		</div>
		<div class="enterprise">
			<a href="${pageContext.request.contextPath}/enterprise/login" style="display: block; text-decoration: none;" ><span>企业入口</span></a>
		</div>
	</div>
</body>
</html>