
$(function(){
	
	
	
	$(".top_bar_img img").click(function(){
		history.back();
	});
	
	$(".top_bar_home img").click(function(){
		location.href="/";
	});
	
});





$(".delivery_state").click(function(){
	
	var index = $(".delivery_state").index(this);
   
	
	$.ajax({
		type:'get',
		url : 'https://apis.tracker.delivery/carriers/kr.cjlogistics/tracks/622344515213',
		data : 1,
		dataType : 'JSON',
		
		success : function(data){		
		    var length = Object.keys(data.progresses).length;
			for(var i=0; i<length; i++ ){
				$(".delivery_info table tbody").eq(index).append("<tr><td>"+data.progresses[i].time.substring(0,10)+"</td><td>"+data.progresses[i].status.text+"</td><td>"+data.progresses[i].location.name+"</td><td>"+data.progresses[i].description+"</td></tr>");
			}
			
			
			if($(".delivery_info").eq(index).css("display")=="none"){
			    $(".delivery_info").eq(index).slideDown();
			}
			else if($(".delivery_info").eq(index).css("display")=="block"){
				$(".delivery_info").eq(index).slideUp();
			}
		},
		
		error : function(){
			
		}
	});
	
	
	

	
});