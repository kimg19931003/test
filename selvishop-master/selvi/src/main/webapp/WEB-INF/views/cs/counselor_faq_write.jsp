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
<link href="/resources/css/cs/counselor_faq_write.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/common.css?i=<%=i_join%>" rel="stylesheet">
<script src="/resources/js/sweetalert/sweetalert.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">


		
		<div class="table_title">문의하기</div>
		


		
		
		
	<div class="table_list_div">	
		
		<table class="notice_view">
				
			<tbody>
			
			     <tr class="notice_title_tr">
		         	<td><div class="notice_title_name">제목</div></td>
		         	<td>
                        <select class="faq_setting">
                            <option value="[상품] 상품 관련 문의드립니다.">[상품] 상품 관련 문의드립니다.</option>
                            <option value="[배송] 배송관련 문의드립니다.">[배송] 배송관련 문의드립니다.</option>
                            <option value="[교환/취소환불] 교환 취소환불 관련 문의드립니다.">[교환/취소환불] 교환 취소환불 관련 문의드립니다.</option>
                            <option value="[입금확인] 입금확인 관련 문의드립니다.">[입금확인] 입금확인 관련 문의드립니다.</option>
                            <option value="[기타] 기타 문의드립니다.">[기타] 기타 문의드립니다.</option>
                        </select>
					</td>
		         </tr>
		    
		    
		    
		     	 
		     	 <tr class="notice_date_writer_hit_tr">
		         	<td colspan="2">
		         		<div class="notice_title_name">작성자</div>
		         		<div class="notice_writer">
		         			<input type='text' class="notice_writer_input">
		         		</div>
		         	</td>
		     	 </tr>
		
		
		
		
		         <tr class="notice_content_tr">
		             <td colspan="2">
		     	 		<textarea class="notice_content">

		     	 		</textarea>
		     	 	 </td>
		     	 </tr>	
		     	 
		     	 
		     	 <tr class="notice_secret_setting_tr">
		     	     <td>비밀글 설정</td>
		     	     <td style="text-align:left;">
		     	     
		     	        <div class='open_div'>
		     	         	<input type='checkbox' checked ="checked" id="open" />
		     	         	<label for="open">공개글</label>
		     	        </div>
		     	        
		     	        
		     	        <div class="secret_div">
		     	         	<input type='checkbox' id="secret" />
		     	         	<label for="secret">비밀글</label>
		     	        </div>
		     	        
		     	        
		     	     </td>
		     	 
		     	 </tr>
		     	 
		     	 
		     	 
		     	 
		     	 <tr class="notice_password_tr">
		     	     <td style="border-bottom: 2px solid #505050;">비밀번호</td>
		     	     <td style="border-bottom: 2px solid #505050;text-align:left;"><input type='password' id="passwrod_input" /></td>
		     	 		     	
		     	 </tr>
		     	 
		     	 

			</tbody>	

		</table>
		
		
		
		<div class="move_list_button_div">
			<a href="/cs/counselor_faq"><span class="move_list_button">목록</span></a>
			<span class="faq_reg">등록</span>
			<span class="faq_cancel">취소</span>
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
	<script src="/resources/js/cs/counselor_faq_write.js?i=<%=i_join%>"></script>
	<!-- 회원가입 자바스크립트 기능 -->

</body>

</html>