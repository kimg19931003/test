/**
 * 
 */

var url = location.href;

$(function(){
	
	setTimeout(function(){
		$("#productDescriptionWrapper > iframe").contents().find('#smart_editor2').data("url",url);
	},200);
	
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
		
		  
		  $("#postImgList").css("height","auto");
		  $("#addPostImgBtn").remove();
		  $(".html_label_div").html("<label for='productImageUploader' class='image_upload_label append_label'><i class='icon icon-black icon-add1'></i></label>");
		  
          var reader = new FileReader(); 
 	      reader.onload = function(){	
 	    	  
 	    	 $(".filereader_image_div").html("<img src='"+reader.result+"' class='filereader_image' />");

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
 
 
 
     
 
 // 게시판 종류 선택할때 자바스크립트
 
 $("#boardName").click(function(){
	 
 
	if($.trim($(".select_box").css("display")) == "none"){
	     $(".select_box").css("display","unset");
	
	}
	else{
		 $(".select_box").css("display","none");

	}
 });
   
 
 $(".select_box li").click(function(){
	var index = $(".select_box li").index(this);
	var val = $(".select_box li").eq(index).text();
	var data = $(".select_box li").eq(index).data("code");
	$("#boardName").data("code",data);
	$("#boardName").val(val);
	
	if($.trim($(".select_box").css("display")) == "none"){
	     $(".select_box").css("display","unset");

	}
	else{
		 $(".select_box").css("display","none");

	}
 });
 
 
 
 $(".title").click(function(){
	alert($.trim($("#productDescriptionWrapper > iframe").contents().find('#se2_iframe').contents().find('.se2_inputarea').html())); 
 });
 
 
 
 
 // 게시판 저장 버튼 눌렀을때
 
 $("#savePost").click(function(){
 
	 
	if($("#postTitle").val() == ""){
		swal("게시판을 선택 해 주세요");
		return;
	}  
    else if(/[^a-zA-z가-힣0-9 ]/g.test($("#postTitle").val())){
		swal("제목에 특수문자는 입력되지 않습니다");
		return;
    }
	else if(/[^a-zA-z가-힣0-9]/g.test($("#postWriter").val())){
		swal("영문, 한글, 숫자 이외에는 허용되지 않습니다");
		return;
	}
	else if(/[^a-zA-z가-힣0-9@.]/g.test($("#postWriterEmail").val())){
		swal("허용되지 않는 문자가 들어있습니다.");
		return;
	}
	else if(!$(".filereader_image_div img").length){
		swal("썸네일 이미지를 선택 해 주세요");
		return;
	}
	else if($.trim($("#productDescriptionWrapper > iframe").contents().find('#se2_iframe').contents().find('.se2_inputarea').html()) == "" ){
		swal("게시판 내용을 입력 해 주세요");
		return;
	}
	
	
	
	var formData = new FormData();
	 for(var f=0; f<newFileList.length; f++){
         formData.append("file"+f, newFileList[f]);
     }  
	
	formData.append("board_name", $.trim($("#boardName").data("code")));
	formData.append("board_title",$.trim($("#postTitle").val()));
	formData.append("board_content",$.trim($("#productDescriptionWrapper > iframe").contents().find('#se2_iframe').contents().find('.se2_inputarea').html()));
	formData.append("board_writer",$.trim($("#postWriter").val()));
	formData.append("board_writer_email",$.trim($("#postWriterEmail").val()));

	
 
	$.ajax({
		url : '/board_add',
		type : 'post',
		data : formData,
		encType : "multipart/form-data", 
		processData: false,
        contentType: false,
        
		success : function(data){
				swal("작성하였습니다");
		},
		
		error : function(){
			
		}
		
	}); 
	
	
 });
 
 
 
 
 
 
 
 
 
 
 // 뒤로가기 버튼
 
 $(".backToDash").click(function(){
	history.back(); 
 });
 
 