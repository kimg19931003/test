

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
	
	
	
	
	
	$(".review_reg_button").click(function(){
		
		
		
		var textarea_val = $.trim($(".review_textarea").val());
	    
		if(id_empty){
			alert("로그인이 되어있지 않습니다. 로그인해주세요.");
			location.href="/member_login";
			return;
		}
		
		alert(id_empty);
		
		if(textarea_val.length < 100){
			
		}
		else{
			swal("100자 이하로 입력해주세요");			
		}
		
		$.ajax({
			url : "/cs/event_review_post",
			type : "post",
			data  : {val : textarea_val, review_user_id : user_id },
			
			success : function(data){
				swal("등록되었습니다");
			},
			
			error : function(){
				
			}
		
			
		});
	});
	

});



