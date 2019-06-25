$(function () {
    var spans = $('.apply_main .title span');
    //点击标题的时候 将将下边框点亮
    spans.click(function () {
        $(this).css({'border-bottom': '3px solid green'}).siblings().css({'border-bottom': '3px solid #ccc'});
    });
})