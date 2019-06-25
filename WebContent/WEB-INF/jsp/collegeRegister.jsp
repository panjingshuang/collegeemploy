<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 
<title>学生注册</title>
</head>
<body>
	<form:form modelAttribute="mycollege" action="${pageContext.request.contextPath }/college/Checkreigster" method="get">
		<fieldset>
        <legend>用户注册</legend>
        <p>
            <label>姓名:</label>
            <form:input path="name"/>
        </p>
        <p>
            <label>性别:</label>
            <form:select path="sex">
           		<option value="女">女</option>
            	<option value="男">男</option>
           	</form:select>
        </p>
        <p>
            <label>手机号:</label>
            <form:input path="phone"/>
            	
            
        </p>
        <p>
            <label>密码:</label>
            <form:input path="password"/>
        </p>
        <p>
            <label>民族:</label>
            <form:input path="nation"/>
        </p>
        
        <p id="buttons">
            <input id="reset" type="reset">
            <input id="submit" type="submit" value="添加">
        </p>
    	</fieldset>
    	<!-- 取出所有验证错误 -->
    	<form:errors path="*"/>
	</form:form>
</body>
</html>