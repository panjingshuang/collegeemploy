$(function () {
	
    //获取active所在元素的id值
    var active_id = $('.active').attr('id');
    //将Class为该id值的元素获取到，并显示数据 其他的同级数据不显示
    $('.' + active_id).css({'display': 'block'}).siblings().css({'display': 'none'});
    var collegeid = $('.personinfo').attr('id');
    var spans = $('.apply_main .title span');
    //点击标题的时候 将将下边框点亮
    spans.click(function () {
        $(this).addClass('active').siblings().removeClass('active');
        var id = $(this).attr('id');
        $('.' + id).css({'display': 'block'}).siblings().css({'display': 'none'});
        //点击标题的时候改变列表中的数据
        var title_id = $(this).attr('id');//获取当前点击的标题的id值
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
            status = 6;
        } else if (title_id == "seven") {
            status = 7; //不合格
        } else if (title_id == "eight") {
            status = 8; //不合格
        }
        $.ajax({
            url: 'applycollection/status',
            type: 'post',
            dataType: 'json',
            data: {status: status},
            success: function (data) {
                $('.' + id).html("");
                //动态的将后端传递过来的数据生成元素
                if (data.msg == "fail") {
                   $('.warning').css({'display':'block'});

                } else {
                    var main = "";
                    for (var i = 0; i < data.content.length; i++) {
                        main = main + "<li><span class='JobName' id='" + data.content[i].id + "'>" + data.content[i].jobName + "</span><span class='location'>" +
                            data.content[i].areaCodeName + "|" + data.content[i].salary + "</span><span class='companyName'>" + data.content[i].myEnterpriseInfo.shotName + "</span><span class='type'>" +
                            data.content[i].myEnterpriseInfo.type + "</span>";

                        if (status == 1) {
                            main = main + "<span class='status'>申请中...</span></li>";
                        } else if (status == 2) {
                            main = main + "<span class='status'>简历合格</span></li>";
                        } else if (status == 3) {
                            main = main + "<span class='status'>面试中...</span></li>";
                        } else if (status == 4) {
                            main = main + "<span class='status'>面试合格</span></li>";
                        } else if (status == 5) {
                            main = main + "<span class='status'>待录用...</span></li>";
                        } else if (status == 6) {
                            main = main + "<button  type='button'  class='btn btn-success agree'>同意</button>" +
                                "<button type='button'  class='btn btn-danger reject '>拒绝</button></li>";
                        } else if (status == 7) {
                            main = main + "<span class='status'>不合适</span></li>";
                        }
                        else if (status == 8) {
                            main = main + "<span class='status'>已同意</span></li>";
                        }
                    }


                    $('.' + id).append(main);
                }

            }
        });
    });

    //企业点击录取之后进行同意之后就已录用
    var six_ul = $('.six');
    six_ul.delegate('.agree', 'click', function () {
        var myli = $(this).parent();
        var agree = $(this);
        var jobid = myli.find('.JobName').attr('id');
        $.ajax({
            url: '../enterprise/updateStatus',
            type: 'post',
            dataType: 'json',
            data: {collegeid: collegeid, jobid: jobid, status: 8},
            success: function (data) {
                if (data.msg == "success") {
                    //修改成功就将BOTTON删除btn的样式将添加一个
                    myli.remove();
                } else {
                    //如果不合适 可出现一个警告框使用bootstrap即可

                }
            }
        })
    });
    six_ul.delegate('.reject', 'click', function () {
        var myli = $(this).parent();
        var agree = $(this);
        var jobid = myli.find('.JobName').attr('id');
        $.ajax({
            url: '../enterprise/updateStatus',
            type: 'post',
            dataType: 'json',
            data: {collegeid: collegeid, jobid: jobid, status:7},
            success: function (data) {
                if (data.msg == "success") {
                    //修改成功就将BOTTON删除btn的样式将添加一个
                    myli.remove()
                } else {
                    //如果不合适 可出现一个警告框使用bootstrap即可

                }
            }
        })
    });
  //当尚未点击的标签的时候，判断当前的全部已申请的数据是否存在
	var one_ul = $('.one');
    $.ajax({
    	 url: 'applycollection/status',
            type: 'post',
            dataType: 'json',
            data: {status: 1},
            success:function(data){
            	console.log("demo");
            	 if (data.msg == "fail") {
            		  $('.warning').css({'display':'block'});
                 } else {   
                	 $('.warning').css({'display':'none'});
                	  var main = "";
                      for (var i = 0; i < data.content.length; i++) {
                          main = main + "<li><span class='JobName' id='" + data.content[i].id + "'>" + data.content[i].jobName + "</span><span class='location'>" +
                              data.content[i].areaCodeName + "|" + data.content[i].salary + "</span><span class='companyName'>" + data.content[i].myEnterpriseInfo.shotName + "</span><span class='type'>" +
                              data.content[i].myEnterpriseInfo.type + "</span>"+ "<span class='status'>申请中...</span></li>";
                      }
                      $('.one').append(main);
                 }
            }
    });
	



})