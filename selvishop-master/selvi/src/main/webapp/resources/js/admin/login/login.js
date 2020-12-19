
$(".login_entry").click(function(){
	
	var mem_id = $.trim($("#admin_id").val());
	var mem_pass = $.trim($("#admin_pass").val());
	
	$.ajax({
		url : "/admin/login/post",
		type : "post",
		data : {mem_id : mem_id , mem_pass : mem_pass},
		
		success : function(data){
			if($.trim(data) == "success"){
				location.href="/admin/home";
			}
			else{
				swal("아이디나 비밀번호를 확인해주세요");
			}
		},
		
		error : function(){
			
		}
	});
	
	
	
});





// 비밀번호 인풋에서 엔터 눌렀을때

$("#admin_pass").on("keydown",function(e){
	if(e.keyCode == 13){
		
		var mem_id = $.trim($("#admin_id").val());
		var mem_pass = $.trim($("#admin_pass").val());
		
		$.ajax({
			url : "/admin/login/post",
			type : "post",
			data : {mem_id : mem_id , mem_pass : mem_pass},
			
			success : function(data){
				if($.trim(data) == "success"){
					location.href="/admin/home";
				}
				else{
					swal("아이디나 비밀번호를 확인해주세요");
				}
			},
			
			error : function(){
				
			}
		});
		
	} 
});


