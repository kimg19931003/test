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
		        "search": "<img src='/resources/img/search.png'/>",
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
	$("#customer_table tr").click(function(){
		
	
			var data = $(this).data("id");
		
	
			
			$.ajax({
				url:"/admin/customer_post",
				type:'post',
				data : {mem_idx_pk : data},
				dataType : "json",
				
				
				success : function(data){
                    var mem_id =   data[0].mem_id;
					var mem_email = data[0].mem_email;
					var mem_name = data[0].mem_name;
					var mem_phone = data[0].mem_phone;
					var mem_join_date = data[0].mem_join_date;
					var mem_last_login = data[0].mem_last_login;
					    
					$(".mem_id").val(mem_id);
					$(".mem_email").val(mem_email);
					$(".mem_name").val(mem_name);
					$(".mem_phone_1").val(mem_phone.substring(0,3));
					$(".mem_phone_2").val(mem_phone.substring(3,7));
					$(".mem_phone_3").val(mem_phone.substring(7,11));
					$(".mem_join_date").val(mem_join_date);
					$(".mem_last_login").val(mem_last_login);
				
					
					if($("#customer_info_form").css("display")=="none"){
			        	$("#customer_info_form").css("display","block");
			        }
			        else if($("#customer_info_form").css("display")=="block"){
			        	$("#customer_info_form").css("display","none");
			        }
					
					
				},
				
				error : function(){
					
				}
				
			});
		
		
        
	});
	
	
	
	// 고객 정보창에서 뒤로돌아가기 눌렀을때 창 꺼주는 역할
	$(".customer_back_img").click(function(){
		$("#customer_info_form").css("display","none");
	});
	
	
	
	
	
	
	
	//주소찾기 눌렀을때 다음 api 띄워줌
	$(".addr_button").click(function(){
		new daum.Postcode({
	        oncomplete: function(data) {
	        	
	        	if(data!=null){
	        		if(data.jibunAddress != ""){
	                    $(".order_addr").val(data.jibunAddress);
	        		}
	        		else if(data.roadAddress != ""){
	        			$(".order_addr").val(data.roadAddress);
	        		}
	        	}
	        }
	    }).open();
	});
	
});







