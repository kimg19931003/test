<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%
	Random r_foot = new Random();
	int i_foot = r_foot.nextInt(1000);
%>

<link
	href="${pageContext.request.contextPath}/resources/css/common/footer.css?i=<%=i_foot %>"
	rel="stylesheet">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">

		<div id="footer_wrap">
			<div id="footer" class="">
	
				<div class="section_01">
					<!-- 콜센터 -->
					<div class="title"><a href="tel:070-4655-1365" target="_self">070-4655-1365</a></div>
					<ul class="content">
						<li><span>상담가능 : </span>10:00 ~ 18:00</li>
						<li><span>점심시간 : </span>12:30 ~ 13:30</li>
						<li class="medium">토/일/공휴일 휴무</li>
					</ul>
				</div>
	
				<div class="section_02">
					<!-- 은행정보 -->
					<div class="title">BANK INFO</div>
					<ul class="content">
						<li>기업은행</li>
						<li>465-012590-04-011</li>
						<li class="medium">
							<span>예금주 : </span> (주)슈퍼셀
						</li>
					</ul>
				</div>
	
				<div class="section_03">
					<div class="title">
						<img alt="로고" src="/resources/img/shoppingmall/footer/logo.png"
							style="width: 115px; height: 19px;  margin-left: 2px;">
					</div>
					<ul class="content">
						<li>
							<span>법인명(상호) : </span>(주)슈퍼셀&nbsp;&nbsp;|
							<span>대표 : </span> 이승헌&nbsp;&nbsp;|
							<span>전화 : </span> <strong>070-4655-1365</strong>&nbsp;&nbsp;|  
							<span>팩스 : </span> <strong>0504-377-1365</strong>
						</li>
						<li>
							<span>사업자 등록번호 : </span> 292-81-01311&nbsp;|
							<span>통신판매업신고번호 : </span> 2018-부산남구-0565
								<div>
								<a class="operators_information" href="#none"
									onclick="window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2928101311', 'bizCommPop', 'width=1000, height=1000;'); return false;"
									style="display: inline;">
									사업자정보확인
								</a>
						</li>
						<li>
							<span>주소 : </span>부산광역시 해운대구 센텀동로 41, 602호 (센텀벤처타운)
						</li>
						<li class="medium">
							<span>반품배송지 : </span>부산광역시 사상구 장인로 77번길 69 CJ대한통운 리턴박스
						</li>
						<li>
							<span>이메일 : </span><a href="mailto:tan@supersell.kr" style="display: inline;">tan@supersell.kr</a>
						</li>
						<li>
							COPYRIGHT ⓒ 2019 supersell Co.Ltd ALL RIGHTS RESERVED.
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- // <div id="wrap"> -->
	<!-- // 내용 전체 -->
	
		<div id="m_footer_wrap">
			<div class="m_section1">
				<div class="m_section1_box">
					<ul>
						<li>
							<p class="m_title">070-4655-1365</p>
							<p class="m_content">상담가능 : 10:00 ~ 18:00</p>
							<p class="m_content">점심시간 : 12:30 ~ 13:30</p>
							<p class="m_holiday">토/일/공휴일 휴무</p>
						</li>
						<li>
							<p class="m_title">BANK INFO</p>
							<p class="m_content">기업은행 465-012590-04-011</p>
							<p class="m_account_holder">예금주 : (주)슈퍼셀</p>
						</li>
					</ul>
				</div>
				<div class="m_cs">
					<a href="tel:070-4655-1365" target="_self">
						<img src="/resources/img/shoppingmall/mobile/header/connect_customer_center.png">
					</a>
					<a href="/customer_service">
						<img src="/resources/img/shoppingmall/mobile/header/customer_center.png">
					</a>
				</div>
				<div class="m_company_information">
					<div class="m_company_information_box">
						<div>
							<ul>
								<li>
									<p class="m_company_information_content">
										법인명(상호) : (주)슈퍼셀  |  대표 : 이승헌  |  전화 : 070-4655-1365  |  팩스 : 0504-377-1365
									</p>
									<p class="m_company_information_content">
										사업자등록번호 : 292-81-01311  |  통신판매업신고번호 : 2018부산남구0565
									</p>
									<p class="m_company_information_content">
										주소 : 부산광역시 해운대구 센텀동로 41, 602호 (센텀벤처타운)
									</p>
									<p class="m_company_information_return">
										반품배송지 : 부산광역시 사상구 장인로77번길 69 CJ대한통운 리턴박스
									</p>
									<p class="m_company_information_content">
										이메일 : tan@supersell.kr
									</p>
									<p class="m_company_information_content">
										COPYRIGHT ⓒ 2019 supersell Co.Ltd ALL RIGHTS RESERVED. 
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>