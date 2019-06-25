$(function () {
    var info_email = $('#info_email');
    var info_baseinfo = $('#info_baseinfo');
    var info_school = $('#info_school');
    var info_educational = $('#info_educational');
    var job_expectation = $('#job_expectation');
    var info_worklocation = $('#info_worklocation');
    var self_evaluation = $('#self_evaluation');
    var info_self = $('#info_self');
    //j基本信息的处理
    if (info_email.html() == '') {
        info_baseinfo.css({'display': 'none'});
    } else {
        info_baseinfo.prev().remove();
    }
    //教育经历
    if (info_school.html() == '') {
        info_educational.css({'display': 'none'});
    } else {
        info_educational.prev().remove();
    }
    //求职期望

    if (info_worklocation.html() == '') {
        job_expectation.css({'display': 'none'});
    } else {
        job_expectation.prev().remove();
    }
    //自我评价：
    if (info_self.html() == '') {
        self_evaluation.css({'display': 'none'});
    } else {
        self_evaluation.prev().remove();
    }


    //通过获取到的phone值来查询数据
    var info_phone = $('#info_phone').val();

    //当点击基本信息的保存的时候将文本框中的数据全都获取到
    $('#savebaseInfo').click(function () {
        var age = $('#age').val();
        var email = $('#email').val();
        var hometown = $('#hometown').val();
        var nation = $('#nation').val();

        $.ajax({
            url: 'updatebaseinfo',
            type: 'get',
            dataType: 'json',
            data: {"email": email, "hometown": hometown, "nation": nation}
        })
            .done(function (data) {
                console.log(data);
                console.log("success");
            })
            .fail(function () {
                $('#info_email').html(email);
                $('#info_phone').html(info_phone);
                $('#info_nation').html(hometown);
                $('#info_hometown').html(nation);
                info_baseinfo.prev().remove();
                info_baseinfo.css({'display': 'block'});
                console.log("fail");
            })
    });


    //当点击教育信息的时候相数据库中添加数据并将数据显示在页面上
    $('#educationalsaveChange').click(function () {
        var school = $("#school").val();
        var education = $("#education").val();
        var department = $("#department").val();
        var major = $("#major").val();
        var starttime = $("#starttime").val();
        var endtime = $("#endtime").val();

        $.ajax({
            url: 'updateeducational',
            type: 'get',
            dataType: 'json',
            data: {
                "school": school,
                "education": education,
                "department": department,
                "major": major,
                "starttime": starttime,
                "endtime": endtime
            }
        })
            .done(function (data) {
                console.log("success");
            })
            .fail(function () {
                $('#info_school').html(school);
                $('#info_education').html(education);
                $('#info_department').html(department);
                $('#info_marjor').html(major);
                $('#info_starttime').html(starttime);
                $('#info_endtime').html(endtime);
                info_educational.prev().remove();
                info_educational.css({'display': 'block'});
                console.log("fail");
            })
    });

    //当点击求职期望的时候 将求职期望相关的数据加入到数据库中显示在页面上
    $('#saveChangeJob_expection').click(function () {
        var work_loaction = $("#work_loaction").val();
        var distury = $("#distury").val();
        var position = $("#position").val();
        var salary = $("#salary").val();

        $.ajax({
            url: 'updatejob_expectation',
            type: 'get',
            dataType: 'json',
            data: {"work_loaction": work_loaction, "distury": distury, "position": position, "salary": salary}
        })
            .done(function (data) {
                console.log("success");
            })
            .fail(function () {
                $('#info_worklocation').html(work_loaction);
                $('#info_industry').html(distury);
                $('#info_position').html(position);
                $('#info_salary').html(salary);
                job_expectation.prev().remove();
                job_expectation.css({'display': 'block'});

                console.log("fail");
            })
    });

    //将输入的自我评价传递提交给数据库
    $('#slef_saveChange').click(function () {
        console.log("slef_saveChange")
        var self = $("#self").val();
        $.ajax({
            url: 'updateself_evaluation',
            type: 'get',
            dataType: 'json',
            data: {"self": self}
        })
            .done(function (data) {
                console.log("success");
            })
            .fail(function () {
                $('#info_self').html(self);
                self_evaluation.prev().remove();
                self_evaluation.css({'display': 'block'});
                console.log("fail");
            })
    });


})
