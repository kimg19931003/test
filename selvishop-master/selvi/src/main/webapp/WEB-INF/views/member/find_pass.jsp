<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>

<link href="${pageContext.request.contextPath}/resources/css/common/common.css"
	rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/member/common.css"
	rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/member/find.css"
	rel="stylesheet" type="text/css"/>

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<script
	src="${pageContext.request.contextPath}/resources/js/common/jquery-3.3.1.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/member/find_pass.js"></script>
</head>
<body>
	<div id="wrap">
		<!-- 아이디 찾기 / 비밀번호 찾기 헤더 -->
		<div class="titleTopArea">
			<a href="javascript:history.back()" class="btnBox btnBack">
				<p>
					<span>
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_back_b.png"
							alt="뒤로가기">
					</span>
				</p></a>
			<h3>
				<span>아이디/비밀번호 찾기</span>
			</h3>
			<a href="/" class="btnBox btnHome">
				<p>
					<span>
						<img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_home_b.png"
							alt="HOME">
					</span>
				</p>
			</a>
		</div>
		<!-- // 아이디 찾기 / 비밀번호 찾기 헤더 -->
		
		<!-- 아이디 / 비밀번호 찾기 -->
		<form id="findIdPasswordForm">
			<div class="findArea">
				<div class="wtTitle"></div>
				<!-- 아이디 / 비밀번호 찾기 -->
				<div class="findWrap">
					<!-- 아이디 / 비밀번호 찾기 탭 -->
					<!-- <div class="tabBtn tabTpl" data-tab="idPassFind"> -->
					<div class="tabBtn tabTpl">
						<p>
							<button type="button" class="" rel="find_tab_id">
								<span>아이디 찾기</span>
							</button>
						</p>
						<p>
							<button type="button" class="on" rel="find_tab_pass">
								<span>비밀번호 찾기</span>
							</button>
						</p>
					</div>
					<!-- // 아이디 / 비밀번호 찾기 탭 -->
					
					<!-- 아이디 찾기 -->
					<!-- <div id="find_tab_id" class="find_tab_content findIdBox" name="idPassFind"> -->
					<div id="find_tab_id" class="find_tab_content findIdBox">
						<div class="idBox">
							<div class="findBox">
								<p>
									<input type="text" name="nameForId" placeholder="이름">
								</p>
								<p>
									<input type="text" name="mobileForId"
										placeholder="핸드폰 (- 없이 숫자만 입력)">
								</p>
							</div>
							<button type="button" id="findIdBtn" class="btnFind">확인</button>
						</div>

						<div class="idOkBox" style="display: none;">
							<span id="memberName">고객</span>님이 가입한 아이디 <strong id="memberEmail">aaa@bbb.com</strong>
							<p id="loginInfo"></p>
							<a href="/member/login" class="btnFind">로그인</a>
						</div>

						<div class="idNoBox" style="display: none;">
							<div class="idNoTxt">
								<span>고객</span>님이 가입한 아이디가 <strong>조회되지 않습니다.</strong>
							</div>
							<div class="idInfoTxt">
								<p class="txt">고객센터를 통한 빠른 확인이 가능합니다.</p>
								<strong class="call">070-4655-1365</strong>
							</div>
							<a href="/" class="btnFind">확인</a>
						</div>
					</div>
					<!-- // 아이디 찾기 -->
					
					<!-- 비밀번호 찾기 -->
					<!-- <div id="find_tab_pass" class="find_tab_content findPwBox hide" name="idPassFind"> -->
					<div id="find_tab_pass" class="find_tab_content findPwBox">
						<!-- SMS / 이메일 받기 -->
						<!-- <div class="findChkBox tabTpl" data-tab="passFindSub"> -->
						<div class="findChkBox tabTpl">
							<button type="button" class="btnChk on" id="getPasswordSms" rel="find_pass_sms">
								SMS로 받기
							</button>
							<button type="button" class="btnChk" id="getPasswordEmail" rel="find_pass_email">
								이메일로 받기
							</button>
						</div>
						<!-- // SMS / 이메일 받기 -->
						
						<!-- SMS -->
						<!-- <div class="pwbox" name="passFindSub"> -->
						<div class="pwbox find_pass_content" id="find_pass_sms">
							<div class="findBox">
								<p>
									<input type="text" name="emailForPassword" placeholder="가입한 이메일 주소 입력">
								</p>
								<p class="confirmBox">
									<input type="text" name="mobileForPassword1" placeholder="핸드폰 (- 없이 숫자만 입력)">
									<button type="button" id="btnConfirm" class="btnConfirm">인증받기</button>
								</p>
								<p class="confirmBox cfInputBox hide">
									<input type="text" name="phoneKey">
									<span>03분00초</span>
									<button type="button" id="btnConfirmEnd" class="btnConfirm">인증하기</button>
								</p>
							</div>
							<button type="button" name="findPasswordBtn" class="btnFind">확인</button>
						</div>
						<!-- SMS -->
						
						<!-- 이메일 -->
						<!-- <div class="pwbox hide" name="passFindSub"> -->
						<div class="pwbox hide find_pass_content" id="find_pass_email">
							<div class="findBox">
								<p>
									<input type="text" name="nameForPassword" placeholder="이름">
								</p>
								<p>
									<input type="text" name="emailForPassword2" placeholder="가입한 이메일 주소 입력">
								</p>
							</div>
							<button type="button" name="findPasswordBtn" class="btnFind">확인</button>
						</div>
						<!-- // 이메일 -->
					</div>
					<!-- // 비밀번호 찾기 -->
				</div>
				<!-- // 아이디 / 비밀번호 찾기 -->
			</div>
		</form>
		<!-- // 아이디 / 비밀번호 찾기 -->
	</div>
</body>
</html>