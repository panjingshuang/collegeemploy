<<<<<<< HEAD
$(function () {
    var flag = 0;
    var collection = $('#collection');
    collection.click(function () {
        if (flag == 0) {
            collection.css({'color': 'red'});
            flag = 1;
        } else {
            collection.css({'color': 'black'});
            flag = 0;
        }


    })
    //申请职位
    console.log("申请职位");
    var apply_position = $('#apply_position');
    apply_position.click(function () {
        //获取该职位的id值
        var jobid = $(this).parent().find('.JobName').attr('id');
        console.log(jobid);
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
=======
$(function(){
	var flag = 0;
	var collection = $('#collection');
	collection.click(function(){
		if(flag==0){
			collection.css({'color':'red'});
			flag = 1;
		}else{
			collection.css({'color':'black'});
			flag=0;
		}
		
		
	})

>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
})