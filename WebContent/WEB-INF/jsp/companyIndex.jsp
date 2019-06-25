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
    <script type="text/javascript" src="<%=basePath %>js/companyIndex.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/companyIndex.css">
    <title>企业首页</title>
</head>
<body>
<div class="box1">
    <div class="name">
        <span class="username">${sessionScope.user}</span>
        <span class=""><a href="#">${sessionScope.companyName}</a></span>
        <span class=""><a href="#">退出</a></span>
    </div>
</div>

<div class="box2">

    <ul class="nav nav-pillsnav-stacked" id="SelectTitle" width="153px">
        <li role="presentation" class="bgc" id="one"><a href="javascript:;">待查看</a></li>
        <li role="presentation" id="two"><a href="javascript:;">简历合格</a></li>
        <li role="presentation" id="three"><a href="javascript:;">邀请面试</a></li>
        <li role="presentation" id="four"><a href="javascript:;">面试合格</a></li>
        <li role="presentation" id="five"><a href="javascript:;">代录用</a></li>
        <li role="presentation" id="six"><a href="javascript:;">已录用</a></li>
        <li role="presentation" id="seven"><a href="javascript:;">不合适</a></li>
    </ul>

    <div class="context">
        <!-- 待检查 -->
        <ul class="waitViewrow pre-scrollable one " data-toggle="modal" data-target="#myModal">
        </ul>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12"><label>名字：</label><span id="info_name">${item.myCollege.name }</span>
                            </div>
                            <div class="col-md-12"><label>性别：</label><span id="info_sex">${item.myCollege.sex }</span>
                            </div>
                            <div class="col-md-12"><label>出生日期：</label><span
                                    id="info_birth">${item.myCollege.birth }</span></div>
                            <div class="col-md-12"><label>邮箱：</label><span
                                    id="info_email">${item.myCollege.email }</span></div>
                            <div class="col-md-12"><label>手机号：</label><span
                                    id="info_phone">${item.myCollege.phone }</span></div>
                            <div class="col-md-12"><label>民族:</label><span
                                    id="info_nation">${item.myCollege.nation}</span></div>
                            <div class="col-md-12"><label>生源地：</label><span
                                    id="info_hometown">${item.myCollege.hometown }</span></div>
                            <div class="col-md-12"><label>工作地点:</label><span
                                    id="info_worklocation">${item.myCollege.worklocation}</span></div>
                            <div class="col-md-12"><label>从事行业：</label><span
                                    id="info_industry">${item.myCollege.industry}</span></div>
                            <div class="col-md-12"><label>期望职位:</label><span
                                    id="info_position">${item.myCollege.position}</span></div>
                            <div class="col-md-12"><label>期望薪酬：</label><span
                                    id="info_salary">${item.myCollege.salary}</span></div>
                            <div class="col-md-12"><label>自我评价:</label><span
                                    id="info_self">${item.myCollege.selfevaluation}</span></div>
                        </div>
                    </div>
                    <div class="modal-footer ">
                        <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- 简历合格 -->
        <ul class="applied  pre-scrollable two"></ul>
        <!-- 邀约面试 -->
        <ul class="getInterview  pre-scrollable three"></ul>
        <!--面试合格 -->
        <ul class="Qualifiedinterview  pre-scrollable four"></ul>
        <!-- 待录用 -->
        <ul class="Tobehired  pre-scrollable five"></ul>
        <!-- 已录用 -->
        <ul class="Tobehired  pre-scrollable six"></ul>
        <!-- 不合格 -->
        <ul class="Unqualified  pre-scrollable seven"></ul>


    </div>

    <div>

    </div>
</div>


</body>
</html>