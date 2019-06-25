<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="text/javascript" src="<%=basePath %>js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/personindex.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/collection.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/collection.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/personindex.css">
    <style>

    </style>
    <title>收藏</title>
</head>
<body>
<div class="navbar">
    <ul>
        <li><a href="person_info">${sessionScope.user }</a></li>
        <li><a href="#">简历</a></li>
        <li><a href="#">收藏</a></li>
        <li><a href="applycollection">求职记录</a></li>
        <li><a href="#">毕业去向</a></li>
        <li><a href="#">通知
            <div class="number"><span>0</span></div>
        </a></li>
        <li><a href="loginOut">退出</a></li>
    </ul>
</div>
<ul class="container">
    <li><a href="#"><img class="logo" src="<%=basePath %>img/logo1.png"></a></li>
    <li><a href="#">首页</a></li>
    <li><a href="../job/see">职位</a></li>
    <li><a href="../job/companyList">企业</a></li>
    <li><a href="#">招聘会</a></li>
    <li><a href="#">实习</a></li>
    <li class="wechart"><img src="<%=basePath %>img/wechart.jpg"></li>
    <li class="qq"><img src="<%=basePath %>img/11.jpg"></a></li>
</ul>
<div class="collection_title">
    <span>我收藏的职位</span>
    <span>我收藏的公司</span>
</div>
<div class="row collection_main">
    <c:forEach items="${collection}" var="item">
        <div class="box col-md-4">
            <div class="title" id="${item.id }">${item.jobName}</div>
            <div class="companyShortName">${item.myEnterpriseInfo.shotName}</div>
            <div class="location">${item.areaCodeName}</div>
            <div class="salary">${item.salary}</div>
            <div class="btns">
                <button class="btn btn-primary">立即申请</button>
            </div>
            <div class="del">
                <img src="<%=basePath %>img/del.png">
            </div>
        </div>
    </c:forEach>


</div>
<div class="footer">
    <span>版权所有：xxxxxxx</span><br/><br/>
    <span>京ICP备xxxxxxx号</span>
</div>
</body>
</html>