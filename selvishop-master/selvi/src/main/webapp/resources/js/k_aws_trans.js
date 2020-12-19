//이미지 파일 미리보기 기능
$("#k_reply_file").on("change", function(){
	
	  
	  var cnt = 1;
	  var file = $("#k_reply_file")[0].files;
	  var file_length = $("#k_reply_file")[0].files.length;
	  
	$(".k_reply_image_view").children().remove();
	  
	
	 
	  
	  function readAndPreview(file) {
		
         var reader = new FileReader(); 
	      reader.onload = function(){		 
	    	  
	    	
		      $(".k_reply_image_view").append("<span class='image_view' style='padding-top:20px;display: inline-block;'><img src='"+reader.result+"' style='width:100px;'/><div style='font-size:15px; overflow:hidden;  text-overflow: ellipsis; display:block; white-space:nowrap;  text-align:center;height:20px;width: 100px;'>"+file.name+"</div></span>");
	    
		      
		     $(".k_reply_file").text("업로드 중입니다...");
		     
		   if(cnt==file_length)$(".k_reply_file").text("이미지 등록");   
		     cnt = cnt+1;  
	       }
	   
	       if (file) {
		     reader.readAsDataURL(file);
		   }    
	   }
	       if (file) {
	    	   
	    	   if(file_length >4){
	    		   alert("올릴 수 있는 이미지 최대 갯수는 4장 입니다.");
	    		   return 0;
	    	   }
	    	  
	    	   for(var i=0; i<file_length; i++){	  
		    	    if($("#k_reply_file")[0].files[i].name.match(/.*\.jpg|.*\.png|.*\.gif/i)){  
		    		  
		    	    }
		    	    else{
		    	    	alert("이미지 형식에 맞지않은 파일이 들어가있습니다. jpg, png, gif 파일만 올려주십시오.");
		    	    	return;
		    	    }
		       }  
		       [].forEach.call(file, readAndPreview);
		   }
	      
	     
	 
});
   
    
    

    $(document).on("click",".k_subtitle",function(){

        if($(".k_reply_word").css("display")=="none"){
            $(".k_reply_word").css("display", "block");
        }
        else if($(".k_reply_word").css("display")=="block"){
            $(".k_reply_word").css("display", "none");
        }
    });
    
    
    
    
    
    // aws 설정 ---------------------------------------------------------------------------------------------------------------------------;
    
    
    AWS.config.update({

        accessKeyId: 'AKIAIESKBDT6DUDOG44A',
        secretAccessKey: '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'

    });

    AWS.config.region = 'ap-northeast-2';

    
    
    var product_image_form_flag = false;
    var temp = 0;
    var image_length;
    var video_length;
    
        $(".k_reply_but").click(function(){
        	
        	
        	if(product_image_form_flag == false){
            	product_image_form_flag = true;
        	
        	    // 이미지, 영상 이름과 파일 길이
        	    var image_name = $("#k_reply_file")[0].files[0].name;
        	    var video_name = $("#k_reply_file")[0].files[0].name;
        	    image_length = $("#k_reply_file")[0].files.length;
        	    video_length = $("#k_reply_file")[0].files.length;
        	
        	    var image_name_arr;
        	    var video_name_arr;
        	
        	    var k_reply_ta_ta = $(".k_reply_ta_ta").val();
        	
                // 이미지 이름 배열	
                if(image_length ==1){
        	       for(var i=0; i<image_length; i++){
        	 	      image_name_arr = image_name_arr +"&"+ $("#k_reply_file")[0].files[i].name;
        	       }
                }else{
        	       for(var i=1; i<image_length; i++){
          		      image_name_arr = image_name_arr +"&"+ $("#k_reply_file")[0].files[i].name;
          	       }
                }
            
            
                $.ajax({
        		    type:"post",
        		    url : "review_upload",
        		    data : {review_text:k_reply_ta_ta, image_name_arr:image_name_arr, image_name:image_name},
        		
        		    success : function(data){
        			
        			
        			    var bucket = new AWS.S3({ params: { Bucket: 'supersell-selvi' } });
        		        var file_image = document.getElementById('k_reply_file');
        		      
        		        
        		        
        		        // 이미지 아마존 s3에 실제 파일 업로드  
                        
          		        for(var l=0;l<image_length; l++){  
          		       
          		            var file_i = file_image.files[l];
          		           
          		            var params_i = {
          		                    Key: "selvishop_product_review_image/"+file_i.name,
          		                    ContentDisposition : 'attachment',
          		                    Body: file_i,
          		                    ACL: 'public-read' // 접근 권한
          		            };
          		            bucket.putObject(params_i, function (err, data) {
          		           
                                temp = temp + 1;
                                if(temp == image_length)alert("이미지 업로드 완료");
          		            });
          		        
          		          
          		        
          		        } 
        		        
        	       }
        		 //ajax   
        		});    
            // flag     
             }
        //submit  	
        });
     