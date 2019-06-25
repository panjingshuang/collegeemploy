<%@ page language="java" contentType="text/html; charset=utf-8"
<<<<<<< HEAD
         pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/css/collegeLogin.css">
    <title>学生登陆</title>
</head>
<body>
<div class="header">
    <img src="<%=basePath %>/img/logo1.png">
</div>

<div class="content">
    <div class="main">
        <h2>学生登陆</h2>
        <form action="${pageContext.request.contextPath}/college/verificationLogin" method="post" class="form">
            <label>用户名</label>
            <input type="text" name="college"/><br>
            <label>密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
            <input type="password" name="password"/><br>
            <input type="submit" class="btn" style="margin-left: 60px; margin-left: 45px;" name="" value="登陆">
            <div style="color:red">${error}</div>
        </form>
        <a href="${pageContext.request.contextPath}/college/reigster">注册</a>
    </div>
</div>
<div class="footer">
    <div class="info">
        <span>版权所有xxxxxx</span>
        <span>京xxxxxxxx</span>
    </div>
</div>

=======
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/collegeLogin.css">
<title>学生登陆</title>
</head>
<body>
	<div class="header">
		<img src="<%=basePath %>/img/logo1.png">
	</div>

	<div class="content"> 
		<div class="main">
			<h2>学生登陆</h2>
			<form action="${pageContext.request.contextPath}/college/verificationLogin" method="get" class="form">
				<label>用户名</label>
				<input type="text" name="college"  /><br>
				<label>密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
				<input type="password" name="password" /><br>
				<input  type="submit"  class= "btn"style="margin-left: 60px; margin-left: 45px;" name="" value="登陆">
				<div style="color:red">${error}</div>	
			</form>
		</div>
	</div>
	<div class="footer">
		<div class="info">
			<span>版权所有xxxxxx</span>
			<span>京xxxxxxxx</span>
		</div>
	</div>
	
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
</body>
</html>