

$(function(){
	
	
	$(".hosi_option_default").data("score" , "5");
	
	
	// 별점 누를시 옵션 띄워주는 기능
	$(".hosi_setting").click(function(){
		
		if($(".hosi_option_div").css("display") == "none"){
			$(".hosi_option_div").css("display","block");
		}
		else{
			$(".hosi_option_div").css("display","none");
		}
	});
	
	
	$(".hosi_option").click(function(){
		var index = $(".hosi_option").index(this);
	
		var val = $(".hosi_option").eq(index).html();
		
		$(".hosi_option_default").data("score" , (index+1));
		$(".hosi_option_default").children().remove();
		$(".hosi_option_default").html(val);
		
		
	});
	
	
	
	
	// 대표이미지 파일 미리보기 기능
	 var newFileList = new Array();

	 $("#productImageUploader").on("change", function(){
		
		  var file    = $("#productImageUploader")[0].files;
		  var file_length = $("#productImageUploader")[0].files.length;
		  
		  //newFileList = Array.from($("#productImageUploader")[0].files);
		 
		  for(var i=0; i<$("#productImageUploader")[0].files.length; i++){
			  newFileList[newFileList.length] = $("#productImageUploader")[0].files[i];
		  }
		

		  
		  var file_all_size=0;
		  
		  function readAndPreview(file) {
			
	          var reader = new FileReader(); 
	 	      reader.onload = function(){	
	 	    	  
	 	    	  
	 	    	 if($("#productImageUploader")[0].files.length <5 ){ 
	 	    	  	$("#addProductImgBtn, #addProductImgBtn_mobile").append("<div class='product_img'><img class='product_img_child' src='"+reader.result+"'/><img src='/resources/img/cross.png' class='product_img_cross' /></div>");
	 	    	 }
	 	    	 else{
	 	    		swal("이미지는 4개이상 추가할수 없습니다.");
	 	    	 }
	 	    	 
	 	    	 
	 	      }
		   
		      if (file) {
			    reader.readAsDataURL(file);
			  }
		  }

		      if (file) {
		    	
		         for(var i=0; i<file_length; i++){	  
		    	    if($("#productImageUploader")[0].files[i].name.match(/.*\.jpg|.*\.jpeg|.*\.png|.*\.gif/i)){  
		    		  
		    	    }
		    	    else{
		    	    	alert("이미지 형식에 맞지않은 파일이 들어가있습니다. png, jpg, jpeg, gif 파일만 올려주십시오.");
		    	    	return;
		    	    }
		         } 
			        [].forEach.call(file, readAndPreview);
			  }
		      

	 });
	 
	 
	 
	 // 미리보기 이미지 클로즈 이미지 누르면 사라지게
	 
	 $(document).on("click",".product_img_cross",function(){
	    var index = $(".product_img_cross").index(this);
	    
	    var arr;

	    $(".product_img").eq(index).remove();
	    
	    
	    newFileList.splice(index,1);

	    for(var i=0; i<newFileList.length; i++){
	        arr = arr + " & " +newFileList[i].name;
	    }

	 });
	 
	 
	 
	 
	 
	 
	 

		// 취소버튼 눌렀을때

	$(".prdt_review_cancel").click(function() {
		history.back();
	});

	$(".prdt_review_reg").click(function() {

		var board_id = user_id;
	
		var board_title = "문의사항 : 상품리뷰 글쓰기용 타이틀";
		var board_content = $.trim($(".notice_content").val());
	    var board_star_score = $(".hosi_option_default").data("score");


	
	
		
		if(id_empty){
			alert("로그인이 되어있지 않습니다. 로그인해주세요.");
			location.href="/member/login";
			return;
		}
		
		
		

		if (board_content.length < 300) {

		} else {
			swal("내용은 300자 이하로 입력해주세요");
			return;
		}

	
	    if (board_content.length < 10) {
			swal("내용은 10글자 이상 적어주세요.");
			return;
		} else if (/[^0-9a-zA-Z가-힣ㄱ-ㅎ ]/gi.test(board_content)) {
			swal("내용에 특수문자는 허용되지 않습니다.");
			return;
		} 

		
		
	      var formData = new FormData();
	      
	      
	      for(var f=0; f<newFileList.length; f++){
	          formData.append("file"+f, newFileList[f]);
	      }  
	      
	     
	      
	      formData.append("board_id",board_id);
		  formData.append("board_title",board_title);
		  formData.append("board_content",board_content);
		  formData.append("board_star_score",board_star_score);
		
		
		
		$.ajax({
			url : "/cs/counselor_prdt_review_write_post",
			type : "post",
			data : formData,
			encType : "multipart/form-data", 
			processData: false,
	        contentType: false,
	          
			success : function(data) {
				swal("등록되었습니다");
			},

			error : function() {
				swal("등록실패하였습니다.");
			}

		});
	});
	 
	
	

});



