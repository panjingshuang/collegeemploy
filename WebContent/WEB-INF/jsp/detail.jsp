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
<script type="text/javascript" src="<%=basePath %>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/personindex.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jobinfo.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/personindex.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/jobinfo.css">
<title>职位详情</title>
</head>
<body>
	<div class="navbar">
		<ul >
			<li><a href="#">pan</a></li>
			<li><a href="#">简历</a></li>
			<li><a href="#">收藏</a></li>
			<li><a href="#">求职记录</a></li>
			<li><a href="#">毕业去向</a></li>
			<li><a href="#">通知<div class="number"><span>0</span></div></a></li>
			<li><a href="#">退出</a></li>
		</ul>
	</div>
	<ul class="container">
			<li><a href="#"><img class ="logo" src="<%=basePath %>/img/logo1.png"></a></li>
			<li><a href="#">首页</a></li>
			<li><a href="#">职位</a></li>
			<li><a href="#">企业</a></li>
			<li><a href="#">招聘会</a></li>	
			<li><a href="#">实习</a></li>
			<li class="wechart"><img style="width:50px;height:50px;" src="<%=basePath %>/img/wechart.jpg"></li>
			<li class="qq"><img style="width:50px;height:50px;" src="<%=basePath %>/img/11.jpg"></a></li>
	</ul>
	<div class="main">
		<div class="head">
			<div class="JobName">${myJobListinfo.jobName}</div>
			<div class="education"><span>${myJobListinfo.salary}</span>|${myJobListinfo.degreeName}|招聘8人 06-05 13：09更新</div>
			<div class="zhuanye">${myJobListinfo.major}</div>
			<div class="site_tag"><img src="<%=basePath %>img/site.png">${myJobListinfo.areaCodeName} </div>
			<span class="glyphicon glyphicon-heart" id="collection" title="收藏"></span>
			<span class="glyphicon glyphicon-alert" id="report" title="举报"></span>
			<span class="glyphicon glyphicon-new-window" id="forward" title="转发"></span>
			<button class="btn btn-primary" >申请职位</button>
		</div> 
		
		<div class="content"> 
			<div class="title">职位要求</div>
			${content}
		</div>
	</div>
	<div class="footer">
		<span>版权所有：xxxxxxx</span><br /><br/>
		<span>京ICP备xxxxxxx号</span>
	</div>
</body>
</html>