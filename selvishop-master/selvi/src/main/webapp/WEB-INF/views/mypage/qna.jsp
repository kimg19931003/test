<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page import="java.util.*"%>
<%
	Random r_qna = new Random();
	int i_qna = r_qna.nextInt(1000);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>

<link
	href="${pageContext.request.contextPath}/resources/css/common/common.css?i=<%=i_qna %>"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/mypage/qna.css?i=<%=i_qna %>"
	rel="stylesheet" type="text/css" />
<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
<script
	src="${pageContext.request.contextPath}/resources/js/sweetalert/sweetalert.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/common/datatable.css"
	rel="stylesheet" type="text/css" />
<script
	src="${pageContext.request.contextPath}/resources/js/common/datatable.js"></script>
</head>
<body>
	<%-- 	<%
		//세션값 가져오기(id)
		String id = (String) session.getAttribute("id");
	
		// 세션에 저장된 아이디를 가져와서 그 아이디 해당하는 회원정보를 가져온다.
		MemberDAO mdao = new MemberDAO();
		MemberBean mb = mdao.getMember(id);
		
		// 디비처리 객체 생성 BoardDAO
		BookDAO ndao = new BookDAO();
		
		// getBoardCount() 생성후 처리 
		
		int count = ndao.bookBoardGetCount();
		// 한 페이지에서 보여줄 글 개수를 설정
		int pageSize = 5;
		
		// 현재 페이지 위치 
		String pageNum = request.getParameter("pageNum");
		
		if (pageNum == null) {
			pageNum = "1";
		}
		
		// 시작행을 계산하기   1...11...21...31...
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		
		// 끝행을 계산하기  10..... 20.....30...40... 
		int endRow = currentPage * pageSize;
		
		// 디비 안에 있는 모든 글정보를 가져오기
		// ndao.getBoardList();
		List boardList = null;
		if (count != 0) {
			// boardList = ndao.getBoardList();
			// ArrayList boardList = (ArrayList) ndao.getBoardList();
			// 페이징 처리한 만큼씩만 정보를 가져오는 작업 
			boardList = ndao.bookBoardGetList(startRow, pageSize);
		}
	%> --%>

	<!-- 내용 전체 -->
	<div id="wrap">
		<!-- 로그인 / 메인 -->
		<div class="titleTopArea">
			<div>
				<span class="top_bar_img"> <img
					src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_back_b.png"
					alt="뒤로가기">
				</span>
			</div>
			<div>
				<span class="top_bar_text">고객센터</span>
			</div>
			<div>
				<span class="top_bar_home"> <img
					src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_home_b.png"
					alt="메인">
				</span>
			</div>
		</div>
		<!-- 로그인 / 메인 -->

		<!-- 자주묻는 질문 카테고리 -->
		<div class="qna_category pub_tab">
			<ul class="tab">
				<li class="on first">전체보기</li>
				<li tab-data="회원서비스">회원서비스</li>
				<li tab-data="주문/결제">주문/결제</li>
				<li tab-data="배송문의">배송문의</li>
				<li tab-data="환불/반품교환">환불/반품교환</li>
				<li tab-data="쿠폰/포인트">쿠폰/포인트</li>
				<li tab-data="타임딜">타임딜</li>
				<li class="last" tab-data="쿠폰">쿠폰</li>
			</ul>
		</div>
		<!-- 자주묻는 질문 카테고리 -->

		<!-- 검색 -->
		<div class="clear_both">
			<div class="fr">
				<fieldset class="list_sh">
					<label for="keyField">게시판 검색</label>
					<div class="select-skin">
						<select title="검색옵션" id="gn_search_type" name="gn_search_type"
							class="selectbox" style="width: 100%; opacity: 0;">
							<option value="all">전체</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select>
						<div class="select-skin-mask">
							<div class="select-skin-text-clip">
								<div class="select-skin-text">전체</div>
							</div>
						</div>
					</div>
					<span> <input type="text" style="width: 190px;" title="검색어"
						class="input" id="gn_search_keyword" name="gn_search_keyword">
					</span> <input type="button" value="검색" class="vm btn_result_search">
				</fieldset>
			</div>
		</div>
		<!-- // 검색 -->

		<!-- 자주묻는 질문 리스트 -->
		<table class="board_list faq">
			<caption>FAQ 리스트</caption>
			<colgroup>
				<col width="8%">
				<col width="10%">
				<col width="*">
			</colgroup>
			<thead>
				<tr>
					<th class="first">번호</th>
					<th>카테고리</th>
					<th class="last">제목</th>
				</tr>
			</thead>
			<tbody class="faq_list">
				<%
					for (int i = 0; i < 100; i++) {
				%>
				<!-- <div class="qna_list"> -->
				<!-- <div class="qna_title">
					<div>회원가입은 어떻게 하나요?</div>
				</div>
				<div class="qna_explain">
					<div>오른쪽 상단 [마이페이지] 버튼을 클릭하여 간단한 회원 정보를 입력하시면 즉시 가입이 완료됩니다.
						또한, 편리하게 Facebook과 Kakaotalk, Naver 계정으로도 회원가입이 가능합니다.</div>
				</div> -->
				<!-- </div> -->
				<tr class="faq_q_off">
					<td>31</td>
					<td>홈페이지 관련</td>
					<td class="ti"><a href="javascript:void(0);">[홈페이지] 홈페이지
							통해 1:1문의를 하고 싶어요.</a></td>
				</tr>
				<tr class="faq_a">
					<td colspan="3"><div>
							<p>
								홈페이지 하단 [후원·제휴문의]를 이용하시면 1:1 문의가 가능합니다.<br> <br> <strong>후원회원일
									경우, [후원회원 문의]를 통해(로그인 필요)</strong> 문의하시면,<br> 보다 빠르고 정확한 응대가 가능합니다.
							</p>

							<p>
								홈페이지에 가입하지 않으신 분께서는 [비회원 문의]를 이용하여 문의하시면<br> 신청내용 확인 후, 관련
								팀에서 빠른 시일 내에 상담해 드리겠습니다.
							</p>
						</div></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<!-- 자주묻는 질문 리스트 -->

		<!-- 페이징 -->
		<div class="page">
			<a href="javascript:listShow('10');"><img
				src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/shoppingmall/customer/%EC%9D%B4%EC%A0%84%ED%8E%98%EC%9D%B4%EC%A7%80.png"
				alt="이전 페이지 보기"></a>
			<ul>
				<li><a href="javascript:listShow('1');">1</a></li>
				<li><a href="javascript:listShow('2');">2</a></li>
				<li><a href="javascript:listShow('3');">3</a></li>
				<li><a href="javascript:listShow('4');">4</a></li>
				<li><a href="javascript:listShow('5');">5</a></li>
				<li><a href="javascript:listShow('6');">6</a></li>
				<li><a href="javascript:listShow('7');">7</a></li>
				<li><a href="javascript:listShow('8');">8</a></li>
				<li><a href="javascript:listShow('9');">9</a></li>
				<li class="on"><a href="javascript:listShow('10');">10</a></li>
			</ul>
			<a href="javascript:listShow('11');"><img
				src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/shoppingmall/customer/%EB%8B%A4%EC%9D%8C%ED%8E%98%EC%9D%B4%EC%A7%80.png"
				alt="다음 페이지 보기"></a>
		</div>
		<!-- // 페이징 -->
	</div>
	<!-- 내용 전체 -->

	<%@include file="../include/footer.jsp"%>
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/mypage/qna.js?i=<%=i_qna%>"></script>
</body>
</html>