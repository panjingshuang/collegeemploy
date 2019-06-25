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
    <script type="text/javascript" src="<%=basePath %>js/company.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/personindex.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/company.css">
    <title>公司详情</title>
</head>
<body>
<div class="navbar">
    <ul>
        <li><a href="../../college/person_info" class="collegeId"
               id="${sessionScope.collegeId}">${sessionScope.user}</a></li>
        <li><a href="#">简历</a></li>
        <li><a href="../../college/collection">收藏</a></li>
        <li><a href="../../college/applycollection">求职记录</a></li>
        <li><a href="#">毕业去向</a></li>
        <li><a href="#">通知
            <div class="number"><span>0</span></div>
        </a></li>
        <li><a href="../../college/loginOut">退出</a></li>
    </ul>
</div>
<ul class="container">
    <li><a href="#"><img class="logo" src="<%=basePath %>img/logo1.png"></a></li>
    <li><a href="#">首页</a></li>
    <li><a href="../see">职位</a></li>
    <li><a href="../companyList">企业</a></li>
    <li><a href="#">招聘会</a></li>
    <li><a href="#">实习</a></li>
    <li class="wechart"><img style="width:50px;height:50px;" src="<%=basePath %>img/wechart.jpg"></li>
    <li class="qq"><img style="width:50px;height:50px;" src="<%=basePath %>img/11.jpg"></a></li>
</ul>
<div class="row  ">
    <div class="company_main ">
        <div class="head">
            <div class="portrait"></div>
            <div class="companyName">${company.shotName }</div>
        </div>
        <div class="title">
            <span>职位招聘</span>
            <span>公司简介</span>
            <span>面试经验</span>
            <span>公司评价</span>
        </div>
        <div class="content">
            <ul class="info">
                <c:forEach items="${myjoblist}" var="item">
                    <li>

                        <div class="img_position" style="width: 100px; height: 100px; background-color: gold"></div>
                        <div class="jobinfo">
                            <a href="/College/job/${item.id }/detail" id="${item.id}"
                               class="JobName">${item.jobName}</a>
                            <div class="depart">${item.degreeName}|<span class="salary">${item.salary}/月</span></div>
                            <div class="location">${item.areaCodeName}|${item.major}</div>
                        </div>

                        <div class="btns">
                            <button class="btn btn-primary" id="apply_position" value="申请职位">申请职位</button>
                            <button class="btn btn-default" id="collection" value="收藏职位">收藏职位</button>
                        </div>

                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>

</div>
<div class="footer">
    <span>版权所有：xxxxxxx</span><br/><br/>
    <span>京ICP备xxxxxxx号</span>
</div>
</body>
</html>