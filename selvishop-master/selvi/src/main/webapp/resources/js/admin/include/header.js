/**
 * 
 */


/*$(".login_info").click(function(){

	 
	if($(".drop_login_popup").css("visibility")=="hidden"){
	    $(".drop_login_popup").css("opacity","1").css("visibility","visible");
	 
	   
	}
	else if($(".drop_login_popup").css("visibility")=="visible"){
	    $(".drop_login_popup").css("opacity","0").css("visibility","hidden");
	    
	}
});*/



$(document).on('click','.login_info,.drop_login_popup, html',function(e){

	e.stopPropagation();
	
	
	if($(this).attr("class")=="drop_login_popup"){
		return;
	}
	
	
	if($(this).attr("class")=="login_info" ){
		if($(".drop_login_popup").css("visibility")=="hidden"){
		    $(".drop_login_popup").css("opacity","1").css("visibility","visible");
		}
		else if($(".drop_login_popup").css("visibility")=="visible"){
		    $(".drop_login_popup").css("opacity","0").css("visibility","hidden");
		}
	}
	else{
		$(".drop_login_popup").css("opacity","0").css("visibility","hidden");
	}
});




function getPos()

{

var min = 0;

var max = -210;


//#bar의 left위치를 얻어온다

var barLeft = $("#bar").css("left");

barLeft = parseInt(barLeft);

//    #content의 left의 위치를 구하는 공식

var pos = (barLeft * (max - min))/ 590 + min;

$("#content").css("left",pos);


}





// 메뉴 카테고리란 드래그

$(function(){
	$(".swiper-wrapper").draggable({axis: 'x', containment: 'parent'});
	
	$(".swiper-wrapper").bind("drag", function(event, ui){

		getPos();
	});
});
	




// 로그아웃 버튼 눌렀을때
$(".logout").click(function(){
	$.ajax({
		url : "/admin/logout",
		type : "post",
		data : {},
		
		success : function(data){
			swal("로그아웃 되었습니다.");
			
			setTimeout(function(){
				location.href="/admin/login";
			},1000);
		},
		
		error : function(){
			
		}
	});
});
