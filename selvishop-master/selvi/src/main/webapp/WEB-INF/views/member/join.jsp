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
<title>회원가입</title>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<link href="/resources/css/member/join.css?i=<%=i_join%>" rel="stylesheet">
<link href="/resources/css/common/common.css?i=<%=i_join%>" rel="stylesheet">
<script src="/resources/js/sweetalert/sweetalert.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
	<%@include file="../include/header.jsp"%>

	<div id="main_wrap">
		<div id="entry" class="hidden">

			<!-- <div class="join_complete_bar">
				<div class="back_button">
					<img src="/resources/img/back.png" style="width: 25px;"/>
				</div>
				<div class="logo">
					<a href="/"><img src="/resources/img/셀비로고_가로.png"
						style="width: 90px;"/></a>
				</div>   
			</div> -->

			<div class="join_title" style="padding-bottom: 14px;">회원 가입</div>
		
			<div class="input_div">
				<div class="input_title_id">
					<span>아이디</span>
					<div class="input_id_caution"></div>
				</div>
			    
			    <input type="text" id="id" class="join_input" placeholder="6자~16자 영문 /숫자/조합 "/>
			       
			</div>
			<div class="input_div">
			    <div class="input_title">비밀번호</div>
				<input type="password" id="pass" class="join_input" placeholder="8자~16자 영문 /숫자/특수문자 2가지 이상조합 "  />
				
			</div>
			<div class="input_div">
				<div class="input_title">
					<span>비밀번호 확인</span>
					<div class="input_pass_caution"></div>
				</div>
				
				<input type="password" id="pass_cert" class="join_input" onkeyup="e_pass1();" />
				
			</div>
			<div class="input_div">
				<div class="input_title">이름</div>
				<input type="text" id="name" class="join_input" />
			</div>
			<div class="input_div">
			    <div class="input_title">휴대전화</div>
				<select class="select_call" >
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                </select>
				<span> - </span>
				<input type="text" id="join_call2" class="join_input" />
				<span> - </span>  
				<input type="text" id="join_call3" class="join_input" />
				
				
			</div>   
			<div class="input_div">
				<div class="input_title">이메일</div>
				<input type="text" id="email1" />
				<span>@</span>
				<input type="text" id="email2" />
				
			</div>
			
			
			
			
			<div class="input_div">
				<div>
				    <div class="input_title">주소</div>
				   
				    <input type="text" id="post_num" class="join_input" />
				    <div class="post_num_button">우편번호</div>
				  
				    
				    <input type="text" id="addr1" class="join_input" style=""/>
				    <input type="text" id="addr2" class="join_input" style=""/>
				</div>
				
			</div>
			
			
			
			

			<div class="input_div">
			
                 <div class="input_title">성별</div>
			
				<div class="gender_div">
                    
                    <div class="gender_check_div">      
						
						<input type="checkbox" id="gender_female" class="join_input gender_input" />
						<label class="customer_radio gender_label" for="gender_female" style="vertical-align: sub;"></label> 
						<label for="gender_female" style="background: #dedede;">여자</label>
					</div>
					   
					<div class="gender_check_div">
						
						<input type="checkbox" id="gender_male" class="join_input gender_input" />
						<label class="customer_radio gender_label" for="gender_male"  style="vertical-align: sub;"></label> 
						<label for="gender_male" style="background: #dedede;">남자</label>
					</div>


				</div>
			</div>
      

            <div class="input_div">
            
                <div class="input_title">생년월일</div>
				<input type="text" id="birth1" class="join_input" />
				<span> 년 </span>
				<input type="text" id="birth2" class="join_input"  />
				<span> 월 </span>  
				<input type="text" id="birth3" class="join_input"  />
				<span> 일 </span> 
				
				<div class="yang_um_div">
				    <div class="yang choice" data-val="yang">양력</div>
				    <div class="um" data-val="um">음력</div>
				</div>
				
				
			</div>   




			<!-- ========== 이용약관 동의  ============ -->
			<div id="user_info_agree">
		
				<div class="agree_div">
				
				
				
					<!----------------------------------전체 동의---------------------------------------->
					<div class="all_agree_div" style="">
					
				
						<div class="all_agree_input_box">
							<input type="checkbox" id="all_agree_box" class="all_agree_box" style="display: none"/>
							<label class="customer_radio" for="all_agree_box">
								
							</label>
						</div>
						
						
						<div style="" class="all_agree">이용약관 및 개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다.</div>
					</div>
                    <!----------------------------------전체 동의---------------------------------------->
                    
                    
                    


                    <!-------------------------------------- 이용약관 내용 -------------------------------------->
					<div class="user_agree_div background_f0f0f0" style="">
						
						<div  class="user_agree">
							이용약관 동의 <span style="background:#f0f0f0; color: #e40069;">[ 필수 ]</span>
						</div>
						
					</div>

					<!-- 동의하는 칸 -->
					<div class="user_agree_see_div">
						
							<%@ include file="/resources/txt/user_info.txt"%>
						
					</div>
					
					<div class="checkbox_label" style="">
					   
					        <span class="checkbox_label_text background_f0f0f0">이용약관에 동의하십니까?</span>
							
							
							<span class="checkbox_label_span background_f0f0f0">
							    
							    <input type="checkbox" id="user_agree_box" class=" background_f0f0f0 user_agree_box" style=""/>
							
							  
								<label class="customer_radio background_f0f0f0" for="user_agree_box">
									
								</label>
							
								
								<span class="checkbox_label_text background_f0f0f0">동의함</span>
								
							</span>
							
					</div>
					<!-- 유저인포 내용 -->
                    <!-------------------------------------- 이용약관 내용 -------------------------------------->




					<!------------------------------ 개인정보 수집 및 이용동의  -------------------------------------->
					<div class="info_agree_div" style="">
						
						<div class="info_agree">
							개인정보 수집 및 이용 동의 <span style="background:#f0f0f0;color: #e40069;">[ 필수 ]</span>
						</div>
					
					</div>

					<!-- 약관 내용 -->
					<div class="info_agree_see_div">
					
							<%@ include file="/resources/txt/info.txt"%>
						
					</div>
					
					
					<div class="checkbox_label" style="">
					
					    <span class="checkbox_label_text background_f0f0f0">개인정보 수집 및 이용에 동의하십니까?</span>
						
						
						
						<span class="checkbox_label_span background_f0f0f0">
						
						    <input type="checkbox" id="info_agree_box" class="background_f0f0f0 info_agree_box" style="display:none;"/>
						
						  
							<label class="customer_radio background_f0f0f0" for="info_agree_box">
								
							</label>
							
							
							<span class="checkbox_label_text background_f0f0f0">동의함</span>
						
						</span>
						
					</div>
					<!-- 약관 내용 -->
					<!------------------------------ 개인정보 수집 및 이용동의  -------------------------------------->
					
					
					
					
					
					
					
					<!------------------------------------- 쇼핑정보 수신동의 ---------------------------------------->
					<div class="shopping_info_agree_div background_f0f0f0" style="">
						
						<div style="" class="shopping_info_user_agree">
							쇼핑정보 수신 동의 <span style="background:#f0f0f0; color: #e40069;">[ 선택 ]</span>
						</div>
						
					</div>

					<!-- 동의하는 칸 -->
					<div class="shopping_info_user_agree_see_div">
						
							<%@ include file="/resources/txt/user_info.txt"%>
						
					</div>
					
					<div class="checkbox_label" style="">
					   
		
							<span class="checkbox_label_span background_f0f0f0" style="padding-left:0px;">
							    
							    <input type="checkbox" id="sms_agree" class=" background_f0f0f0 user_agree_box" style="display:none;"/>	
							    <label class="customer_radio background_f0f0f0" for="sms_agree">
									
								</label>				
								<span class="checkbox_label_text background_f0f0f0">SMS 수신동의</span>
								
							</span>
								
							<span class="checkbox_label_span background_f0f0f0">	
								
								<input type="checkbox" id="email_agree" class=" background_f0f0f0 user_agree_box" style="display:none;"/>	
								<label class="customer_radio background_f0f0f0" for="email_agree">
									
								</label>				
								<span class="checkbox_label_text background_f0f0f0">이메일 수신동의</span>
								
							</span>
							
					</div>
					<!-- 동의하는칸 내용 -->
                    <!------------------------------------- 쇼핑정보 수신동의 ---------------------------------------->













					
					
					
					
					
					
					
				</div>
			</div>
		</div>
		<div class="entry_button">회원가입</div>
	</div>
	<!-- ========== entry  ============ -->

	

	<!-- 푸터 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>

	<!-- 회원가입 자바스크립트 기능 -->
	<script src="/resources/js/member/join.js?i=<%=i_join%>"></script>
	<!-- 회원가입 자바스크립트 기능 -->

</body>

</html>