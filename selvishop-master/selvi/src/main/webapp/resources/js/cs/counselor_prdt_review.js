

$(function(){
	$("#notice_table").dataTable({
		
		"pagingType" : "full_numbers",
		"dom": '<"title">flrtip',
		 "language": {
		        "emptyTable": "데이터가 없어요.",
		        "searchPlaceholder" : "검색어 입력",
		        "lengthMenu": "_MENU_",
		        "info": "현재 _START_ - _END_ / _TOTAL_건",
		        "infoEmpty": "데이터 없음",
		        "infoFiltered": "( _MAX_건의 데이터에서 필터링됨 )",
		        "search": "<img src='/resources/img/search.png' />",
		        "zeroRecords": "일치하는 데이터가 없어요.",
		        "loadingRecords": "로딩중...",
		        "processing":     "잠시만 기다려 주세요...",
		        "paginate": {
		            "next": ">",
		            "previous": "<",
		            "last" : ">>",
		            "first" : "<<"
		        }

		   }
		   

		
	});
	
	
	
	
	
	
	
	
	$('.prdt_img_slide').bxSlider({
		mode : 'horizontal', // 이미지 교체 방식. fade, horizontal, vertical
		auto : true, // 자동으로 슬라이드
		controls : true, // 좌우 화살표
		autoControls : true, // 시작 중지 버튼
		pager : true, // 페이지 버튼
		pause : 3000,
		autoDelay : 0,
		
		speed : 500, // 다음 이미지로 바뀌는데 걸리는 시간. 단위는 ms. 500ms 기본값
		stopAutoOnclick : true,
		captions : false /// 이미지 위에 텍스트 올리기. img에 title="" 주기
	});
	
	
	
	
	
	$(".bottom_arrow").click(function(){
		var index = $(".bottom_arrow").index(this);
		
		if($(".prdt_slide_div").eq(index).css("display")=="none"){
			$(this).attr("src","/resources/img/shoppingmall/cs/counselor_prdt_review/up_arrow.png");
			$(".prdt_slide_div").eq(index).css("display","block");
	    }
		else{
			$(this).attr("src","/resources/img/shoppingmall/cs/counselor_prdt_review/bottom_arrow.png");
			$(".prdt_slide_div").eq(index).css("display","none");
		}
		
	});
	
	
	
	
	$(".mobile_bottom_arrow_div").click(function(){
		var index = $(".mobile_bottom_arrow_div").index(this);
		
		if($(".prdt_slide_div").eq(index).css("display")=="none"){
			$(".prdt_mobile_img_div").css("display","none");
			$(".mobile_bottom_arrow_text").text("접기");
			$(".s_open_arrow").attr("src","/resources/img/shoppingmall/cs/counselor_prdt_review/s_up_arrow.png");
			$(".bottom_arrow").attr("src","/resources/img/shoppingmall/cs/counselor_prdt_review/up_arrow.png");
			$(".prdt_slide_div").eq(index).css("display","block");
	    }
		else{
			$(".prdt_mobile_img_div").css("display","block");
			$(".mobile_bottom_arrow_text").text("펼치기");
			$(".s_open_arrow").attr("src","/resources/img/shoppingmall/cs/counselor_prdt_review/s_bottom_arrow.png");
			$(".bottom_arrow").attr("src","/resources/img/shoppingmall/cs/counselor_prdt_review/bottom_arrow.png");
			$(".prdt_slide_div").eq(index).css("display","none");
		}
	});
	
	
});



