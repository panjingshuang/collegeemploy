<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <script type="text/javascript" src="<%=basePath %>js/personindex.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/applyCollection.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/personindex.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/applyCollection.css">
    <title>申请记录</title>
</head>
<body>
<div class="navbar">
    <ul>
        <li><a href="person_info" id="${sessionScope.collegeId}" class="personinfo">${sessionScope.user}</a></li>
        <li><a href="#">简历</a></li>
        <li><a href="collection">收藏</a></li>
        <li><a href="#">求职记录</a></li>
        <li><a href="#">毕业去向</a></li>
        <li><a href="#">通知
            <div class="number"><span>0</span></div>
        </a></li>
        <li><a href="loginOut">退出</a></li>
    </ul>
</div>
<ul class="container">
    <li><a href="#"><img src="<%=basePath %>img/logo1.png" width="284px"></a></li>
    <li><a href="#">首页</a></li>
    <li><a href="../job/see">职位</a></li>
    <li><a href="../job/companyList">企业</a></li>
    <li><a href="#">招聘会</a></li>
    <li><a href="#">实习</a></li>
    <li class="wechart"><img src="<%=basePath %>img/wechart.jpg"></li>
    <li class="qq"><img src="<%=basePath %>img/11.jpg"></a></li>
</ul>
<div class="apply_main">
    <div class="title">
        <span id="one" class="active">全部已申请</span>
        <span id="two">简历合格</span>
        <span id="three">邀请面试</span>
        <span id="four">面试合格</span>
        <span id="five">代录用</span>
        <span id="six">已录用</span>
        <span id="eight">应聘合格</span>
        <span id="seven">不合适</span>
    </div>
    <div class="input_div">
        <div class="input-group">
            <input type="text" width=" 100px" class="form-control" placeholder="根据名字查询职位详情"
                   aria-describedby="basic-addon2">
            <span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-search"></span></span>
        </div>
    </div>
    <div class="context">
        <!-- 全部已被申请 -->
        <ul class="applied pre-scrollable one"></ul>
        <!-- 简历合格 -->
        <ul class="applied  pre-scrollable two">
            <c:forEach items="${jobs2}" var="item">
                <li>
                    <span class="JobName">${item.jobName}</span>
                    <span class="location">${item.areaCodeName}|${item.salary}</span>
                    <span class="companyName">${item.myEnterpriseInfo.shotName}</span>
                    <span class="type">${item.myEnterpriseInfo.type}</span>
                    <span class="status">简历合格</span>
                </li>
            </c:forEach>
        </ul>
        <!-- 邀约面试 -->
        <ul class="getInterview  pre-scrollable three">
            <c:forEach items="${jobs3}" var="item">
                <li>
                    <span class="JobName">${item.jobName}</span>
                    <span class="location">${item.areaCodeName}|${item.salary}</span>
                    <span class="companyName">${item.myEnterpriseInfo.shotName}</span>
                    <span class="type">${item.myEnterpriseInfo.type}</span>
                    <span class="status">面试中...</span>
                </li>
            </c:forEach>
        </ul>
        <!--面试合格 -->
        <ul class="Qualifiedinterview  pre-scrollable four">
            <c:forEach items="${jobs4}" var="item">
                <li>
                    <span class="JobName">${item.jobName}</span>
                    <span class="location">${item.areaCodeName}|${item.salary}</span>
                    <span class="companyName">${item.myEnterpriseInfo.shotName}</span>
                    <span class="type">${item.myEnterpriseInfo.type}</span>
                    <span class="status">面试合格</span>
                </li>
            </c:forEach>
        </ul>
        <!-- 待录用 -->
        <ul class="Tobehired  pre-scrollable five">
            <c:forEach items="${jobs5}" var="item">
                <li>
                    <span class="JobName">${item.jobName}</span>
                    <span class="location">${item.areaCodeName}|${item.salary}</span>
                    <span class="companyName">${item.myEnterpriseInfo.shotName}</span>
                    <span class="type">${item.myEnterpriseInfo.type}</span>
                    <span class="status">待录用...</span>
                </li>
            </c:forEach>
        </ul>
        <!-- 已录用 -->
        <ul class="Tobehired  pre-scrollable six">
            <c:forEach items="${jobs6}" var="item">
                <li>
                    <span class="JobName">${item.jobName}</span>
                    <span class="location">${item.areaCodeName}|${item.salary}</span>
                    <span class="companyName">${item.myEnterpriseInfo.shotName}</span>
                    <span class="type">${item.myEnterpriseInfo.type}</span>
                    <button type="button" class="btn btn-success ">同意</button>
                    <button type="button" class="btn btn-danger ">拒绝</button>
                </li>
            </c:forEach>
        </ul>
        <!-- 不合格 -->
        <ul class="Unqualified  pre-scrollable seven">
            <c:forEach items="${jobs7}" var="item">
                <li>
                    <span class="JobName">${item.jobName}</span>
                    <span class="location">${item.areaCodeName}|${item.salary}</span>
                    <span class="companyName">${item.myEnterpriseInfo.shotName}</span>
                    <span class="type">${item.myEnterpriseInfo.type}</span>
                    <span class="status">不合格</span>
                </li>
            </c:forEach>
        </ul>
         <ul class="resolved  pre-scrollable eight">
            <c:forEach items="${jobs8}" var="item">
                <li>
                    <span class="JobName">${item.jobName}</span>
                    <span class="location">${item.areaCodeName}|${item.salary}</span>
                    <span class="companyName">${item.myEnterpriseInfo.shotName}</span>
                    <span class="type">${item.myEnterpriseInfo.type}</span>
                    <span class="status">不合格</span>
                </li>
            </c:forEach>
        </ul>
		<div class="warning">
			<div class="alert alert-info" role="alert">暂无当前数据!</div>
		</div>
    </div>
</div>
<div class="footer">
    <span>版权所有：xxxxxxx</span><br/><br/>
    <span>京ICP备xxxxxxx号</span>
</div>
</body>

</html>