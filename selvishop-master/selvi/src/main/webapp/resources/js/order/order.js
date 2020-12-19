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





// 핸드폰. 연락처  번호 입력 할 때에 글자 제한하는 기능

$(document).on("blur",".order_phone1, .order_phone2, .order_phone3, .order_phone_add_1, .order_phone_add_2 , .order_phone_add_3, .order_recipient_phone_1 , .order_recipient_phone_2 , .order_recipient_phone_3, .order_recipient_phone_add_1, .order_recipient_phone_add_2, .order_recipient_phone_add_3 ",function(){
	var clas = $(this).attr("class");
	
	
	// 숫자 외의 값이 입렦됐을때 초기화
	if(!$.trim($("."+clas).val()).match(/[0-9]*/g)){
		$("."+clas).val("");
		return;
	}
	
	
	
    // 숫자 3글자 , 4글자 제한 해주는것
    if(clas == "order_phone2"){
		
		var val = $.trim($("."+clas).val());
	      
		if(val.length > 3){
			$("."+clas).val("");
			$("."+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
    else if(clas == "order_phone3"){
    	
    	var val = $.trim($("."+clas).val());
        
		if(val.length > 3){
			$("."+clas).val("");
			$("."+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
    else if(clas == "order_phone_add_2"){
    	
    	var val = $.trim($("."+clas).val());
        
		if(val.length > 3){
			$("."+clas).val("");
			$("."+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
    else if(clas == "order_phone_add_3"){
    	
    	var val = $.trim($("."+clas).val());
        
		if(val.length > 3){
			$("."+clas).val("");
			$("."+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
    else if(clas == "order_recipient_phone_2"){
		
		var val = $.trim($("."+clas).val());
	      
		if(val.length > 3){
			$("."+clas).val("");
			$("."+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
    else if(clas == "order_recipient_phone_3"){
		
		var val = $.trim($("."+clas).val());
	      
		if(val.length > 3){
			$("."+clas).val("");
			$("."+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
    else if(clas == "order_recipient_phone_add_2"){
    	
    	var val = $.trim($("."+clas).val());
        
		if(val.length > 3){
			$("."+clas).val("");
			$("."+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
    else if(clas == "order_recipient_phone_add_3"){
    	
    	var val = $.trim($("."+clas).val());
        
		if(val.length > 3){
			$("."+clas).val("");
			$("."+clas).val(val.match(/[0-9]{4}/i));
		}
		
	}
	
});








// 결제하기 버튼 눌렀을때
$(".product_pay").click(function(){
	
	
	
	var order_name = $(".order_name").val();
	var order_phone = $(".order_phone1").val()+$(".order_phone2").val()+$(".order_phone3").val();
	var order_phone_add = $(".order_phone_add_1").val()+$(".order_phone_add_2").val()+$(".order_phone_add_3").val();
	var order_email = $(".order_email_id").val()+"@"+$(".order_email").val();
	var order_recipient = $(".order_recipient").val();
	var order_addr = $(".order_addr").val()+$(".order_addr_detail").val();
	

	var order_recipient_phone = $(".order_recipient_phone_1").val()+$(".order_recipient_phone_2").val()+$(".order_recipient_phone_3").val();
	var order_recipient_phone_add = $(".order_recipient_phone_add_1").val()+$(".order_recipient_phone_add_2").val()+$(".order_recipient_phone_add_3").val();
	var order_delivery_message = $(".order_delivery_message").val();
	var order_delivery_message_add = $(".order_delivery_message_add").val();
	
	
	
	if(order_name == ""){
		swal("주문자 이름을 입력해주세요");
		return;
	}
	else if(order_name.length != 3){
		swal("이름은 3글자로 입력해주세요.");
		return;
	}
	else if(/[^가-힣]/gi.test(order_name)){
		swal("주문자 이름은 자음,모음이 합쳐진 한글로만 입력해주세요");
		return;
	}	
	else if(order_phone == ""){
		swal("휴대폰 번호를 입력 해주세요.");
		return;
	}
	else if($(".order_phone1").val().length !=3 && $(".order_phone2").val().length !=4 && $(".order_phone3").val().length !=4){
		swal("휴대폰 번호 숫자 갯수가 맞지 않습니다");
		return;
	}
	else if(order_phone_add == ""){
		swal("연락처를 입력 해 주세요");
		return;
	}
	else if($(".order_phone_add_1").val().length !=3 && $(".order_phone_add_2").val().length !=4 && $(".order_phone_add_3").val().length !=4){
		swal("연락처 번호 숫자 갯수가 맞지 않습니다");
		return;
	}
	else if(/[^0-9]/gi.test(order_phone)){
		swal("휴대폰 번호를 입력 해 주세요.");
		return;
	}
	else if(/[^0-9]/gi.test(order_phone_add)){
		swal("연락처는 숫자만 입력해주세요");
		return;
	}
	else if(order_email == ""){
		swal("이메일을 입력해주세요.");
		return;
	}
	else if(!order_email.match(/[0-9a-zA-Z]*@{1}[a-zA-Z]*\.{1}[com|net|COM|NET]/gi)){
		swal("이메일 형식에 맞지 않습니다");
		return;
	}
	else if(order_recipient == ""){
		swal("받는분 이름을 입력해주세요.");
		return;
	}
	else if(order_recipient.length != 3){
		swal("받는분 이름은 3글자로 입력해주세요.");
		return;
	}
	else if(/[^가-힣]/gi.test(order_recipient)){
		swal("받는분 이름은 한글로만 입력 할 수 있습니다.");
		return;
	}
	else if(order_addr == ""){
		swal("주소를 입력해주세요.");
		return;
	}
	else if($.trim(order_recipient_phone) == ""){
		swal("받는분 휴대폰 번호를 입력 해주세요.");
		return;
	}
	else if($(".order_recipient_phone_1").val().length != 3 && $(".order_recipient_phone_2").val().length != 4 && $(".order_recipient_phone_3").val().length != 4){
		swal("받는분 휴대폰 번호 갯수를 알맞게 적어주세요.");
		return;
	}
	else if($.trim(order_recipient_phone_add) == ""){
		swal("받는분 연락처를 입력 해 주세요");
		return;
	}
	else if($(".order_recipient_phone_add_1").val().length != 3 && $(".order_recipient_phone_add_2").val().length != 4 && $(".order_recipient_phone_add_3").val().length != 4){
		swal("받는분 연락처 번호 갯수를 알맞게 적어주세요.");
		return;
	}
	else if(/[^0-9]/gi.test(order_recipient_phone)){
		swal("받는분 휴대폰 번호는 숫자만 입력해주세요");		
		return;
	}
	else if(/[^0-9]/gi.test(order_recipient_phone_add)){
		swal("받는분 연락처는 숫자만 입력해주세요");
		return;
	}
	else if(/[^가-힣]/gi.test(order_delivery_message_add)){
		swal("추가 배송 메세지는 자음,모음이 합쳐진 한글로만 작성 해 주세요");
		return;
	}

	
	
	
	$.ajax({
		url : "/order_prdt_info_session",
		type : "post",
		data : {order_name:order_name, order_phone:order_phone ,  order_phone_add:order_phone_add, order_email:order_email,
			order_recipient:order_recipient, order_addr:order_addr, order_recipient_phone:order_recipient_phone, order_recipient_phone_add:order_recipient_phone_add,
			order_delivery_message:order_delivery_message, order_delivery_message_add:order_delivery_message_add},
		
		success : function(data){
			
		},
		
		error : function(){
			
		}
		
		
	});
	
	
	
	
	
	$("#btnPay").click();
});



$(".back").click(function(){
	history.back();
});



$(".back_product").click(function(){
	location.href=sessionStorage.getItem("back_product");
});




// 이메일 선택햇을때

$(".order_email_select").change(function(){
	
	
	var val = $(".order_email_select option:selected").val();
	

	if (val != "choise") {

		if (val == "hand") {
			$(".order_email").val("");
			$(".order_email").removeAttr("readonly");
		} else {
			var val = $(this).val();
			$(".order_email").attr("readonly", "readonly");
			$(".order_email").val(val);
		}
	}
});