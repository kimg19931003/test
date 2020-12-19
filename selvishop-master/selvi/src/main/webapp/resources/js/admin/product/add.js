 
// 상품코드 중복인지 아닌지 확인 하는 변수

var sku_duplicate;



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
 	    	  
 	    	 $("#addProductImgBtn").append("<div class='product_img'><img class='product_img_child' src='"+reader.result+"'/><img src='/resources/img/cross.png' class='product_img_cross' /></div>");

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
 
 
 
 
 // 옵션 값 칠때에 태그 만들어주는 기능
 
 $(document).on('keydown','.option_val_2',function(e){
	 var index = $(".option_val_2").index(this);
	 var ex_flag = false;
	 
	 if($(this).val()!="" && e.keyCode==13){
		 
		 if($(".option_val_1").eq(index).val() == ""){
			 swal("옵션 제목을 입력해주세요.");
			 return;
		 }
		 
		 
		 $(".option_val_div:nth-child("+(index+1)+") .option_tag_word").each(function(){

	         if($(this).text() == $(".option_val_2").eq(index).val() ){
	        	 swal("같은 값은 입력 할 수 없습니다.");
	        	 ex_flag=true;
	        	 return;
	         } 
	            
		 });
		 
		 if(ex_flag==true){
			 return;
		 }
	
		 
		 
		 
		 if(index==0){
			$(".option_tag").eq(index).append("<div class='option_tag_val background_red'><div class='option_tag_word'>"+$(this).val()+"</div><div class='option_tag_close'><img src='/resources/img/cross.png' /></div></div>");
		 	$(".option_detail_table tbody").append("<tr><td><input type='checkbox' checked='checked' /></td><td><input type='text' class='add_option_name color_red' value='"+$(this).val()+"' readonly /></td><td><input type='text' class='add_option_product_code'  /></td><td><input type='text' class='add_option_price'  value='0'/></td><td><input type='text' class='add_option_product_price' value='0' readonly/></td><td><input type='text' class='add_option_product_num'  /></td><td class='add_option_close'><img src='/resources/img/cross.png' /></td></tr>");
		 }
		 else if(index==1){
			 $(".option_tag").eq(index).append("<div class='option_tag_val background_blue'><div class='option_tag_word'>"+$(this).val()+"</div><div class='option_tag_close'><img src='/resources/img/cross.png' /></div></div>");
			 $(".option_detail_table tbody").append("<tr><td><input type='checkbox' checked='checked'/></td><td><input type='text' class='add_option_name color_blue' value='"+$(this).val()+"' readonly /></td><td><input type='text' class='add_option_product_code'  /></td><td><input type='text' class='add_option_price'  value='0'/></td><td><input type='text' class='add_option_product_price' value='0' readonly/></td><td><input type='text' class='add_option_product_num'  /></td><td class='add_option_close'><img src='/resources/img/cross.png' /></td></tr>");
		 }
		 else if(index==2){
			 $(".option_tag").eq(index).append("<div class='option_tag_val background_green'><div class='option_tag_word'>"+$(this).val()+"</div><div class='option_tag_close'><img src='/resources/img/cross.png' /></div></div>");
			 $(".option_detail_table tbody").append("<tr><td><input type='checkbox' checked='checked' /></td><td><input type='text' class='add_option_name color_green' value='"+$(this).val()+"' readonly /></td><td><input type='text' class='add_option_product_code'  /></td><td><input type='text' class='add_option_price'  value='0'/></td><td><input type='text' class='add_option_product_price' value='0' readonly/></td><td><input type='text' class='add_option_product_num'  /></td><td class='add_option_close'><img src='/resources/img/cross.png' /></td></tr>");
		 }
		 
		 
		 $(".option_val_2").val("");
		 
		 
		 
	 }
 });
 
 
 // 옵션 값 칠때에 태그 엑스표시누르면 사라지게 해주는 기능
 
 $(document).on('click','.option_tag_close',function(){
	  var index = $(".option_tag_close").index(this);
	  
	  $(".add_option_name").each(function(){
		  if($(this).val() == $(".option_tag_word").eq(index).text()){
			  $(this).parents("tr").remove();
		  } 
	  });
	  
	  
	  
	  $(".option_tag_val").eq(index).remove();
 });
 
 
 // 옵션 추가하기 버튼 누르면 옵션 칸 늘려주는 기능
 
 $(document).on('click','.option_add_button',function(){
	 
	 if($(".option_val_div").length <= 2){
	      $(".option_val_layer").append("<div class='option_val_div'><div class='option_val_1_div'><input type='text' class='option_val_1' /></div><div class='option_val_2_div' style='left:4px;'><div class='option_tag'></div><input type='text' placeholder='예시)xl, 파랑' class='option_val_2' /></div><div class='option_close'><img src='/resources/img/cross.png' /></div></div>");
	      
	      if($(".option_val_div").length==3){
	    	  $(".option_add_button").css("display","none");
	      }
	      
     }
     else{
    	
    	 
     }
 });
 
 // 늘어칸 옵션 입력칸 엑스표시 누르면 사라지게 해주는 기능
 
 $(document).on('click','.option_close',function(){
	  var index = $(".option_close").index(this);

	  $(".option_val_div").eq(index+1).remove();
	  
	  if($(".option_val_div").length != 3){
		  $(".option_add_button").css("display","unset");
	  }
	  
});
 
 
 
// 태그 추가로 추가된 옵션칸 엑스표시 누르면 사라지게 해주는 기능
 
 $(document).on('click','.add_option_close',function(){
	  var index = $(".add_option_close").index(this);

	  
	  // 추가된 옵션값 지울때  상단 옵션칸 태그옵션도 지우는 기능
	  if($(".add_option_name").eq(index).attr("class").match("color_red")){
		  
		  $(".option_val_div:nth-child(1) .option_tag_word").each(function(){
			  var val = $(".add_option_name").eq(index).val();

			  if($(this).text() == val){
				  $(this).parents(".option_tag_val").remove();
			  } 
		  });
	  }
	  else if($(".add_option_name").eq(index).attr("class").match("blue")){
		  
		  $(".option_val_div:nth-child(2) .option_tag_word").each(function(){
			  var val = $(".add_option_name").eq(index).val();

			  if($(this).text() == val){
				  $(this).parents(".option_tag_val").remove();
			  } 
		  });
		  
	  }
	  else if($(".add_option_name").eq(index).attr("class").match("green")){
		  
		  $(".option_val_div:nth-child(3) .option_tag_word").each(function(){
			  var val = $(".add_option_name").eq(index).val();

			  if($(this).text() == val){
				  $(this).parents(".option_tag_val").remove();
			  } 
		  });
		  
	  }
	  
	  
	  $(".option_detail_table tbody tr").eq(index).remove();
	  
});
 
 
 
 // 추가금액 입력하고 포커스 뗏을때
 
 $(document).on('blur','.add_option_price',function(){
	 var index = $(".add_option_price").index(this);
	 var val = $(".add_option_price").val();
	 
	 if(!val.match(/[^0-9]/g)){
	     $(".add_option_product_price").eq(index).val(val);
	 }
	 else{
		 $(".add_option_price").val("");
		 alert("추가금액은 숫자만 적어주십시오");
	 }
		 
	 
 });
 
 
 
 //저장버튼 눌렀을때
 
 $(document).on('click','.option_save',function(){
	  
	 var add_option_price = $(".add_option_price").val();
	 
	 
	 
	 // 옵션 추가금액 바르게 적었는지 아닌지 확인
	 $(".add_option_price").each(function(){
		if($(this).val().match(/[^0-9]/g)){
			$(this).val("");
			swal("추가금액은 숫자만 적어주십시오.");
			return;
		} 
		
	 });
	 
	 
	 // 옵션 제목 적었는지 안적었는지 확인
	 $(".option_val_1").each(function(){
		 if($(this).val()==""){
			 swal("옵션 제목을 입력해 주세요");
		 }
	 });
	 
	 
	 // 옵션리스트 초기화
	 
	 $(".option_list").remove();
	 
	 
	 // 저장버튼 누르고나서 추가된 옵션 붙혀넣는 기능
	 var length = $(".option_detail_table tbody tr").length;
	 
	 for(var i=0; i<length; i++){
		 
		 if($(".option_detail_table input[type='checkbox']").eq(i).prop("checked")==true){
			 
			 $(".text").remove();
			 
			 var val = $(".add_option_name").eq(i).val();
			 var add_price = $(".add_option_price").eq(i).val();
		 
			 if($(".option_detail_table tbody tr td:nth-child(2) input[type='text']").attr("class").match("color_red")){
			     $("#displayOptionList").append("<div class='option_list option_1'><div><span class='prdt_option1_name'>"+val+"</span>(+<span class='prdt_option_add_price_1'>"+add_price+"</span>원)</div></div>");
			 }
			 else  if($(".option_detail_table tbody tr td:nth-child(2) input[type='text']").attr("class").match("color_blue")){
				 $("#displayOptionList").append("<div class='option_list option_2'><div><span class='prdt_option2_name'>"+val+"</span>(+<span class='prdt_option_add_price_2'>"+add_price+"</span>원)</div></div>"); 
			 }
			 else  if($(".option_detail_table tbody tr td:nth-child(2) input[type='text']").attr("class").match("color_green")){
				 $("#displayOptionList").append("<div class='option_list option_3'><div><span class='prdt_option3_name'>"+val+"</span>(+<span class='prdt_option_add_price_3'>"+add_price+"</span>원)</div></div>"); 
			 }
			 
		 }
		 
	 }
	 
	 $(".option_add_blind").css("display","none");
	 
	 
	 
 });
 
 
 // 취소버튼 눌렀을때
 
 $(".option_cancel").click(function(){
	 $(".option_add_blind").css("display","none");
 });
 
 
 
 // 옵션 추가버튼 눌렀을때
 
 $("#setProductOption").click(function(){
	 $(".option_add_blind").css("display","unset");
 });
 
 

 // 상태 체크박스들 3개중 하나 선택하면 두개는 체크 풀리도록 설정 기능
 
 $(".state input[type='checkbox']").click(function(){
	 
	 var index = $(".state input[type='checkbox']").index(this);
	 
	  $(".state input[type='checkbox']").each(function(i){
		  
		  if(i == index){
			  $(this).prop("checked", true);	   
		  }
		  else{
			  $(this).prop("checked", false);
		  }
	  });
 });
 
 
 
 // 카테리고 입력 - 추가 기능
 
 $("#btn_addShopCategory").on("click",function(){
	 
	 if($("#newShopCategoryName").val()!=""){
		 $("#noShopCategory").remove();
		 
		 var val = $("#newShopCategoryName").val();
		 var length = $(".categoryDiv").length;

		 $.ajax({
				url : "/product_category_add",
				type : "post",
				data : {category_name : val},
				
				success : function(data){
					 $("#shopCategoryList").append("<div class='category categoryDiv'><div class='checkbox'><input type='checkbox' name='paytype' id='checkbox"+(length+1)+"'><label for='checkbox"+(length+1)+"' class='trans-fast'>"+val+"</label></div><div class='icons'><img class='edit_icon' src='/resources/img/pen_icon.png' /></div><div class='input_div'></div></div>");
				},
				
				error : function(){
					 swal("카테고리 등록해 실패했습니다.");
				}
		});
		 
		
	 }
	 else{
		 swal("카테고리를 입력해 주십시오");
	 }
 });
 
  $(document).on("keydown","#btn_addShopCategory",function(e){
	 if(e.keyCode==13){
		 if($("#newShopCategoryName").val()!=""){
		 	$("#noShopCategory").remove();
		   
		 	var val = $("#newShopCategoryName").val();
		 	var length = $(".categoryDiv").length;
		 
		 	$("#shopCategoryList").append("<div class='category categoryDiv'><div class='checkbox'><input type='checkbox' name='paytype' id='checkbox"+(length+1)+"'><label for='checkbox"+(length+1)+"' class='trans-fast'>"+val+"</label></div><div class='icons'><img class='edit_icon' src='/resources/img/pen_icon.png' /></div><div class='input_div'></div></div>");
		 }
	 }
 });
 
 
 // 카테고리 에디트 버튼 눌렀을시 기능
 $(document).on("click",".edit_icon",function(){
	 $("#noShopCategory").remove();
	 
	 var index = $(".edit_icon").index(this);
	 var val = $.trim($("#shopCategoryList .trans-fast").eq(index).text());
	 
	 
	 
	 $("#shopCategoryList label.trans-fast").eq(index).css("display","none");
	 $("#shopCategoryList .categoryDiv .input_div").eq(index).html("<input data-index='"+(index+1)+"' class='edit_input' type='text' value='"+val+"'/>"); 
 });
 
 
 
 // 카테고리 에디트 눌러서 나온 input 창에서 값 입력했을때
 $(document).on("keydown",".edit_input",function(e){
	 
     if(e.keyCode==13){

    	 var index = $(this).data("index");
    	 
    	 var val =  $("#shopCategoryList .categoryDiv:nth-child("+(index)+") .edit_input").val();
    	 
    	 
    	
    	 
    	 $.ajax({
				url : "/product_category_modify",
				type : "post",
				data : {category_name : val, index : index},
				
				success : function(data){
					$("#shopCategoryList .categoryDiv:nth-child("+(index)+") label.trans-fast").css("display","inherit");
			    	$("#shopCategoryList .categoryDiv:nth-child("+(index)+") .edit_input").remove();
			    	$("#shopCategoryList .categoryDiv:nth-child("+(index)+") label.trans-fast").text(val);
				},
				
				error : function(){
					 swal("카테고리 등록해 실패했습니다.");
				}
		  });
    	 
     }
 });
 
 
 // 글쓰기 눌렀을때 총체적으로 상품정보 저장시켜주는 기능

 $("#saveShopProduct").click(function(e){
	 
	  e.preventDefault();
	 
	  var reg_name = /[가-힣]/g;
	  var reg_product_code = /[a-zA-z0-9]/g;
	  var reg_product_price = /[0-9]/g;
	  var reg_product_sale_price = /[0-9]/g;
	  var reg_product_repre_img = /[^가-힣]/g;
	  var reg_product_comment = /[가-힣a-zA-Z0-9]/g;
	  var reg_product_quantity = /[0-9]/g;
	  
	  var prdt_name = $.trim($("#shopProductName").val());
	  var prdt_code = $.trim($("#shopProductSKU").val());
	  var prdt_price = $.trim($("#shopProductPrice").val());
	  var prdt_sale_price = $.trim($("#shopProductDiscountPrice").val());
	  var prdt_thumbnail = "";
	  var prdt_option1_name = "";
	  var prdt_option2_name = "";
      var prdt_option3_name = "";
      var prdt_option_add_price_1 = "";
      var prdt_option_add_price_2 = "";
      var prdt_option_add_price_3 = "";
	  var prdt_comment = $.trim($("#shopProductCaption").val());
	  
	  if($("#unlimit").prop("checked") == false){
	      var prdt_quantity = $.trim($("#productQuantity").val());
	  }
	  else{
		  var prdt_quantity = "수량 미설정";
	  }
	      
	  var prdt_content = $.trim($("#productDescriptionWrapper > iframe").contents().find('#se2_iframe').contents().find('.se2_inputarea').html());
	  var prdt_state;
	  var prdt_category_large ="";
	  
	
	  
	  
	  if($("#shopProductName").val() == ""){
		  swal("상품이름을 적어주세요");
		  return; 
	  }
	  else if($("#shopProductSKU").val() == ""){
		  swal("상품 코드를 입력해주세요");
		  return;
	  }
	  else if(/[^0-9a-zA-Z]/g.test($("#shopProductSKU").val())){
		  swal("상품코드는 영문,숫자만 입력해주세요 ");
		  return;
	  }
	  else if(sku_duplicate == false){
		  swal("중복된 상품코드를 입력하셨습니다.");
		  return;
	  }
	  else if($("#shopProductPrice").val() == ""){
		  swal("상품 가격을 입력해주세요");
		  return;
	  }
	  else if(!reg_product_price.test($("#shopProductPrice").val())){
		  swal("상품 가격은 숫자만 입력 할 수 있습니다.");
		  return;
	  }
	  else if($("#shopProductDiscountPrice").val() == ""){
		  swal("상품 할인가격을 입력해주세요.");
		  return;
	  }
	  else if(!reg_product_price.test($("#shopProductDiscountPrice").val())){
		  swal("상품 할인 가격은 숫자만 입력 할 수 있습니다.");
		  return;
	  }
	  else if( Number($("#shopProductPrice").val()) <= Number($("#shopProductDiscountPrice").val()) ){
		  swal("할인가격은 정가보다 같거나 클 수 없습니다.");
		  return;
	  }
	  else if($("#shopProductCaption").val() == ""){
		  swal("요약설명을 입력해주세요");
		  return;
	  }
	  else if($("#productQuantity").val() == "" && $("#unlimit").prop("checked") == false){
		  swal("수량을 입력해주세요");
		  return;
	  }
	  else if(!$(".product_img").length){
		  swal("대표이미지를 선정해주세요.");
		  return;
	  }
	  else if(!$(".option_list").length){
		  swal("상품 옵션을 선택해주세요");
		  return;
	  }
	  else if(!$(".categoryDiv").length){
		  swal("상품 카테고리를 선택해주세요");
		  return;
	  }
	  else if($(".se2_inputarea").val()==""){
		  swal("상품에대한 상세설명을 적어주세요");
		  return;
	  }
	  

	  
	  
	  
	 // 옵션 3개 분류로 나누는 작업
	 $(".option_1").each(function(i){
         var option_val = $(".option_1:nth-child("+(i+1)+") .prdt_option1_name").text();   
         var option_add_val = $(".option_1:nth-child("+(i+1)+") .prdt_option_add_price_1").text();   
         
         prdt_option1_name = prdt_option1_name + "§" + option_val;
         prdt_option_add_price_1 = prdt_option_add_price_1 + "§" + option_add_val;
	 });
	 
	 $(".option_2").each(function(i){
         var option_val = $(".option_2:nth-child("+(i+1)+") .prdt_option2_name").text();   
         var option_add_val = $(".option_2:nth-child("+(i+1)+") .prdt_option_add_price_2").text();   
         
         prdt_option2_name = prdt_option2_name + "§" + option_val;
         prdt_option_add_price_2 = prdt_option_add_price_2 + "§" + option_add_val;
	 });
	 
	 $(".option_3").each(function(i){
         var option_val = $(".option_3:nth-child("+(i+1)+") .prdt_option3_name").text();   
         var option_add_val = $(".option_3:nth-child("+(i+1)+") .prdt_option_add_price_3").text();   
         
         prdt_option3_name = prdt_option3_name + "§" + option_val;
         prdt_option_add_price_3 = prdt_option_add_price_3 + "§" + option_add_val;
	 });
	  
	  
	  
	  // 상품상태 판정
	  $(".state input[type='checkbox']").each(function(){
		  if($(this).prop("checked")){
			  if($(this).attr("id")=="selling"){
				  prdt_state = "판매중";
			  }
			  else if($(this).attr("id")=="selling"){
				  prdt_state = "판매중지";
			  }
			  else if($(this).attr("id")=="soldOut_selling"){
				  prdt_state = "품절";
			  }
		  }
		  
	  });
	  
	  
	  
	  // 카테고리 값
	  
	  $("#shopCategoryList .trans-fast").each(function(i){
		  
		  if($("#checkbox"+i).prop("checked") == true){
		     prdt_category_large =  prdt_category_large + "§" + $.trim($(this).text());
		  }
	  });
	  
	  
	  

	  
	  //이미지도 같이 전송할수있는 폼 데이터
	  

      var formData = new FormData();
      
      
      for(var f=0; f<newFileList.length; f++){
          formData.append("file"+f, newFileList[f]);
      }  
      
     
      
      formData.append("prdt_name",prdt_name);
	  formData.append("prdt_code ",prdt_code );
	  formData.append("prdt_price",prdt_price);
	  formData.append("prdt_sale_price",prdt_sale_price);
	  formData.append("prdt_thumbnail",prdt_thumbnail);
	  formData.append("prdt_option1_name",prdt_option1_name);
	  formData.append("prdt_option2_name",prdt_option2_name);
	  formData.append("prdt_option3_name",prdt_option3_name);
	  formData.append("prdt_comment",prdt_comment);
	  formData.append("prdt_quantity",prdt_quantity);
	  formData.append("prdt_content",prdt_content);
	  formData.append("prdt_state",prdt_state);
	  formData.append("prdt_category_large",prdt_category_large);
	  formData.append("prdt_option_add_price_1",prdt_option_add_price_1);
	  formData.append("prdt_option_add_price_2",prdt_option_add_price_2);
	  formData.append("prdt_option_add_price_3",prdt_option_add_price_3);
      
      
   
      
     
	      
	  
	  
      // 서버로 post 값 보냄
	  
	  $.ajax({
		  url : "/admin_product_add",
		  type : "post",
		  data : formData,
		  encType : "multipart/form-data", 
		  processData: false,
          contentType: false,
          
		  success : function(data){
			  swal("저장되었습니다");
			  
		  },
		  
		  error : function(err){
			  swal(err);
		  }
		  
		  
	  });
	  
	  

 });
 
 
 
 
 
 
 
 
 
 // 상품코드 중복검사
 
 $("#shopProductSKU").on("blur",function(){
	var val = $(this).val();
	
	
	$.ajax({
		  url : "/product_sku_duplicate",
		  type : "post",
		  data : {prdt_code : val},
		 
	
        
		  success : function(data){
			  if($.trim(data)=="success"){
				  $(".sku_duplicate").text("사용할수있는 상품코드입니다.");
				  sku_duplicate = true;
			  }
			  else{
				  $(".sku_duplicate").text("이미 존재하는 코드입니다.");
				  sku_duplicate = false;
			  }
			  
		  },
		  
		  error : function(err){
			  swal(err);
		  }
		  
		  
	  });
	
 });
 
 
 
 //뒤로가기 버튼
 $(".backToDash").click(function(){
	 history.back();
 });