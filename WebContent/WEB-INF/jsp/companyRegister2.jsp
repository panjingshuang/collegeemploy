<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="text/javascript" src="<%=basePath %>js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.min.css">
    <style type="text/css">
 		body{
 			background-color:#98FB98;
 		}
 		.enterpriceform{
 			width: 500px;
 			margin:50px auto;
 		}
 		
 	</style>
 	<script type="text/javascript">
 		$(function(){
 			//当用户键入企业名称之后查询数据，如果当前的名称已经存在就提示错误
 			
 			//并且要求填入的数据不可以是空
 			//并且当存在错误的时候，不可以提交数据
 			
 		})
 	</script>
    <title>企业注册</title>
</head>
<body>

	<div class="enterpriceform">
			<h2>企业注册</h2>
	<form:form modelAttribute="myCompany" class="form-horizontal">
		<div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">企业简称</label>
	    <div class="col-sm-10">
	      <input type="email" class="form-control" id="shotName" placeholder="企业简称">
	    </div>
	  </div>
	   <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">企业全称</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="name" placeholder="企业全称">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="type" class="col-sm-2 control-label">企业类型</label>
	    <div class="col-sm-10">
	      <select class="form-control" id="type">
	      <c:forEach items="${jobtypes}" var="item">
		      <option value="${item.id}">${item.jobname}</option>
		   </c:forEach>
		    </select>
		  
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">网址</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="website" placeholder="网址">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="industry" class="col-sm-2 control-label">行业类型</label>
	    <div class="col-sm-10">
	      <select class="form-control" id="industry">
	       <c:forEach items="${industries}" var="item">
		      <option value="${item.id}">${item.industry}</option>
		   </c:forEach>
		   </select>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">地址</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="location" placeholder="地址">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">规模</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="staffSize" placeholder="规模">
	    </div>
	  </div>
	  
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">邮编</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="postCode" placeholder="邮编">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">所在城市</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="city" placeholder="所在城市">
	    </div>
	  </div>
	  
	  <div class="form-group">
	      <textarea class="form-control" id="description" placeholder="企业描述"></textarea>
	    </div>
	  
	  <br/>
	  <div class="form-group">
	    <div class="col-sm-offset-4 col-sm-10">
	      <button type="submit" class="btn btn-default">注册</button>
	    </div>
	  </div>
	  
	</form:form >
	</div>

</body>
</html>