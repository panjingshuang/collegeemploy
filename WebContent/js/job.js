$(function(){

	//使用事件委托实现添加元素之后的删除动作
	var hasSelected = $('.hasSelected');
	hasSelected.delegate('span','click',function(){
			$(this).parent().remove();
	});
	//所属行业的样式的增加
	var lis = $('.Industry li');
	// lis.mouseover(function(){
	// 	lis.eq(0).css({'cursor':'default'});
	// 	if(lis.eq(0).html()==$(this).html()){
			
	// 		lis.eq(1).addClass('active').siblings().removeClass('active');

	// 	}else{
	// 		$(this).addClass('active').siblings().removeClass('active');
	// 	}
	// });

	//点击所属行业中的元素之后添加到已选行业中
	lis.click(function(){
		var content = $(this).html();
		if(content=='全部'){
			return false;
		}else{
			var str = content+'<span class="glyphicon glyphicon-remove"></span>';
		
			var li = $('<li>'+str+'</li>');
			var hasSelectedlis = $('.hasSelected li');

			for(var i=0 ;i<hasSelectedlis.length;i++){
				if(hasSelectedlis.eq(i).html()==str){
					return false;
				}
			}
			
			li.appendTo($('.hasSelected'));
		}
		
	})
	

	var paginationlis  =$('.pagination li');
	
	//获取职业列表的总个数
	
	//将设置页数
	//默认情况是将所有的数据显示 但是主页只显示5个
	//当点击页数的时候 ，显示数据相应的信息
	


	

})