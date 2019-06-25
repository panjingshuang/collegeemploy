<%@ page language="java" contentType="text/html; charset=utf-8"
<<<<<<< HEAD
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
=======
    pageEncoding="utf-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<<<<<< HEAD
    <meta charset="utf-8">
    <title>个人中心</title>
    <script type="text/javascript" src="<%=basePath %>js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/personindex.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/personindex.css">

</head>

<body>
<div class="navbar">
    <ul>
        <li><a href="person_info">${sessionScope.user}</a></li>
        <li><a href="#">简历</a></li>
        <li><a href="collection">收藏</a></li>
        <li><a href="applycollection">求职记录</a></li>
        <li><a href="#">毕业去向</a></li>
        <li><a href="#">通知
            <div class="number"><span>0</span></div>
        </a></li>
        <li><a href="loginOut">退出</a></li>
    </ul>
</div>
<ul class="container">
    <li><a href="#"><img class="logo" src="<%=basePath %>/img/logo1.png"></a></li>
    <li><a href="#">首页</a></li>
    <li><a href="../job/see">职位</a></li>
    <li><a href="../job/companyList">企业</a></li>
    <li><a href="#">招聘会</a></li>
    <li><a href="#">实习</a></li>
    <li class="wechart"><img style="width:50px;height:50px;" src="<%=basePath %>/img/wechart.jpg"></li>
    <li class="qq"><img style="width:50px;height:50px;" src="<%=basePath %>/img/11.jpg"></a></li>
</ul>
<div class="main_con">
    <div class="content">
        <span class="name">${college.name}</span>
        <span class="sex">${college.sex}</span>
        <span class="nation">${college.nation }</span>
    </div>

    <div class="content_con">
        <div class="base baseinfo">
            <div class="title">基本信息</div>
            <div class="insert" data-toggle="modal" data-target="#myModal"><img src="<%=basePath %>/img/insert.png">增加基本信息
            </div>
            <div class="info row " id="info_baseinfo">
                <div class="col-md-6"><label>年龄：</label><span id="age">${college.email }</span></div>
                <div class="col-md-6"><label>邮箱：</label><span id="info_email">${college.email }</span></div>
                <div class="col-md-6"><label>手机号：</label><span id="info_phone">${college.phone }</span></div>
                <div class="col-md-6"><label>民族:</label><span id="info_nation">${college.nation}</span></div>
                <div class="col-md-6"><label>生源地：</label><span id="info_hometown">${college.hometown }</span></div>

            </div>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">基本信息</h4>
                        </div>
                        <div class="modal-body">
                            <div class="demo">
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">年&nbsp;&nbsp;&nbsp;&nbsp;龄</span>
                                    <input type="text" class="form-control" id="age" aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">邮&nbsp;&nbsp;&nbsp;&nbsp;箱</span>
                                    <input type="text" class="form-control" id="email" aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">生源地</span>
                                    <input type="text" class="form-control" id="hometown"
                                           aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">民&nbsp;&nbsp;&nbsp;&nbsp;族</span>
                                    <input type="text" class="form-control" id="nation"
                                           aria-describedby="sizing-addon2">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" id="savebaseInfo" class="btn btn-primary" data-dismiss="modal">Save
                                changes
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="base educational">
            <div class="title">教育经历(最高学历)</div>
            <div class="insert" data-toggle="modal" data-target="#myModal1"><img src="<%=basePath %>/img/insert.png">增加教育经历
            </div>
            <div class="info row" id="info_educational">
                <div class="col-md-6"><label>学校：</label><span id="info_school">${education.school}</span></div>
                <div class="col-md-6"><label>学历：</label><span id="info_education">${education.education}</span></div>
                <div class="col-md-6"><label>院系:</label><span id="info_department">${education.department}</span></div>
                <div class="col-md-6"><label>专业：</label><span id="info_marjor">${education.major}</span></div>
                <div class="col-md-6"><label>开学时间:</label><span id="info_starttime">${education.starttime}</span></div>
                <div class="col-md-6"><label>毕业时间:</label><span id="info_endtime">${education.endtime}</span></div>
            </div>
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">教育经历</h4>
                        </div>
                        <div class="modal-body">
                            <div class="demo">
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">学&nbsp;&nbsp;&nbsp;&nbsp;校</span>
                                    <input type="text" class="form-control" id="school"
                                           aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">学&nbsp;&nbsp;&nbsp;&nbsp;历</span>
                                    <input type="text" class="form-control" id="education"
                                           aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">院&nbsp;&nbsp;&nbsp;&nbsp;系</span>
                                    <input type="text" class="form-control" id="department"
                                           aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">专&nbsp;&nbsp;&nbsp;&nbsp;业</span>
                                    <input type="text" class="form-control" id="major" aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">开始时间</span>
                                    <input type="text" class="form-control" id="starttime" placeholder="格式：2016-09-01"
                                           aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">毕业时间</span>
                                    <input type="text" class="form-control" id="endtime" placeholder="格式：2016-09-01"
                                           aria-describedby="sizing-addon2">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" id="educationalsaveChange" class="btn btn-primary"
                                    data-dismiss="modal">Save changes
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="base job_expectation">
            <div class="title">求职期望</div>
            <div class="insert" data-toggle="modal" data-target="#myModal3"><img src="<%=basePath %>/img/insert.png">增加求职期望
            </div>
            <div class="info row" id="job_expectation">
                <div class="col-md-6"><label>工作地点:</label><span id="info_worklocation">${college.worklocation}</span>
                </div>
                <div class="col-md-6"><label>从事行业：</label><span id="info_industry">${college.industry}</span></div>
                <div class="col-md-6"><label>期望职位:</label><span id="info_position">${college.position}</span></div>
                <div class="col-md-6"><label>期望薪酬：</label><span id="info_salary">${college.salary}</span></div>
            </div>
            <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">求职期望</h4>
                        </div>
                        <div class="modal-body">
                            <div class="demo">
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">工作地点</span>
                                    <input type="text" class="form-control" id="work_loaction"
                                           aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">从事行业</span>
                                    <input type="text" class="form-control" id="distury"
                                           aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">期望职位</span>
                                    <input type="text" class="form-control" id="position"
                                           aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">期望薪酬</span>
                                    <input type="text" class="form-control" id="salary"
                                           aria-describedby="sizing-addon2">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" id="saveChangeJob_expection" class="btn btn-primary"
                                    data-dismiss="modal">Save changes
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="base self_evaluation">
            <div class="title">自我评价</div>
            <div class="insert" data-toggle="modal" data-target="#myModal6"><img src="<%=basePath %>/img/insert.png">增加自我评价
            </div>
            <div class="info row" id="self_evaluation">
                <div class="col-md-12"><label>自我评价:</label><span id="info_self">${college.selfevaluation}</span></div>
            </div>
            <div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">自我评价</h4>
                        </div>
                        <div class="modal-body">
                            <form role="form">
                                <div class="form-group">
                                    <label for="name">性格 特长等方面</label>
                                    <textarea class="form-control" id="self" rows="3"></textarea>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" id="slef_saveChange" class="btn btn-primary" data-dismiss="modal">Save
                                changes
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <span>版权所有：xxxxxxx</span><br/><br/>
    <span>京ICP备xxxxxxx号</span>
</div>
</body>

=======
	<meta charset="utf-8">
	<title>个人中心</title>
	<script type="text/javascript" src="<%=basePath %>js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/personindex.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/personindex.css">
	<script type="text/javascript">
		$(function(){
			
		})
	</script>
	<style type="text/css">
		
	</style>
</head>

<body>
	<div class="navbar">
		<ul >
			<li><a href="#">${college.name }</a></li>
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
	<div class="main_con">
		<div class="portrait"></div>
		<div class="content">
			<span class="name">${college.name}</span>
			<span class="sex">${college.sex}</span>
			<span class="nation">${college.nation }</span>
		</div>

		<div class="content_con">
			<div class="base baseinfo">
				<div class="title">基本信息</div>
				<div class="insert" data-toggle="modal" data-target="#myModal"><img src="<%=basePath %>/img/insert.png">增加基本信息</div>
				<div class="info row " id="info_baseinfo">
					<div class="col-md-6"><label>年龄：</label><span id="age" >${college.email }</span></div> 
					<div class="col-md-6"><label>邮箱：</label><span id="info_email">${college.email }</span></div>
					<div class="col-md-6"><label>手机号：</label><span id="info_phone">${college.phone }</span></div>
					<div class="col-md-6"><label>民族:</label><span id="info_nation">${college.nation}</span></div>
					<div class="col-md-6"><label>生源地：</label><span id="info_hometown" >${college.hometown }</span></div> 
					
				</div> 
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">基本信息</h4>
				      </div>
				      <div class="modal-body">
				        <div class="demo">
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">年&nbsp;&nbsp;&nbsp;&nbsp;龄</span>
							<input type="text" class="form-control" id="age" aria-describedby="sizing-addon2">
							</div>
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">邮&nbsp;&nbsp;&nbsp;&nbsp;箱</span>
							<input type="text" class="form-control" id="email" aria-describedby="sizing-addon2">
							</div>
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">生源地</span>
							<input type="text" class="form-control" id="hometown" aria-describedby="sizing-addon2">
							</div>
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">民&nbsp;&nbsp;&nbsp;&nbsp;族</span>
							<input type="text" class="form-control" id="nation" aria-describedby="sizing-addon2">
							</div>
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        <button type="button" id="savebaseInfo" class="btn btn-primary" data-dismiss="modal">Save changes</button>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
			<div class="base educational">
				<div class="title">教育经历(最高学历)</div>
				<div class="insert" data-toggle="modal" data-target="#myModal1"><img src="<%=basePath %>/img/insert.png">增加教育经历</div>
				<div class="info row" id="info_educational">
					<div class="col-md-6"><label>学校：</label><span id="info_school">${education.school}</span></div>
					<div class="col-md-6"><label>学历：</label><span id="info_education">${education.education}</span></div>
					<div class="col-md-6"><label>院系:</label><span id="info_department">${education.department}</span></div>
					<div class="col-md-6"><label>专业：</label><span id="info_marjor" >${education.major}</span></div> 
					<div class="col-md-6"><label>开学时间:</label><span id="info_starttime">${education.starttime}</span></div>
					<div class="col-md-6"><label>毕业时间:</label><span id="info_endtime" >${education.endtime}</span></div> 
				</div>
				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">教育经历</h4>
				      </div>
				      <div class="modal-body">
				        <div class="demo">
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">学&nbsp;&nbsp;&nbsp;&nbsp;校</span>
							<input type="text" class="form-control" id="school" aria-describedby="sizing-addon2">
							</div>
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">学&nbsp;&nbsp;&nbsp;&nbsp;历</span>
							<input type="text" class="form-control" id="education" aria-describedby="sizing-addon2">
							</div>
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">院&nbsp;&nbsp;&nbsp;&nbsp;系</span>
							<input type="text" class="form-control" id="department" aria-describedby="sizing-addon2">
							</div>
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">专&nbsp;&nbsp;&nbsp;&nbsp;业</span>
							<input type="text" class="form-control" id="major" aria-describedby="sizing-addon2">
							</div>
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">开始时间</span>
							<input type="text" class="form-control" id="starttime"  placeholder="格式：2016-09-01" aria-describedby="sizing-addon2">
							</div>
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">毕业时间</span>
							<input type="text" class="form-control" id="endtime" placeholder="格式：2016-09-01" aria-describedby="sizing-addon2">
							</div>
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        <button type="button" id="educationalsaveChange" class="btn btn-primary" data-dismiss="modal">Save changes</button>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
			<div class="base job_expectation">
				<div class="title">求职期望</div>
				<div class="insert" data-toggle="modal" data-target="#myModal3"><img src="<%=basePath %>/img/insert.png">增加求职期望</div>
				<div class="info row" id="job_expectation">
					<div class="col-md-6"><label>工作地点:</label><span id="info_worklocation">${college.worklocation}</span></div>
					<div class="col-md-6"><label>从事行业：</label><span id="info_industry">${college.industry}</span></div>
					<div class="col-md-6"><label>期望职位:</label><span id="info_position">${college.position}</span></div>
					<div class="col-md-6"><label>期望薪酬：</label><span id="info_salary" >${college.salary}</span></div> 
				</div>
				<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">求职期望</h4>
				      </div>
				      <div class="modal-body">
				        <div class="demo">
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">工作地点</span>
							<input type="text" class="form-control" id="work_loaction" aria-describedby="sizing-addon2">
							</div>
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">从事行业</span>
							<input type="text" class="form-control" id="distury" aria-describedby="sizing-addon2">
							</div>
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">期望职位</span>
							<input type="text" class="form-control" id="position" aria-describedby="sizing-addon2">
							</div>
							<div class="input-group">
							<span class="input-group-addon" id="sizing-addon2">期望薪酬</span>
							<input type="text" class="form-control" id="salary" aria-describedby="sizing-addon2">
							</div>
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        <button type="button" id="saveChangeJob_expection" class="btn btn-primary" data-dismiss="modal">Save changes</button>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
			<div class="base self_evaluation">
				<div class="title">自我评价</div>
				<div class="insert" data-toggle="modal" data-target="#myModal6"><img src="<%=basePath %>/img/insert.png">增加自我评价</div>
				<div class="info row" id="self_evaluation">
					<div class="col-md-12"><label>自我评价:</label><span id="info_self">${college.selfevaluation}</span></div>
				</div>
				<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">自我评价</h4>
				      </div>
				      <div class="modal-body">
				        <form role="form">
							<div class="form-group">
								<label for="name">性格 特长等方面</label>
								<textarea class="form-control" id="self" rows="3"></textarea>
							</div>
						</form>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        <button type="button" id="slef_saveChange" class="btn btn-primary" data-dismiss="modal">Save changes</button>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<span>版权所有：xxxxxxx</span><br /><br/>
		<span>京ICP备xxxxxxx号</span>
	</div>
</body>
		
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
</html>