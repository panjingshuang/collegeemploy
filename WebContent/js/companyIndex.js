$(function () {


    //标题内容切换 初始状态的时候
    // 1.获取class为bgc所在的元素的id值
    var bgc_id = $('.bgc').attr('id');
    // 3.将class名为id的display设置为block即可
    $('.' + bgc_id).css({'display': 'block'}).siblings().css({'display': 'none'});

    //设置标题的背景色
    var SelectTitle = $('#SelectTitle li');
    SelectTitle.click(function () {
        $(this).addClass('bgc').siblings().removeClass('bgc');
        var title_id = $(this).attr('id');
        // 3.将class名为id的display设置为block即可
        $('.' + title_id).css({'display': 'block'}).siblings().css({'display': 'none'});
        //使用ajax来数据请求
        var status;
        if (title_id == "one") {
            status = 1;
        } else if (title_id == "two") {
            status = 2;
        } else if (title_id == "three") {
            status = 3;
        } else if (title_id == "four") {
            status = 4;
        } else if (title_id == "five") {
            status = 5;
        } else if (title_id == "six") {
            status = 8;
        } else if (title_id == "seven") {
            status = 7; //不合格
        }

        $.ajax({
            url: 'applycollection/status',
            type: 'get',
            dataType: 'json',
            data: {status: status},
            success: function (data) {
                $('.' + title_id).html("");
                //动态的将后端传递过来的数据生成元素

                var main = "";
                for (var i = 0; i < data.content.length; i++) {
                    main = main + "<li><span class='collegeid' id='" + data.content[i].myCollege.id + "'>" + data.content[i].myCollege.name + "</span><span>" +
                        data.content[i].myCollege.birth + "</span><span>" +
                        data.content[i].myCollege.phone + "</span><span  class='jobid' id='" + data.content[i].id + "'>" +
                        data.content[i].jobName + "</span>";
                    if (status == 1) {
                        main = main + "<button type='button' class='btn btn-success bresumeQualified'>简历合格</button>" +
                            "<button type='button' class='btn btn-danger bunqualified'>不合适</button></li>";
                    } else if (status == 2) {
                        main = main + "<button type='button' class='btn btn-success binterview'>邀约面试</button>" +
                            "<button type='button' class='btn btn-danger bunqualified'>不合适</button></li>";
                    } else if (status == 3) {
                        main = main + "<button type='button' class='btn btn-success binterviewQualified'>面试合格</button>" +
                            "<button type='button' class='btn btn-danger bunqualified'>不合适</button>";
                    } else if (status == 4) {
                        main = main + "<button type='button' class='btn btn-success bgetoffer'  >录用</button>" +
                            "<button type='button' class='btn btn-danger bunqualified'>不合适</button></li>";
                    } else if (status == 5) {
                        main = main + "<span>待录用....</span></li>";
                    } else if (status == 8) {
                        main = main + "<span>已录用</span></li>";
                    } else if (status == 7) {
                        mmain = main + "<span>不合适</span></li>";
                    }
                }


                $('.' + title_id).append(main);


            }
        });
    });


    var one_ul = $('.one');
    //当点击列表的时候的事件
    one_ul.delegate('li', 'click', function () {
        var collegeid = $(this).find('.collegeid').attr('id');
        //将获取到的数据返回给后端，来并返回申请人的数据 只需要查询申请人的信息即可
        $.ajax({
            url: 'getcollege',
            type: 'get',
            dataType: 'json',
            data: {collegeid: collegeid},
            success: function (data) {
                //数据替换
                $('#info_name').html(data.college.name);
                $('#info_sex').html(data.college.sex);
                $('#info_birth').html(data.college.birth);
                $('#info_email').html(data.college.email);
                $('#info_phone').html(data.college.phone);
                $('#info_nation').html(data.college.nation);
                $('#info_hometown').html(data.college.hometown);
                $('#info_worklocation').html(data.college.worklocation);
                $('#info_industry').html(data.college.industry);
                $('#info_position').html(data.college.position);
                $('#info_salary').html(data.college.salary);
                $('#info_self').html(data.college.selfevaluation);


            }
        });


    });
    var ul = $('.context ul');
    //在待申请的数据点击不合适按钮的时候的事件
    ul.delegate('.bunqualified', 'click', function () {
        var myli = $(this).parent();
        var collegeid = $(this).parent().find('.collegeid').attr('id');
        var jobid = $(this).parent().find('.jobid').attr('id');
        //点击不合格的时候将当前的id值和用户名返回即可，然后在后端将用户的状态修改成7
        //将获取到的数据返回给后端，来并返回申请人的数据 只需要查询申请人的信息即可
        $.ajax({
            url: 'updateStatus',
            type: 'get',
            dataType: 'json',
            data: {collegeid: collegeid, jobid: jobid, status: 7},
            success: function (data) {
                console.log(data);
                if (data.msg == "success") {
                    //成功就将当前的li移除到不合格的状态中
                    myli.fadeOut();
                } else {
                    //如果不合适 可出现一个警告框使用bootstrap即可

                }
            }
        });

        event.stopPropagation();
    })
    //简历合格的按钮事件
    one_ul.delegate('.bresumeQualified', 'click', function () {
        var myli = $(this).parent();
        var collegeid = $(this).parent().find('.collegeid').attr('id');
        var jobid = $(this).parent().find('.jobid').attr('id');
        //点击不合格的时候将当前的id值和用户名返回即可，然后在后端将用户的状态修改成7
        //将获取到的数据返回给后端，来并返回申请人的数据 只需要查询申请人的信息即可
        $.ajax({
            url: 'updateStatus',
            type: 'get',
            dataType: 'json',
            data: {collegeid: collegeid, jobid: jobid, status: 2},
            success: function (data) {
                console.log(data);
                if (data.msg == "success") {
                    //成功就将当前的li移除到不合格的状态中
                    myli.fadeOut();

                } else {
                    //如果不合适 可出现一个警告框使用bootstrap即可

                }
            }
        });
        event.stopPropagation();
    });

    //邀约面试的按钮事件

    ul.delegate('.binterview', 'click', function () {
        var myli = $(this).parent();
        var collegeid = $(this).parent().find('.collegeid').attr('id');
        var jobid = $(this).parent().find('.jobid').attr('id');
        //点击不合格的时候将当前的id值和用户名返回即可，然后在后端将用户的状态修改成7
        //将获取到的数据返回给后端，来并返回申请人的数据 只需要查询申请人的信息即可
        $.ajax({
            url: 'updateStatus',
            type: 'get',
            dataType: 'json',
            data: {collegeid: collegeid, jobid: jobid, status: 3},
            success: function (data) {
                console.log(data);
                if (data.msg == "success") {
                    //成功就将当前的li移除到不合格的状态中
                    myli.fadeOut();

                } else {
                    //如果不合适 可出现一个警告框使用bootstrap即可

                }
            }
        });
        event.stopPropagation();
    });
    //面试合格
    ul.delegate('.binterviewQualified', 'click', function () {
        var myli = $(this).parent();
        var collegeid = $(this).parent().find('.collegeid').attr('id');
        var jobid = $(this).parent().find('.jobid').attr('id');
        //点击不合格的时候将当前的id值和用户名返回即可，然后在后端将用户的状态修改成7
        //将获取到的数据返回给后端，来并返回申请人的数据 只需要查询申请人的信息即可
        $.ajax({
            url: 'updateStatus',
            type: 'get',
            dataType: 'json',
            data: {collegeid: collegeid, jobid: jobid, status: 4},
            success: function (data) {
                console.log(data);
                if (data.msg == "success") {
                    //成功就将当前的li移除到不合格的状态中
                    myli.fadeOut();

                } else {
                    //如果不合适 可出现一个警告框使用bootstrap即可

                }
            }
        });
        event.stopPropagation();
    });
    //录用
    ul.delegate('.bgetoffer', 'click', function () {
        var myli = $(this).parent();
        var collegeid = $(this).parent().find('.collegeid').attr('id');
        var jobid = $(this).parent().find('.jobid').attr('id');
        //点击不合格的时候将当前的id值和用户名返回即可，然后在后端将用户的状态修改成7
        //将获取到的数据返回给后端，来并返回申请人的数据 只需要查询申请人的信息即可
        $.ajax({
            url: 'updateStatus',
            type: 'get',
            dataType: 'json',
            data: {collegeid: collegeid, jobid: jobid, status: 5},
            success: function (data) {
                console.log(data);
                if (data.msg == "success") {
                    //成功就将当前的li移除到不合格的状态中
                    myli.fadeOut();

                } else {
                    //如果不合适 可出现一个警告框使用bootstrap即可

                }
            }
        });
        event.stopPropagation();
    });
    


})