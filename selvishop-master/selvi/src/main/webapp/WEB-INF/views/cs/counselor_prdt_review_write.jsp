<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%
	Random r_join = new Random();
	int i_join = r_join.nextInt(1000);
%>

<!DOCTYPE html>
<html>
<head>
<script src="/resources/js/jquery.js"></script>
<meta charset="utf-8">

<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link rel="shortcut icon" href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
<title>고객센터</title>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<link href="/resources/css/cs/counselor_prdt_review_write.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/selectbox.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/common.css?i=<%=i_join%>" rel="stylesheet">


<script src="/resources/js/sweetalert/sweetalert.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

</head>

<body>
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">


		
		<div class="table_title">상품리뷰 글쓰기</div>
		


		
		
		
	<div class="table_list_div">	
		
		<table class="notice_view">
				
			<tbody>
			
			     <tr class="notice_title_tr">   
		         	<td><div class="notice_title_name_1">별점</div></td>
		         	<td>
		         	
		         	
		         	
                        <div class="hosi_setting" id="hosi_setting">
                        
                        
                        
                        
                        <div class="hosi_option_default">
                        <%for(i=0; i<5; i++){ %>
                            <img src="/resources/img/shoppingmall/cs/counselor_prdt_review/hosi.png" />
                        <%} %>
                        </div>
                        
                        
                        
                        <div class="hosi_option_div">
                        
                        
                        
                        <%
                            int turn = 5;
                            int turn_reverse = 5;
                         
                            for(int z=0; z<5; z++){
                        %>
                        
                            <div class="hosi_option">
                            
                        <%
                            
                            
                            
                            for(int a=0; a<turn; a++){
                            	
                            	
                            
                        %>  
                        
                            <img src="/resources/img/shoppingmall/cs/counselor_prdt_review/hosi.png" />
                            
                        
                        <%
                        
                        
                            }
                        
                        
                        %>
                        
                        	</div>
                        
                        <% 
                        
                                turn -= 1;
                                turn_reverse = turn_reverse - turn;         
                        
                            	}
                        %>  
                            
                            
                      <!-- hosi_option_div -->      
                      </div>
                      
                      
                      
                        </div>
                          
                        
                        
                        
                        <div class="add_photo_button">
					        <input type="file" id="productImageUploader" multiple/>
					        <label class="image_file_label" for="productImageUploader" >
					            <span class="photo_add_image_span">
					                <img class="photo_add_image" src="/resources/img/shoppingmall/cs/counselor_prdt_review_write/photo.png" />
					            </span>
					            <span class="photo_add">사진추가</span>
					          
					        </label>
					    </div>
            
					</td>
					
				
					    
				
		         </tr>
		    
		    
		    
		     	 
		     	 <tr class="notice_date_writer_hit_tr">
		         	<td colspan="2">
		         	
		         	
		         	
		         	
		         		<div class="notice_title_name_2">
		         		     <img class="thumbnail_img" src="/resources/img/222cb269-246c-4194-9ccd-53f4e8885d35_16388_22477_463.jpg" />
		         		
		         		</div>
		         		
		         		
		         		<div class="notice_writer">
		         			<div class="prdt_name">상품명 : 스마트폰 삼각대 세트</div>
		         			<div class="prdt_option">옵션 : 실버 [+1000원], 블랙 [+1000원]</div>
		         		</div>
		         		
		         		
		         		
		         		
		         		
		         		
		         		
		         		
		         		<div id="addProductImgBtn">
		         		
		         		</div>
		         		
		         	</td>
		     	 </tr>
		
		
		
		
		         <tr class="notice_content_tr">
		             <td colspan="2">
		     	 		<textarea class="notice_content">

		     	 		</textarea>
		     	 	 </td>
		     	 </tr>	
		     	 
		
		     	 
		     	 <tr class="addProductImgBtn_mobile_tr" style="border-bottom:0px;">
		     	   <td colspan="2" class="addProductImgBtn_mobile_td" style=" border-bottom: 2px solid #505050;">
		     	     <div id="addProductImgBtn_mobile">
		         		
		         	 </div>
		           </td>
		     	 </tr>
		     
		     	 

			</tbody>	

		</table>
		
		
		
		<div class="move_list_button_div">
			<a href="/cs/counselor_faq"><span class="move_list_button">목록</span></a>
			<span class="prdt_review_reg">등록</span>
			<span class="prdt_review_cancel">취소</span>
		</div>
	</div>		
		
	
		
	
	
		  
		

	</div>




	<!-- 푸터 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>


    <script>
       
    
            var user_id = '<%=session.getAttribute("mem_id")%>'; 
            var id_empty = false;
            if(user_id == "" || user_id == null){
            	id_empty = true;
            }
    </script>
    

	
	<!-- 회원가입 자바스크립트 기능 -->
	<script src="/resources/js/cs/counselor_prdt_review_write.js?i=<%=i_join%>"></script>
	<!-- 회원가입 자바스크립트 기능 -->

</body>

</html>