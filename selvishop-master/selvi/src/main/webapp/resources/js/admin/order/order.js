$(function(){
	
	
	// 제일위 제목 체크박스 누를시 전체 체크된 박스
	$("#order_radio").click(function(){
		
		var chk = $(this).is(":checked");
		sessionStorage.setItem("checked",chk);
		
		if(chk){
			$("input").prop("checked",true);
		}
		else{
			$("input").prop("checked",false);	
		}
	});
	
	
    // 날짜 시간    
    var locale_date =  new Date().toLocaleDateString();
    var locale_time =  new Date().toLocaleTimeString();
	
    
	// 데이터 테이블
	$("#customer_table").dataTable({
		
		"pagingType" : "first_last_numbers",
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
		            "next": "다음",
		            "previous": "이전",
		            "last" : ">>",
		            "first" : "<<"
		        }

		   }
		   
	
		
	});
	
	
	
	// 고객 테이블 클릭했을떄 고객 정보 창 띄워주는 역할
	$("#customer_table tbody tr").click(function(){
		
		
		var data = $(this).data("id");
		
		$(".customer_info_product tbody tr").remove();
		
		$.ajax({
			url:"/admin/order/order_post",
			type:'post',
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			data : {order_idx_pk : data},
			dataType : "json",
			
			
			success : function(data){
				$(".order_buy_time").text(data[0].order_buy_time);
				$(".order_pay_email").text(data[0].order_pay_email);
				
				
				var order_prdt_thumbnail = data[0].order_prdt_thumbnail.split('§');
				var order_prdt_price_arr = data[0].order_prdt_price_arr.split('§');
				var order_prdt_option_name = data[0].order_prdt_option_name.split('§');
				var order_prdt_quantity = data[0].order_prdt_quantity.split('§');
				
				var order_prdt_name = data[0].order_prdt_name;
				var order_prdt_price = data[0].order_prdt_price;
				
				
				for(var i=0; i<order_prdt_price_arr.length; i++){
					if(i>0){
						$(".customer_info_product tbody").append("<tr><td class='customer_info_product_img'><img src='/resources/img/admin/product/"+order_prdt_thumbnail[1]+"' /></td><td class='customer_info_product_name'>"+order_prdt_name+"</td><td class='customer_info_product_code'>"+order_prdt_option_name[i]+"</td><td class='customer_info_product_num'>"+order_prdt_quantity[i]+"개</td><td class='customer_info_product_price'>"+order_prdt_price_arr[i]+"원</td></tr>");
					}
				}
				
				
				
			
			},
			
			error : function(){
				
			}
			
			
		});
		
		
		
		
		
		
		
		
		
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
	
	
	// 달력 데이트 피커
	  var minDate = new Date();
	    var maxDate = new Date();


	$( ".date1" ).datepicker({
		dateFormat: 'yy-mm-dd' ,
	    maxDate : maxDate
	});
	
	$( ".date2" ).datepicker({ 
		dateFormat: 'yy-mm-dd' ,
		dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	
	    maxDate : maxDate
	});
	
	
	// 셀렉트 박스
	$(".state").chosen({rtl: true});
	$(".pay_method").chosen({rtl: true});
	$(".order_date").chosen();
	
	
	// 날짜 입력하는곳에 정해진 기간 선택시 자동 일시 기입
	
	
	
	var year ;
    var month ;
    var day ;
    var start_date;
    var end_date;
    var intercalation;
    
    
	
	// 기간 제한 걸어서 삽입하는 구절  ==========================================
	$(document).on('click','.chosen-container-single li',function(){
		var index = $(".chosen-container-single li").index(this);
		var val = $(".chosen-container-single li").eq(index).text().replace(/[^\d]*/g,"");
		
		
		
		
		
        // 날짜시간 초기화
		year = new Date().getFullYear();
		month = (new Date().getMonth()+1);
		day = new Date().getDate();
		
		
		if(String(month).length==1){
			month = "0"+String(month); 
		}
		  
		if(String(day).length==1){
			day = "0"+String(day);
		}
		
		 end_date = String(year) +"-"+ String(month) +"-"+ String(day);
		
		
		if(year%4==0){
	    	intercalation = true;
	    }
	    else{
	    	intercalation = false;
	    }
		
		
		if(index == 0){
			
		}
		else if(index == 1){
			 day = day-7;
		     
		     if(day<=0){
		    	 month_cal(day);
		     }
		     else{
		    	 
		     }
		     
		}
		else if(index == 2){
			 day = day-14;
			 
			 if(day<=0){
		    	 month_cal(day);
		     }
		     else{
		    	 
		     }
			 
		}
		else if(index == 3){
			 month = month - 1;
			 
			 if(month<=0){
		    	 year_cal(month);
		     }
		     else{
		    	 
		     }
			 
		}
		else if(index == 4){
			 month = month - 3;
			 
			 if(month<=0){
		    	 year_cal(month);
		     }
		     else{
		    	 
		     }
			 
		}
		else if(index == 5){
			 month = month - 6;
			 
			 if(month<=0){
		    	 year_cal(month);
		     }
		     else{
		    	 
		     }
			 
		}
		else if(index == 5){
			return;
		}
		
		
		start_date="";
		

	
		if(String(month).length==1){
			month = "0"+String(month); 
		}
		  
		if(String(day).length==1){
			day = "0"+String(day);
		}
		
		start_date = String(year) +"-"+ String(month) +"-"+ String(day);
		
		$(".date1").val(start_date);
		$(".date2").val(end_date);
		
			
	
	});
	
	
	
	
	// 연 구하는거 =========================================
	function year_cal(val){
		
		year = year -1;
		
	    month = 12+val;
		
	}
	
	

    // 달 날짜 구하는거 ==================================
	function month_cal(val){
		
		month = month -1;
		
		if(month<=0){
			year(month);
			
		}
		else{
			
		
			if(month == 1){
				day = 31+val;
			}
			if(month == 2){
				if(intercalation == true){
					day = 29+val;
				}
				else{
					day = 28 +val;
				}
			}
			if(month == 3){
				day = 31+val;
			}
			if(month == 4){
				day = 30+val;
			}
			if(month == 5){
				day = 31+val;
			}
			if(month == 6){
				day = 30+val;
			}
			if(month == 7){
				day = 31+val;
			}
			if(month == 8){
				day = 31+val;
			}
			if(month == 9){
				day = 30+val;
			}
			if(month == 10){
				day = 31+val;
			}
			if(month == 11){
				day = 30+val;
			}
			if(month == 12){
				day = 31+val;
			}
	    // year 넘어가는 else		
		}
		
	}
	
	
	
	// detail_search 디스플레이 논, 혹은 보이기
	$(".detail_search_button").click(function(){
		if($(".detail_search").css("display")=="none"){
			$(".detail_search").slideDown();
		}
		else if($(".detail_search").css("display")=="block"){
			$(".detail_search").slideUp();
		}
	});


});




// 조건 검색 모아서 db 검색 ====================================================
$(".search_button").click(function(){
	var order_id = $(".order_id").val();
	var product_name = $(".product_name").val();
	var order_person = $(".order_person").val();
	var recipient = $(".recipient").val();
	var deposit_person = $(".deposit_person").val();
	var phone = $(".phone").val();
	var id = $(".id").val();
	var email = $(".email").val();
	var date1 = $(".date1").val();
	var date2 = $(".date2").val();
	
	var state;
	var pay_method;
	
	$(".chosen-choices:nth-child(1) .search-choice").each(function(){
		 state = state +"&"+$(this).text();
	});
	
	$(".chosen-choices:nth-child(2) .search-choice").each(function(){
	     pay_method = pay_method +"&"+$(this).text();
    });
	
	sessionStorage.setItem("order_id",order_id);
	sessionStorage.setItem("product_name",product_name);
	sessionStorage.setItem("order_person",order_person);
	sessionStorage.setItem("recipient",recipient);
	sessionStorage.setItem("deposit_person",deposit_person);
	sessionStorage.setItem("phone",phone);
	sessionStorage.setItem("id",id);
	sessionStorage.setItem("email",email);
	sessionStorage.setItem("date1",date1);
	sessionStorage.setItem("date2",date2);
	sessionStorage.setItem("state",state);
	sessionStorage.setItem("pay_method",pay_method);
	
	
});








// 송장번호 등록 버튼 눌렀을때

$(".invoice_button").click(function(e){
	
	e.stopPropagation();
	
	var data = $(this).data("id");
	var invoice_val = $(this).data("invoicenum");
	var courier_val = $(this).data("courier");
	
	
	$(".invoice_window").data("id",data);
	$(".invoice_num_div").text("현 송장번호 : "+ invoice_val);
	$(".courier_div").text("현 택배사 : "+ courier_val);
	
	if($(".invoice_window").css("display")=="none"){
		$(".invoice_window").css("display","unset");
    }
	else{
		$(".invoice_window").css("display","none");
	}
	
});


$(".courier").click(function(){
	
	if($(".invoice_ul").css("display")=="none"){
		$(".invoice_ul").css("display","unset");
    }
	else{
		$(".invoice_ul").css("display","none");
	}
	
});



//택배사 선택했을때

$(".invoice_ul li").click(function(){
	
	var index = $(".invoice_ul li").index(this);
	var data = $(".invoice_ul li").eq(index).data("code");
	
	$(".courier").val($(".invoice_ul li").eq(index).text());
	$(".courier").data("code", data);
	
	
	if($(".invoice_ul").css("display")=="none"){
		$(".invoice_ul").css("display","unset");
    }
	else{
		$(".invoice_ul").css("display","none");
	}
	
});


// 택배사선택창에서 닫기버튼 클릭했을때
$(".invoice_close").click(function(){
	
	if($(".invoice_window").css("display")=="none"){
		$(".invoice_window").css("display","unset");
    }
	else{
		$(".invoice_window").css("display","none");
	}
	
});


// 택배 송장번호 저장버튼 눌렀을때

$(".invoice_save").click(function(){
	
	var invoice_num = $.trim($(".invoice_num").val());
	var courier = $.trim($(".courier").data("code"));
	var idx = $.trim($(".invoice_window").data("id"));
	
	$.ajax({
		url : "/admin/order/invoice",
		type : "post",
		data : {invoice_num:invoice_num, courier:courier, idx:idx },
		dataType : "json",
		
		
		success : function(data){
			$(".invoice_num_div").text("현 송장번호 : "+data.order_invoice_num);
			$(".courier_div").text("현 택배사 : "+data.order_courier);
		},
		
		error : function(){
			
		}
		
	});
});






// 엑셀 다운로드 버튼 눌렀을때
//클릭시 테이블 정보 엑셀 다운로드하게 해주는 기능
$(".excelExportButton").click(function(){
	
	var date = new Date();
	
	var filename = String(date.getFullYear()) + String(date.getHours()) + String(date.getMinutes()) + String(date.getSeconds());
	
	$("#customer_table").table2excel({
        name: "Worksheet Name",
        filename: "주문정보_"+filename,
        fileext: ".xls"
    });
	
});



