$(function(){
	
	// 데이터 테이블
	$("#customer_table").dataTable({
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
		            "next": "다음",
		            "previous": "이전"
		        }
		   },
		   
		   dom: 'Blfrtip',
	        buttons: [{
	            extend: 'excel',
	            text: '엑셀 저장',
	            footer: true,
	            className: 'exportBtn'
	        }]
		
	});
	
	
	
	// 고객 테이블 클릭했을떄 고객 정보 창 띄워주는 역할
	$("#customer_table td").click(function(){
        if($("#customer_info_form").css("display")=="none"){
        	$("#customer_info_form").css("display","block");
        }
        else if($("#customer_info_form").css("display")=="block"){
        	$("#customer_info_form").css("display","none");
        }
	});
	
	
	
	// 고객 정보창에서 뒤로돌아가기 눌렀을때 창 꺼주는 역할
	$(".customer_back_img").click(function(){
		$("#customer_info_form").css("display","none");
	});
	
	
	
	
	// 환불실패 주문확인 창 띄워주는 역할
	$("#customer_table tr").click(function(){
		if($("#customer_info_window").css("display")=="none"){
		    $("#customer_info_window").css("display","block");
		}
		else if($("#customer_info_window").css("display")=="block"){
			$("#customer_info_window").css("display","none");
		}
		
	});
	
	
	$(".refund_fail_certain img").click(function(){
		if($("#customer_info_window").css("display")=="none"){
		    $("#customer_info_window").css("display","block");
		}
		else if($("#customer_info_window").css("display")=="block"){
			$("#customer_info_window").css("display","none");
		}
	});
	
});