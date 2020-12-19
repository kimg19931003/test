











$(function(){
	
	var length = $(".thumbnail_img_view").length;
	
	if(length <5){
		$(".thumbnail_img_view_div").css("width",length*76);
	}
	
	
	sessionStorage.setItem("back_product", location.href);
	
	
});



$(".share").click(function(){
	$("#product_sns").css("display","block");
});



$(".close").click(function(){
	$("#product_sns").css("display","none");
});



$(".introduce_button").click(function(){
	if($(".product_introduce_img").css("display")=="none" ){
		$(".review_button").css("border-bottom","0");
		$(".introduce_button").css("border-bottom","2px solid #ff0072");
		$(".product_review_list").css("display","none");
	    $(".product_introduce_img").css("display","block");
	}
	else if($(".product_introduce_img").css("display")=="block"){
		$(".product_introduce_img").css("display","none");
	}
});


$(".review_button").click(function(){

	if($(".product_review_list").css("display")=="none"){
		$(".introduce_button").css("border-bottom","0");
		$(".review_button").css("border-bottom","2px solid #ff0072");
		$(".product_introduce_img").css("display","none");
	    $(".product_review_list").css("display","block");
	}
	else if($(".product_review_list").css("display")=="block"){
		$(".product_review_list").css("display","none");
	}
});


$(".back_button").click(function(){
    history.back();	
});






// 상품 금액 계산 ====================================================

$(document).on('click','.plus_div, .minus_div',function(){
	
	var index = $(this).parents("faketag").data("id");
	sessionStorage.setItem("index", index);

	var option_num = Number($(".product_num").eq(index).val());
	sessionStorage.setItem("option_num", option_num);
	
	if($(this).attr("class")=="plus_div"){
		
		if(option_num >=0){
			option_num = option_num+1;
			$(".product_num").eq(index).val(option_num);
		
		}
		
	}  
	else if($(this).attr("class")=="minus_div"){
				
		if(option_num >= 1){
			option_num = option_num-1;
			$(".product_num").eq(index).val(option_num);
			
		}
	}
	
	sessionStorage.setItem("option_total_price_arr", JSON.stringify(option_total_price_arr));
	
	
	
	// 옵션 전체값 구하는 기능
  
    option_total_num_arr[index] = option_num;
	var option_total_price = 0;
	for(z=0; z<option_total_price_arr.length; z++){
		option_total_price = option_total_price + Number(String(option_total_price_arr[z]).replace(/[^0-9]/g,""))*option_total_num_arr[z];
	}
	
	
	
	$(".total_price_val").text(option_total_price+"원");
	
});




//옵션 최상단 선택 했을때 일어나는 기능 =================================================

$(document).on('click','.option1, .option2, .option3',function(){
	
	var clas = String($(this).attr("class").match(/option\d*/g));
	
	
	if(clas=="option1"){
		
		if($(this).css("position")=="relative"){
	        $(this).css("position","absolute").css("top","0px").css("left","7px").css("z-index","99");
	        $(".option1_scroll").css("display","unset");
		}
		else if($(this).css("position")=="absolute"){
			$(this).css("position","relative").css("top","unset").css("left","unset").css("z-index","unset");
			$(".option1_scroll").css("display","none");
		}
	}
	else if(clas=="option2"){
		
		if($(this).css("position")=="relative"){
	        $(this).css("position","absolute").css("top","0px").css("left","7px").css("z-index","99");
	        $(".option2_scroll").css("display","unset");
		}
		else if($(this).css("position")=="absolute"){
			$(this).css("position","relative").css("top","unset").css("left","unset").css("z-index","unset");
			$(".option2_scroll").css("display","none");
		}
	}
	else if(clas=="option3"){
		
		if($(this).css("position")=="relative"){
	        $(this).css("position","absolute").css("top","0px").css("left","7px").css("z-index","99");
	        $(".option3_scroll").css("display","unset");
		}
		else if($(this).css("position")=="absolute"){
			$(this).css("position","relative").css("top","unset").css("left","unset").css("z-index","unset");
			$(".option3_scroll").css("display","none");
		}
	}
});







// 옵션 서브 선택했을때 일어나는 기능 ===========================================================

$(document).on('click','.option1_scroll > div, .option2_scroll > div, .option3_scroll > div',function(){
	
	var index = $(this).index();
	var parent_id = $(this).parents("faketag").attr("id");
	var option_val = "";
	
	var parent_index = parent_id.replace(/[^0-9]/g,"");
	
	if(parent_index == 1){
	    option_val = arr_option_1[index-1].prdt_name1_option;	
	}
	else if(parent_index == 2){
		option_val = arr_option_2[index-1].prdt_name2_option;	
	}
	else if(parent_index == 3){
		option_val = arr_option_3[index-1].prdt_name3_option;
	}


	$("."+parent_id).addClass("select");
	$("."+parent_id+"_scroll div").eq(index-1).addClass("select");
	$("."+parent_id+"_scroll").css("display","none");
	$("."+parent_id).css("position","relative").css("top","unset").css("left","unset").css("z-index","unset");
	$("."+parent_id).text(option_val);
	
	
	var select_length = $("faketag > div.select").length;
	
	if(select_length==option_length){
		$(".opt_num").removeClass("select");
		var length = $(".option_space_child").length;
		
		
		// 옵션 칸수 갯수에따라 메뉴 붙이는거 차별화
		var option1_val="";
		var option2_val="";
		var option3_val="";
		
		var option1_add_price_val;
		var option2_add_price_val;
		var option3_add_price_val;		
		
	    
		
		
		
		
		$(".opt_num").each(function(i){
			
			if(i==0 && arr_option_1 !=null && arr_option_1 !=""){
				$(".option1_scroll  >div").each(function(){
					if($(this).attr("class")=="select"){

						var index = $(this).data("index");
						option1_val = arr_option_1[index-1].prdt_name1_option;	
						option1_add_price_val = arr_option_add_price_1[index-1].prdt_option_add_price_1;
					}
				});
			}
			else if(i==1 && arr_option_2 !=null && arr_option_2 !=""){
				$(".option2_scroll > div").each(function(){
					if($(this).attr("class")=="select"){
                        
						var index = $(this).data("index");
						option2_val = arr_option_2[index-1].prdt_name2_option;	
						option2_add_price_val = arr_option_add_price_2[index-1].prdt_option_add_price_2;		
					}
				});
			}
			else if(i==2 && arr_option_3 !=null && arr_option_3 !=""){
				$(".option3_scroll > div").each(function(){
					if($(this).attr("class")=="select"){

						var index = $(this).data("index");
						option3_val = arr_option_3[index-1].prdt_name3_option;	
						option3_add_price_val = arr_option_add_price_3[index-1].prdt_option_add_price_3;
					}
				});
			}
			
		});
		
		
		// 1, 2, 3 옵션 다 합쳐놓은 값
		if(option1_val != "" && option2_val != "" && option3_val != ""){
		    arr_option.push(option1_val + "::"+ option2_val + "::" +option3_val);
		}
		else if(option1_val != "" && option2_val != ""){
			arr_option.push(option1_val + "::"+ option2_val);	
		}
		else if(option1_val != ""){
			arr_option.push(option1_val);	
		}
		
        sessionStorage.setItem("arr_option",JSON.stringify(arr_option));
		
		if(option_length==3){
			
			var option_price = prdt_sale_price+Number(option1_add_price_val)+Number(option2_add_price_val)+Number(option3_add_price_val);
			
	    	$(".option_space").append("<faketag data-id='"+(length)+"'><div class='option_space_child'><div class='option_space_product_name'><span>option1 : "+option1_val+"</span><span class='product_cancel'><img src='/resources/img/cross.png' /></span></div><div class='option_space_product_name'><span>option2 : "+option2_val+"</span><span class='product_cancel'></span></div><div class='option_space_product_name'><span>option3 : "+option3_val+"</span><span class='product_cancel'></span></div><div class='option_space_product_num_name'><div class='minus_div' data-id='"+(length)+"'><button class='minus'><img src='https://img.womanstalk.co.kr/upload/images/mobile/btn_m_cnt_down.png' alt='down'></button></div><div class='product_num_div'><input class='product_num' type='text' value='1' readonly /></div><div class='plus_div' data-id='"+(length)+"'><button class='plus'><img src='https://img.womanstalk.co.kr/upload/images/mobile/btn_m_cnt_up.png' alt='up'></button></div><div class='product_num_price'>"+option_price+"원</div></div></div></faketag>");
	    	
	    	$(".option1").text("(필수)옵션선택1");
	    	$(".option2").addClass("option_blind");
	    	$(".option2").text("(필수)옵션선택2");
	    	$(".option3").addClass("option_blind");
	    	$(".option3").text("(필수)옵션선택3");
	    	
	    	option_total_price_arr.push(option_price);
	    	option_total_num_arr.push(1);
		}
		else if(option_length==2){
			
			var option_price = prdt_sale_price+Number(option1_add_price_val)+Number(option2_add_price_val);
			
			$(".option_space").append("<faketag data-id='"+(length)+"'><div class='option_space_child'><div class='option_space_product_name'><span>option1 : "+option1_val+"</span><span class='product_cancel'><img src='/resources/img/cross.png' /></span></div><div class='option_space_product_name'><span>option2 : "+option2_val+"</span><span class='product_cancel'></span></div><div class='option_space_product_num_name'><div class='minus_div' data-id='"+(length)+"'><button class='minus'><img src='https://img.womanstalk.co.kr/upload/images/mobile/btn_m_cnt_down.png' alt='down'></button></div><div class='product_num_div'><input class='product_num' type='text' value='1' readonly /></div><div class='plus_div' data-id='"+(length)+"'><button class='plus'><img src='https://img.womanstalk.co.kr/upload/images/mobile/btn_m_cnt_up.png' alt='up'></button></div><div class='product_num_price'>"+option_price+"원</div></div></div></faketag>");
		
	    	$(".option1").text("(필수)옵션선택1");
			$(".option2").addClass("option_blind");
			$(".option2").text("(필수)옵션선택2");
			
			option_total_price_arr.push(option_price);
			option_total_num_arr.push(1);
		}
		else if(option_length==1){
			
			var option_price = prdt_sale_price+Number(option1_add_price_val);
			$(".option_space").append("<faketag data-id='"+(length)+"'><div class='option_space_child'><div class='option_space_product_name'><span>option1 : "+option1_val+"</span><span class='product_cancel'><img src='/resources/img/cross.png' /></span></div><div class='option_space_product_num_name'><div class='minus_div' data-id='"+(length)+"'><button class='minus'><img src='https://img.womanstalk.co.kr/upload/images/mobile/btn_m_cnt_down.png' alt='down'></button></div><div class='product_num_div'><input class='product_num' type='text' value='1' readonly /></div><div class='plus_div' data-id='"+(length)+"'><button class='plus'><img src='https://img.womanstalk.co.kr/upload/images/mobile/btn_m_cnt_up.png' alt='up'></button></div><div class='product_num_price'>"+option_price+"원</div></div></div></faketag>");
	    	$(".option1").text("(필수)옵션선택1");
	    	
	    	option_total_price_arr.push(option_price);
	    	option_total_num_arr.push(1);
	    	
		}
		
		  sessionStorage.setItem("option_total_num_arr", JSON.stringify(option_total_num_arr));
		
		
		// 옵션 모든 가격 합친것 디스플레이 해주는 기능
		var option_total_price = 0;
		for(z=0; z<option_total_price_arr.length; z++){
			option_total_price = option_total_price + Number(String(option_total_price_arr[z]).replace(/[^0-9]/g,""))*option_total_num_arr[z];
		}
        $(".total_price_val").text(option_total_price+"원");
		
		
		
		// 셀렉트된 서브옵션 select 클래스 지우는 부분
		$(".option1_scroll > div").attr("class","");
		$(".option2_scroll > div").attr("class","");
		$(".option3_scroll > div").attr("class","");
	}
	else{
	
		// 옵션 블라인드 풀기위해
		var option_th = parent_id.match(/[0-9]/g);
		var temp = parent_id.replace(/[0-9]/g,"");
		temp = temp +(Number(option_th)+1);
		$("."+temp).removeClass("option_blind");
		// 옵션 블라인드 풀기위해
    }
	
});



// 선택한 옵션 취소하는 버튼 눌렀을때

$(document).on('click','.product_cancel',function(){
	var index = $(this).parents("faketag").data("id");
	
	
	option_total_price_arr.splice(index,1);
	option_total_num_arr.splice(index,1);
	
	
	// 옵션 모든 가격 합친것 디스플레이 해주는 기능
	var option_total_price = 0;
	for(z=0; z<option_total_price_arr.length; z++){
		option_total_price = option_total_price + Number(String(option_total_price_arr[z]).replace(/[^0-9]/g,""))*option_total_num_arr[z];
	}
	
	
	sessionStorage.setItem("option_total_price_arr", JSON.stringify(option_total_price_arr));
	sessionStorage.setItem("option_total_num_arr", JSON.stringify(option_total_num_arr));
	
	$(".total_price_val").text(option_total_price+"원");
	
	$("faketag").each(function(){
		if($(this).data("id") == index){
			$(this).remove();
		}
	});
		
	
});



// 옵션 전부다 선택했을때 옵션 정리한것 추가함

var option_length = $(".opt_num").length;




// 구매하기 버튼 누를시 옵션 선택 창 띄워줌

$(".buy_button").click(function(){
	$(".product_footer_option").css("display","unset");
});




// 대표이미지 스크롤

var arrow_left_init;
var arrow_right_init;
$(".arrow_left").click(function(){
	$(".thumbnail_img_view_div").animate({
		scrollLeft : $(".thumbnail_img_view_div").scrollLeft()-$(".thumbnail_img_view_div").width()
	});
});

$(".arrow_right").click(function(){
	$(".thumbnail_img_view_div").animate({
		scrollLeft : $(".thumbnail_img_view_div").scrollLeft()+$(".thumbnail_img_view_div").width()
	});
});

$(".inline_div").click(function(){
	var index = $(".inline_div").index(this);
	var val = $(".thumbnail_img_view").eq(index).attr("src");
	
	$(".thumbnail_img").attr("src",val);
});





// 상품 추천수 찎어주는 기능

$(document).on("click",".recommend_button",function(){
	
	var  recommend_count = $(".recommend_count").text();
	
	$.ajax({
		url : "/product_view_recommend",
		type:"post",
		data : 1,
		
		success : function(){
			$(".recommend_count").text(Number(recommend_count)+1);
		},
		
		error : function(){
			
		}
	});
});



// 옵션 내리기 버튼 누를시 옵션창 없앰

$(".btn_down").click(function(){
	$(".product_footer_option").css("display","none");
});

   


    

// 구매하기 버튼 눌렀을때
$(document).on("click",".product_footer_option_buy",function(){
	
	
	
	if(arr_option.length == 0){
		swal("옵션을 선택 해 주세요.");
		return;
	}

	
	
	
	
	
	
	$(".prdt_name_input").val(prdt_name);
	
	var temp ="";
	
	for(var i=0; i<option_total_price_arr.length;i++){
		    temp=temp+"§"+option_total_price_arr[i];
	}
	

	$(".option_total_price_arr_input").val(temp);
	temp="";
	
	for(var i=0; i<option_total_num_arr.length;i++){
		temp=temp+"§"+option_total_num_arr[i];
	}

	$(".option_total_num_arr_input").val(temp);
	temp="";
	
	for(var i=0; i<arr_option.length;i++){
		temp=temp+"§"+arr_option[i];	
	}

	$(".db_session_save_thumnail_image").val(db_session_save_thumnail_image);

   

	// 섬네일 이미지 input 넣음
	

	
    $("#order_info").submit();
});



// 장바구니 기능 

$(".product_footer_option_basket").click(function(){
	
	if(option_total_price_arr.length==0 || option_total_num_arr.length==0){
		return;
	}
	
	var option_total_price_val="";
	var option_total_num_val="";
	var arr_option_val="";
	var product_id = String(location.href.match(/id=\d*/g)).replace(/id=(\d*)/,"$1");
	
	
	for(var i=0; i<option_total_price_arr.length; i++){
		option_total_price_val = option_total_price_val + "§" + option_total_price_arr[i];
	}
	
    for(var i=0; i<option_total_num_arr.length; i++){
    	option_total_num_val = option_total_num_val + "§" + option_total_num_arr[i];
	}
    
    for(var i=0; i<arr_option.length; i++){
    	arr_option_val = arr_option_val + "§" + option_total_num_arr[i];
	}
    
    
    // 선택된 상품들 ajax 로 db 저장시킴
    $.ajax({
    	url : "product_view_basket",
    	type : "post",
    	data : {product_id:product_id,arr_option_val:arr_option_val,  option_total_price_val:option_total_price_val, option_total_num_val:option_total_num_val, prdt_name : prdt_name },
    	
    	success : function(data){
    		alert("장바구니 등록에 성공했습니다.");
    	},
    	
    	error : function(){
    		
    	}
    	
    	
    });
    
	
});