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

})