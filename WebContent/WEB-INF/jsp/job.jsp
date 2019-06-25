<<<<<<< HEAD
<%@page import="org.springframework.ui.Model" %>
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
    <script type="text/javascript" src="<%=basePath %>js/job.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/personindex.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/job.css">
    <title>职位列表</title>
</head>
<body>
<div class="navbar">
    <ul>
        <li><a href="../college/person_info" class="collegeId" id="${sessionScope.collegeId}">${sessionScope.user}</a>
        </li>
        <li><a href="#">简历</a></li>
        <li><a href="../college/collection">收藏</a></li>
        <li><a href="../college/applycollection">求职记录</a></li>
        <li><a href="#">毕业去向</a></li>
        <li><a href="#">通知
            <div class="number"><span>0</span></div>
        </a></li>
        <li><a href="../college/loginOut">退出</a></li>
    </ul>
</div>
<ul class="container">
    <li><a href="#"><img class="logo" src="<%=basePath %>img/logo1.png"></a></li>
    <li><a href="#">首页</a></li>
    <li><a href="#">职位</a></li>
    <li><a href="./companyList">企业</a></li>
    <li><a href="#">招聘会</a></li>
    <li><a href="#">实习</a></li>
    <li class="wechart"><img style="width:50px;height:50px;" src="<%=basePath %>img/wechart.jpg"></li>
    <li class="qq"><img style="width:50px;height:50px;" src="<%=basePath %>img/11.jpg"></a></li>
</ul>
<div class="row locationSelect">
    <div class="col-lg-6 col-lg-offset-2">
        <div class="input-group">
            <input type="text" class="form-control" id="input_select" placeholder="请输入职位或公司名称的关键字">
            <span class="input-group-btn">
		        <button class="btn btn-default" id="selectBtn" type="button"><span class="glyphicon glyphicon-search"
                                                                                   style="color: #fff"></span></button>
		      </span>
        </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
</div><!-- /.row -->
</div>
<div class="row">
    <div class="box1 col-lg-6 col-lg-offset-2">
        <ul class="hasSelected">
            <li class="main">已选专业：</li>
            <li>互联网/电子/通信 <span class="glyphicon glyphicon-remove"></span></li>
            <li>互联网 <span class="glyphicon glyphicon-remove"></span></li>
            <li>电子 <span class="glyphicon glyphicon-remove"></span></li>
            <li>通信 <span class="glyphicon glyphicon-remove"></span></li>
            <li>互联网/电子/通信 <span class="glyphicon glyphicon-remove"></span></li>

        </ul>
        <br/><br/>
        <ul class="Industry">
            <li class="main">所属专业：</li>
            <li class="active">全部</li>
            <li>互联网/电子/通信</li>
            <li>金融</li>
            <li>生产/加工/制造</li>
            <li>制药/医疗</li>
            <li>广告/传媒/文化体育</li>
            <li>教育</li>
            <li>房地产/建筑</li>
            <li>贸易/工艺/消费品</li>
            <li>能源/矿产物流/运输</li>
            <li>服务业</li>
            <li>政府/非营利机构/其他</li>
        </ul>
        <br/>
        <br/>
        <ul class="company">
            <li class="">公司性质：</li>
            <li>国有企业</li>
            <li>股份制企业</li>
            <li>民营企业</li>
            <li>上市公司</li>
            <li>合资企业</li>
            <li>外企</li>
            <li>机关事业单位</li>
            <li>其他</li>
        </ul>
    </div>
</div>
<div class="row">
    <div class="context col-lg-6 col-lg-offset-2">
        <div class="top">
            <div class="top_main">
                <input type="checkbox" class="input_checkbox" name="">
                <button class="btn btn-primary" value="收藏职位">收藏职位</button>
            </div>

        </div>
        <div class="job_List">
            <ul class="info">
                <c:forEach items="${joblists}" var="item">
                    <li>

                        <input type="checkbox" class="input_checkbox" name="">
                        <div class="img_position" style="width: 100px; height: 100px; background-color: gold"></div>
                        <div class="jobinfo">
                            <a href="${item.id }/detail" id="${item.id}" class="JobName">${item.jobName}</a>
                            <div class="depart">${item.degreeName}|<span class="salary">${item.salary}/月</span></div>
                            <div class="location">${item.areaCodeName}|${item.major}</div>
                        </div>
                        <div class="enterpriseinfo">
                            <a href="${item.corpid}/Companydetail">${item.myEnterpriseInfo.shotName}</a>
                            <span class="type">${item.myEnterpriseInfo.type}|${item.myEnterpriseInfo.staffSize}</span>
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
<div class="row" style="">

    <ul class="pagination">
        <li class="left"><a href="javascript:;">&laquo;</a></li>
        <li><a href="javascript:;">1</a></li>
        <li><a href="javascript:;">2</a></li>
        <li><a href="javascript:;">3</a></li>
        <li><a href="javascript:;">4</a></li>
        <li><a href="javascript:;">5</a></li>
        <li><a href="javascript:;">6</a></li>
        <li><a href="javascript:;">7</a></li>
        <li><a href="javascript:;">8</a></li>
        <li><a href="javascript:;">9</a></li>
        <li><a href="javascript:;">10</a></li>
        <li class="right"><a href="javascript:;">&raquo;</a></li>


    </ul>
</div>
<div class="footer">
    <span>版权所有：xxxxxxx</span><br/><br/>
    <span>京ICP备xxxxxxx号</span>
</div>

=======
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script type="text/javascript" src="<%=basePath %>/js/job.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/personindex.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/job.css">
<title>职位列表</title>
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
	<div class="row locationSelect">
		<div class="col-lg-6 col-lg-offset-2">
		    <div class="input-group">
		      <input type="text" class="form-control" id="input_select" placeholder="请输入职位或公司名称的关键字">
		      <span class="input-group-btn">
		        <button class="btn btn-default"  id="selectBtn"  type="button"><span class="glyphicon glyphicon-search" style="color: #fff"></span></button>
		      </span>
		    </div><!-- /input-group -->
		  </div><!-- /.col-lg-6 -->
		</div><!-- /.row -->
	</div>
	<div class="row">
		<div class="box1 col-lg-6 col-lg-offset-2">
				<ul class="hasSelected">
					<li class="main">已选专业：</li>
					<li>互联网/电子/通信 <span class="glyphicon glyphicon-remove"></span></li>
					<li>互联网 <span class="glyphicon glyphicon-remove"></span></li>
					<li>电子 <span class="glyphicon glyphicon-remove"></span></li>
					<li>通信 <span class="glyphicon glyphicon-remove"></span></li>
					<li>互联网/电子/通信 <span class="glyphicon glyphicon-remove"></span></li>

				</ul>
				<br /><br />
				<ul class="Industry">
					<li class="main">所属专业：</li>
					<li class="active">全部</li>
					<li>互联网/电子/通信</li>
					<li>金融</li>
					<li>生产/加工/制造</li>
					<li>制药/医疗</li>
					<li>广告/传媒/文化体育</li>
					<li>教育</li>
					<li>房地产/建筑</li>
					<li>贸易/工艺/消费品</li>
					<li>能源/矿产物流/运输</li>
					<li>服务业</li>
					<li>政府/非营利机构/其他</li>
				</ul>
				<br />
				<br />
				<ul class="company">
					<li class="">公司性质：</li>
					<li>国有企业</li>
					<li>股份制企业</li>
					<li>民营企业</li>
					<li>上市公司</li>
					<li>合资企业</li>
					<li>外企</li>
					<li>机关事业单位</li>
					<li>其他</li>
				</ul>
		</div>
	 </div>
	<div class="row">
		<div class="context col-lg-6 col-lg-offset-2">
			<div class="top">
				<div class="top_main">
					<input type="checkbox" class="input_checkbox" name="">
					<button class="btn btn-primary" value="收藏职位">收藏职位</button>
				</div>

			</div>
			<div class="job_List">
				<ul class="info">
				<c:forEach items="${joblists}" var="item">
					<li>
						
							<input type="checkbox" class="input_checkbox" name="">
							<div class="img_position" style="width: 100px; height: 100px; background-color: gold"></div>
							<div class="jobinfo">
								<a href="${item.id }/detail" id="${item.id }">${item.jobName}</a>
								<div class="depart">${item.degreeName}|<span class="salary">${item.salary}/月</span></div>
								<div class="location">${item.areaCodeName}|${item.major}</div>
							</div>
							<div class="enterpriseinfo">
								<a href="#" id="${item.myEnterpriseInfo.id }">${item.myEnterpriseInfo.shotName}</a>
								<span class="type">${item.myEnterpriseInfo.type}|${item.myEnterpriseInfo.staffSize}</span>
							</div>
							<div class="btns">
								<button class="btn btn-primary" value="申请职位">申请职位</button>
								<button class="btn btn-default" value="收藏职位">收藏职位</button>
							</div>
				
					</li>
					</c:forEach>
				</ul>
			</div>

		</div> 
	</div>
	<div class="row" style="">
	
		<ul class="pagination">
		<li class="left"><a href="javascript:;">&laquo;</a></li>
		<li><a href="javascript:;">1</a></li>
		<li><a href="javascript:;">2</a></li>
		<li><a href="javascript:;">3</a></li>
		<li><a href="javascript:;">4</a></li>
		<li><a href="javascript:;">5</a></li>
		<li><a href="javascript:;">6</a></li>
		<li><a href="javascript:;">7</a></li>
		<li><a href="javascript:;">8</a></li>
		<li><a href="javascript:;">9</a></li>
		<li><a href="javascript:;">10</a></li>
		<li class="right"><a href="javascript:;">&raquo;</a></li>
	
		
	</ul>
	</div>
	<div class="footer">
		<span>版权所有：xxxxxxx</span><br /><br/>
		<span>京ICP备xxxxxxx号</span>
	</div>
	
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
</body>
</html>