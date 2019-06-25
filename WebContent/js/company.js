$(function () {
    var collection_btns = $('.info #collection');
    collection_btns.click(function () {
        //获取得到该职位在数据表中的id值
        var jobid = $(this).parent().parent().find('.JobName').attr('id');
        //获取当前的用户的id值
        var userId = $('.collegeId').attr("id");
        console.log(jobid, userId);
        $.ajax({
            url: '../../college/collectionJob',
            type: 'get',
            dataType: 'json',
            data: {jobid: jobid, userId: userId},
            success: function (data) {
                if (data.msg == "success") {
                    alert("收藏成功!");
                } else if (data.msg == "fail") {
                    alert("收藏失败，请重新操作!");
                } else {
                    alert(data.msg);
                }
            }
        });

    })


    //申请职位
    console.log("申请职位");
    var apply_position = $('#apply_position');
    apply_position.click(function () {
        //获取该职位的id值
        var jobid = $(this).parent().parent().find('.JobName').attr('id');
        $.ajax({
            url: '../../college/applyposition',
            type: 'get',
            dataType: 'json',
            data: {jobid: jobid},
            success: function (data) {
                alert(data.msg);
            }
        });
    });
})