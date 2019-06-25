$(function () {
    var spans = $('.collection_title span');
    var box = $('.collection_main .box');
    box.mouseover(function () {
        $(this).find('.del').css({'display': 'block'});
    })
    box.mouseout(function () {
        $(this).find('.del').css({'display': 'none'});
    })
    //删除元素remove() $(this).attr("id")

    //点击标题的时候出现收藏的数据
    var del = $('.del')
    del.click(function () {
        //将获取到的id传递给后端之后,使用ajax 等到到后端返回成功数据之后 在成功的函数中将当前要删除的div元素删除
        var id = $('.collection_main .title').attr("id");
        console.log(id);
        //ajax传递数据
        $.ajax({
            url: 'delcollection',
            type: 'get',
            dataType: 'json',
            data: {id: id},
            success: function (data) {
            }
        });

        //删除元素
        $(this).parent().remove();
    })


    spans.click(function () {
        $(this).css({'border-bottom': '3px solid green'}).siblings().css({'border-bottom': '3px solid #ccc'});
        var title = $(this).html();
        // if(title==='我收藏的公司'){
        // 	//从后端获取根据session中的Id值获取该Id值对应的用户的收藏的公司数据
        // 	//.empty()删除div中的数据
        // 	console.log("公司");

        // }else{
        // 	//从后端获取id值所对应的用户的收藏的职位数据
        // 	console.log("zhiwei");
        // }
    })
})