
// UI 구성  ----------------------------------------------------------------------------------


var pagination_length;

$(function(){
    	
	    
	
    	var num = 5;
        var length = $("#k_reply tr").length;
    	pagination_length = Math.floor(length/num);
    	var pagination_pope = length%num;
    	
    
    	
    	if(length > num){
    		for(var i=num; i<length; i++){		
    			$("#k_reply tr").eq(i).css("display","none");	
    		}
    	}
    	
    	if(pagination_pope != 0){
    		pagination_length = pagination_length + 1;
    	}
    	
    	
    	// tr 에 번호 매기는 곳
    	if(length != 0){
    		
    		var order = 0;
    		
        	for(var i=0; i<pagination_length; i++){
        		
        		if(i != pagination_length-1){
        	        for(var a=0; a<num; a++){		
    			        $("#k_reply tr").eq(order).attr("class","k_reply_tr"+(i+1));
    			        order = order+1;
    		        }
        		}
        		else if(i == pagination_length-1){
        			for(var a=0; a<pagination_pope; a++){		
        				$("#k_reply tr").eq(order).attr("class","k_reply_tr"+(i+1));
        				order = order+1;
    		        }
        		}
        	}
        }
    	
    	
    	// 페이지네이션 처음 번호 구성 
    	if(length != 0){
    		
    		$(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_pre'><</li>");
    		$(".k_reply_pagination_ul").append("<li style='background:#d8d8d8;' class='k_reply_pagination_li temp k_reply_num_1'>1</li>");
    		
    		for(var i=0; i<pagination_length; i++){
    			if(i < 6){
    				 
	
    				if( pagination_length > 2 && i != 0 && i != pagination_length-1){
    					$(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li k_reply_num_"+(i+1)+"'>"+(i+1)+"</li>");
    				}
    		        
    		        
    			}
    		}
    		
    		$(".k_reply_pagination_ul").append("<li class='k_reply_pagination_dot'>···</li><li class='k_reply_pagination_li k_reply_num_"+pagination_length+"'>"+pagination_length+"</li>");
    		$(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_next' style=''>></li>");
    		
    	}
    	
    	
    });








    // 페이지 네이션 기능 ------------------------------------------------------------------------------------------------

    $(document).on("click",".k_reply_pagination_li", function(){
    	
 
    	
    	var index = $(".k_reply_pagination_li").index(this);
    	
    	var num = Number(String($(this).attr("class").match(/k_reply_num_\d*/gi)).replace(/k_reply_num_(\d*)/gi,"$1"));
        
        // 페이지네이션 UI 재구성
        
        if(num >5 && num != pagination_length){// 페이지네이션 중간 부분 표현
           

		    if(num >= pagination_length-4){
        	    pagenation_last();
        	}else{
        	    pagenation_middle(num);
        	}
        
        }
        else if(num <=5 && num != pagination_length){ // 페이지네이션 처음부분 표현
        	
        	pagenation_first();
        	
        	
		    
        }
        else if(num == pagination_length){     // 맨끝번호 눌렀을때 번호 갱신
        	
        	pagenation_last();
		    
		    
        } 
       
		
		
		

		// 누른 페이지네이션 번호 바탕색깔 변화 & 클래스 추가
                   
		$(".k_reply_pagination_li").each(function(i){
        	
        		$(this).css("background","white");
        		$(this).removeClass("temp");
        	
        });
		
		$(".k_reply_num_"+num).addClass("temp");
        $(".k_reply_num_"+num).css("background","#d8d8d8");
		
		
		
		
        // 구매 평들 디스플레이 논, 혹은 보이기
        
        
        $("#k_reply tr").each(function(){
        	 if($(this).attr("class") == "k_reply_tr"+num){
        		 $(this).css("display","");
        	 } 
        	 else{
        		 $(this).css("display","none");
        	 }
        });
        
        
    });
    
    
    
    
    
    

    
    
    //  <, > 눌렀을때 페이지네이션 기능 -----------------------------------------------------------------------
    
    
    
    
    $(document).on("click", ".k_reply_pagination_li_pre, .k_reply_pagination_li_next", function(){
   	 
    	var index;
    	var num;
    	
    	
        if($(this).attr("class")=="k_reply_pagination_li_pre"){
       	 
 
        	// 누를시 번호색깔 진해지게.
            
             var li_length = $(".k_reply_pagination_li").length;
       	 
       	     $(".k_reply_pagination_li").each(function(){
       		     if($(this).attr("class").match(/temp/gi)){
       		    	num = Number(String($(this).attr("class").match(/k_reply_num_\d*/gi)).replace(/k_reply_num_(\d*)/gi,"$1"));
       		        index = $(this).index();


       		        // 페이지네이션 UI 재구성
               
                    if(num >5 && num != pagination_length){// 페이지네이션 중간 부분 표현
            		    if(num >= pagination_length-4){
                    	    pagenation_last_arrow();
                    	}else{
                    	    pagenation_middle_arrow(num, "pre");
                    	}
                    }
                    else if(num <=5 && num != pagination_length){ // 페이지네이션 처음부분 표현 	
                    	pagenation_first_arrow();
                    }
                    else if(num == pagination_length){     // 맨끝번호 눌렀을때 번호 갱신
                    	pagenation_last_arrow();
                    } 
       		        
       		        
    		        if(num != 1){
    		        	
       			        $(".k_reply_num_"+num).css("background","white");
       			        $(".k_reply_num_"+(Number(num)-1)).css("background","#d8d8d8");
       			        $(".k_reply_num_"+num).removeClass("temp");
       			        $(".k_reply_num_"+(Number(num)-1)).addClass("temp");
       			         
    		    	} 
    		        else{
    		        	   		        	
       			        $(".k_reply_num_1").css("background","#d8d8d8");  			        
       			        $(".k_reply_num_1").addClass("temp");
       			        
    		        }
    		        
    		        
       		     } 
       	     });
       	     
       	     
       	     
       	     // 번호해당하는 게시글 제외하고 전부 안보이게
             $("#k_reply tr").each(function(){
            	 
            	 if(num != 1){
           
            	      if($(this).attr("class") == "k_reply_tr"+(Number(num)-1)){
            		      $(this).css("display",""); 
            	      } 
            	      else{
            	 	      $(this).css("display","none");
            	      }
            	 }
            	 
             });
       	 
         }// 다음 버튼 눌럿을때 동작
         else if($(this).attr("class")=="k_reply_pagination_li_next"){
       	 
           
        	
        	 
        	 
        	// 누를시 번호색깔 진해지게.
        	 
        	 
       	     var num_flag = false;
       	     var li_length = $(".k_reply_pagination_li").length;
            
       	     $(".k_reply_pagination_li").each(function(){
       		 
       		      if($(this).attr("class").match(/temp/gi) && num_flag==false){
       		    	  
       		    	   num = Number(String($(this).attr("class").match(/k_reply_num_\d*/gi)).replace(/k_reply_num_(\d*)/gi,"$1"));
       		    	   index = $(this).index();
       		    	  
       		    	// 페이지네이션 UI 재구성
       	             
       	             if(num >5 && num != pagination_length){// 페이지네이션 중간 부분 표현
       	     		    if(num >= pagination_length-4){
       	             	    pagenation_last_arrow();
       	             	 
       	             	}else{
       	             	    pagenation_middle_arrow(num);
       	             	  
       	             	}
       	             }
       	             else if(num <=5 && num != pagination_length){ // 페이지네이션 처음부분 표현 	
       	             	pagenation_first_arrow();
       	            
       	             }
       	             else if(num == pagination_length){     // 맨끝번호 눌렀을때 번호 갱신
       	             	pagenation_last_arrow();
       	             
       	             } 
       		    	   
       		    	   if(num != pagination_length){
       		    	  
	                       
       			           $(".k_reply_num_"+num).css("background","white");
       			           $(".k_reply_num_"+(Number(num)+1)).css("background","#d8d8d8");
       			           $(".k_reply_num_"+num).removeClass("temp");
       			           $(".k_reply_num_"+(Number(num)+1)).addClass("temp");
       			 
       			           num_flag=true;
       		    	   }
       		    	   else{
       		    		   
       		    		   
    			           $(".k_reply_num_"+pagination_length).css("background","#d8d8d8");
    			          
    			           $(".k_reply_num_"+pagination_length).addClass("temp");
    			 
    			           num_flag=true;
    			           
       		    	   }
       		    	   
       		    	   
       		    	   
       		    	   
       		      } 
       		  
       	     });
       	     
       	     
       	  // 번호해당하는 게시글 제외하고 전부 안보이게
          $("#k_reply tr").each(function(){
           
        	  if(num != pagination_length){
        	  
            	    if($(this).attr("class") == "k_reply_tr"+(Number(num)+1)){
            		    $(this).css("display",""); 
            	    } 
            	    else{
                        $(this).css("display","none");
            	    }
        	  }
        	  
          });
     // else if	 
       }
   	
   });
    
    
    
    
    
    
    
    
    // 페이지네이션 눌렀을때 페이지 번호 리프레시 함수
    
    function pagenation_first(){
    	
    	$(".k_reply_pagination_ul").children().remove();
        
        $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_pre'><</li>");
	    $(".k_reply_pagination_ul").append("<li style='background:#d8d8d8;' class='k_reply_pagination_li temp k_reply_num_1'>1</li>");
	
	    for(var i=0; i<pagination_length; i++){
	    	
	    	if(i < 6){
				 
				if( pagination_length > 2 && i != 0 && i != pagination_length-1){
	                $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li k_reply_num_"+(i+1)+"'>"+(i+1)+"</li>");
				}
				
	    	}
			
	    }
	
	    $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_dot'>···</li><li class='k_reply_pagination_li k_reply_num_"+pagination_length+"'>"+pagination_length+"</li>");
	    $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_next' style=''>></li>");
	    
    }
    
    
    
    function pagenation_middle(num){
    	
    	 $(".k_reply_pagination_ul").children().remove();
         
         $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_pre'><</li>");
		    $(".k_reply_pagination_ul").append("<li style='background:#d8d8d8;' class='k_reply_pagination_li temp k_reply_num_1'>1</li><li class='k_reply_pagination_dot'>···</li>");
		
		    for(var i=num-3; i<num+2; i++){
						
		        $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li k_reply_num_"+(i+1)+"'>"+(i+1)+"</li>");
				
		    }
		
		    $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_dot'>···</li><li class='k_reply_pagination_li k_reply_num_"+pagination_length+"'>"+pagination_length+"</li>");
		    $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_next' style=''>></li>");
		    
    }
    
    
    
    function pagenation_last(){
    	
    	$(".k_reply_pagination_ul").children().remove();
        
        $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_pre'><</li>");
	    $(".k_reply_pagination_ul").append("<li style='background:#d8d8d8;' class='k_reply_pagination_li temp k_reply_num_1'>1</li><li class='k_reply_pagination_dot'>···</li>");
	
	    for(var i=pagination_length-6; i<pagination_length; i++){
	    	
				
	                $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li k_reply_num_"+(i+1)+"'>"+(i+1)+"</li>");
				
				
	    }
	
	    
	    $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_next' style=''>></li>");
    
    }
    
    
    
    
    
    // 페이지네이션 <, > 눌렀을때 함수들 -------------------------------------------------------------------------------
    
    
    
    
    
 function pagenation_first_arrow(){
    	
    	$(".k_reply_pagination_ul").children().remove();
        
        $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_pre'><</li>");
	    $(".k_reply_pagination_ul").append("<li style='' class='k_reply_pagination_li k_reply_num_1'>1</li>");
	
	    for(var i=0; i<pagination_length; i++){
	    	
	    	if(i < 6){
				 
				if( pagination_length > 2 && i != 0 && i != pagination_length-1){
	                $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li k_reply_num_"+(i+1)+"'>"+(i+1)+"</li>");
				}
				
	    	}
			
	    }
	
	    $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_dot'>···</li><li class='k_reply_pagination_li k_reply_num_"+pagination_length+"'>"+pagination_length+"</li>");
	    $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_next' style=''>></li>");
	    
    }
    
    
    // 1...45678...end
    function pagenation_middle_arrow(num, clas){
    	
    	
    	 $(".k_reply_pagination_ul").children().remove();
         
         $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_pre'><</li>");
		    $(".k_reply_pagination_ul").append("<li  class='k_reply_pagination_li  k_reply_num_1'>1</li><li class='k_reply_pagination_dot'>···</li>");
		  
		    
		   if(clas!="pre"){ 
		        for(var i=Number(num)-2; i<Number(num)+3; i++){
		            $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li k_reply_num_"+(i+1)+"'>"+(i+1)+"</li>");
		        }
		   }
		   else{
			   for(var i=Number(num)-4; i<Number(num)+1; i++){
		            $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li k_reply_num_"+(i+1)+"'>"+(i+1)+"</li>");
		        }
		   }
		    
		    
		    
		    $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_dot'>···</li><li class='k_reply_pagination_li k_reply_num_"+pagination_length+"'>"+pagination_length+"</li>");
		    $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_next' style=''>></li>");
		    
    }
    
    
    // 7891011...end
    function pagenation_last_arrow(){
    	
    	$(".k_reply_pagination_ul").children().remove();
        
        $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_pre'><</li>");
	    $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li  k_reply_num_1'>1</li><li class='k_reply_pagination_dot'>···</li>");
	
	    for(var i=pagination_length-6; i<pagination_length; i++){
	    	
				
	                $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li k_reply_num_"+(i+1)+"'>"+(i+1)+"</li>");
				
				
	    }
	
	    
	    $(".k_reply_pagination_ul").append("<li class='k_reply_pagination_li_next' style=''>></li>");
    
    }
    
    