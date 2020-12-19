<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page import="java.util.*"%>
<%
	Random r_myinfo = new Random();
	int i_myinfo = r_myinfo.nextInt(1000);
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>

<link href="${pageContext.request.contextPath}/resources/css/common/common.css?i=<%=i_myinfo %>"
	rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/common.css?i=<%=i_myinfo %>"
	rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/myinfo.css?i=<%=i_myinfo %>"
	rel="stylesheet" type="text/css"/>

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
	
  <script src="/resources/js/sweetalert/sweetalert.js"></script>  
</head>
<body>
	<!-- 내용 전체 -->
	<div id="wrap">
	
		<!-- 로그인 / 메인 -->
		<div class="titleTopArea">
			<div>
					<span class="top_bar_img">
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_back_b.png"
							alt="뒤로가기">
					</span>
		    </div>
		    
			<div>
				<span class="top_bar_text">개인정보 수정</span>    
			</div>
			
			<div>
					<span class="top_bar_home">
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_home_b.png"
							alt="메인">
					</span>
			</div>
		</div>
        <!-- 로그인 / 메인 -->
        
        
        
        <!-- 어떤 방식으로 로그인했는지 알려주는 창   -->
        <div class="login_method">
            <div class="login_method_img">
                <img src="/resources/img/selvishop_logo.png" />
            </div>
            
            <div class="login_method_text">
                <span>현재 셀비샵 계정으로 로그인하고 있습니다.</span>
            </div>
        </div>
        <!-- 어떤 방식으로 로그인했는지 알려주는 창   -->
        
        
        
        
        
        
        
        
        
        
      <c:choose>
          <c:when test="${fn:length(list)>0 }" >
              <c:forEach var="row" items="${list }" >  
        

        <!-- 개인정보 수정   -->
         <table class="myinfo_necessary">

            <colgroup>
                <col width="35%">
                <col width="65%">
            </colgroup>

            <tbody>
				<tr>
					<th>이름</th>
					<td><input type='text' class="mem_name" value="${row.mem_name }" /></td>
				</tr>
				
				<tr>
					<th>이메일</th>
					<td><input type='text' class="mem_email" value="${row.mem_email }" /></td>
				</tr>
				
				<tr>
					<th>비밀번호</th>
					<td><input type='password' value="" class="mem_pass" placeholder="영문 숫자 특수문자중 6자 이상" /></td>
				</tr>
				
				
				<tr>
					<th>비밀번호 확인</th>
					<td><input type='password' value="" class="mem_pass2" placeholder="비밀번호를 한번 더 입력해 주세요" /></td>
				</tr>
				
				<tr>
					<th>핸드폰 번호</th>
					<td><input type='text' class="mem_phone" value="${row.mem_phone }" placeholder="-를 제외한 11자리 숫자"  /></td>
				</tr>
			</tbody>
        </table>
        <!-- 개인정보 수정 -->
        
        
        
        <!-- 개인정보 수정 입력 생년월일, 성별, 주소 -->
        <table class="myinfo_necessary">

            <colgroup>
                <col width="35%">
                <col width="65%">
            </colgroup>

            <tbody>
				<tr>
					<th>성별</th>
					<td class="gender">
					    <div>
					        <div><input type='checkbox' id="gender_female" class="mem_gender"/></div>
					        <label for="gender_female">여자</label> 
					    </div>
					    
					    <div>
					       <div><input type='checkbox' id="gender_male" class="mem_gender"/></div>
					       <label for="gender_male">남자</label>
					    </div>
					        
					</td>
				</tr>
				
				<tr>
					<th>생년월일</th>
					<td class="birth">
						<div><input type='text' value="1993" class="mem_birth1" />년</div>
						<div><input type='text' value="10" class="mem_birth2" />월</div>
						<div><input type='text' value="03" class="mem_birth3" />일</div>
					</td>
				</tr>
				
				<tr>
					<th>주소</th>
					<td><span class="mem_addr">erqere</span></td>
				</tr>
			
			</tbody>
        </table>
        <!-- 어떤 방식으로 로그인했는지 알려주는 창 -->
       
       </c:forEach>
       		</c:when>
       			</c:choose>
       
        
        
        <!-- 개인정보 수정하기 버튼 -->
        <div class="member_info_repair_button">
                               개인정보 수정하기
        </div>
        <!-- 개인정보 수정하기 버튼 -->
       
		
	</div>	
	
	
	<%@include file="../include/footer.jsp"%>
		<script src="/resources/js/jquery.js"></script>
		<script src="/resources/js/mypage/myinfo.js?i=<%=i_myinfo %>"></script>
</body>
</html>