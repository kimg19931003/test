<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="java.util.*"%>
<%
	Random r_index = new Random();
	int i_index = r_index.nextInt(1000);
%>

<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/menu/category.css?i=<%=i_index%>" />

<%@include file="../include/header.jsp"%>

<%
	List<Map<String, Object>> list = (List<Map<String, Object>>) request.getAttribute("list");

	// 상품 총 갯수
	int count = Integer.parseInt(String.valueOf(request.getAttribute("count")));

	// 한 페이지에서 보여줄 상품 개수 설정
	int pageSize = Integer.parseInt(String.valueOf(request.getAttribute("page_size")));

	String pageNum = String.valueOf(request.getAttribute("page_num")); // 현재 페이지 위치

	if (pageNum == null) {
		pageNum = "1";
	}

	// 시작행을 계산하기   1...11...21...31...
	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1) * pageSize + 1;

	// 끝행을 계산하기  10..... 20.....30...40... 
	int endRow = currentPage * pageSize;
%>

<!-- 메인 페이지 상품 목록-->
<div id="main_wrap">
	<!-- 상품 전체 목록 -->
	<div id="main_product_list">
		<!-- 제목 -->
		<div class="product_line_title">카테고리1</div>
		<!--  카테고리-->
		<div class="category_menu">
			<div class="category_menu_layout">
				<ul class="category">
					<li>
						<a href="/category1"> 
							<i class="fas fa-circle"></i> 카테고리1
						</a>
					</li>
					<li>
						<a href="/category2"> 
							<i class="fas fa-circle"></i> 카테고리2
						</a>
					</li>
					<li>
						<a href="/category3"> 
							<i class="fas fa-circle"></i> 카테고리3
						</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 개수 선택 정렬 / 가격순, 최신순, 인기순 -->
		<div class="total_category_sort">
			<div class="category_sort category_layout">
				<div class="total">Total Products : <%=count%></div>
				<ul class="sort">
					<li>
						<a href="">최신순</a>
					</li>
					<li>
						<a href="">인기순</a>
					</li>
					<li>
						<a href="">낮은가격순</a>
					</li>
					<li>
						<a href="">높은가격순</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 상품 4 * 4-->
		<div class="best_item">
			<div class="layout">
				<div>
					<ul class="best_product_list">
						<%
							for (int z = 0; z < list.size(); z++) {
								String prdt_price = String.valueOf(list.get(z).get("prdt_price"));
								String prdt_sale_price = String.valueOf(list.get(z).get("prdt_sale_price"));
								String prdt_name = String.valueOf(list.get(z).get("prdt_name"));
								
								int prdt_idx_pk = Integer.parseInt(String.valueOf(list.get(z).get("prdt_idx_pk")));

								StringBuffer prdt_price_sb = new StringBuffer(prdt_price);
								StringBuffer prdt_sale_price_sb = new StringBuffer(prdt_sale_price);

								String[] prdt_thumbnail = String.valueOf(list.get(z).get("prdt_thumbnail")).split("§");

								double sale_temp = Integer.parseInt(prdt_sale_price);
								double temp = Integer.parseInt(prdt_price);
								double prdt_price_percent = 100 - (100 * (sale_temp / temp));
						%>
						<%
							for (int a = 0; a < 16; a++) {
									if (a == 1) {
						%>
							<li class="best_product"
								onclick="window.location='/product_view?id=<%=prdt_idx_pk%>'"
								target="_parent">
								<div class="product">
									<!-- 썸네일 -->
									<div class="thumbnail">
										<div class="product_thumbnail">
											<img src="/resources/img/<%=prdt_thumbnail[a]%>" alt="<%=prdt_name%>">
										</div>
										<div class="product_price_rate_discount">
											<span class="product_rate_discount"><%=Math.round(prdt_price_percent)%>%</span>
										</div>
									</div>
									<!-- // 썸네일 -->
								<%
									}
										}
								%>
								<!-- 상품 이름 / 원가 / 세일가 / 아이콘 -->
								<div class="product_description">
									<!-- 상품 이름 -->
									<span class="product_name">
									<span class="product_name_span"><%=prdt_name%><%=prdt_idx_pk%></span>
									</span>
									<!-- // 상품 이름 -->
									<!-- 가격 : 원가 / 세일가 -->
									<ul>
										<li>
											<span class="product_price_cost"><%=prdt_price_sb.insert(1, ",")%>원</span>
										</li>
										<li>
											<span class="product_price_sale"><%=prdt_sale_price_sb.insert(1, ",")%></span>
										</li>
									</ul>
									<!-- // 가격 : 원가 / 세일가 -->
									<!-- 아이콘 -->
									<div class="product_icon">
										<div>
											<img src="/resources/img/shoppingmall/product/icon/new.png"
												style="margin-left: 2px;" alt="NEW">
											<img src="/resources/img/shoppingmall/product/icon/hit.png"
												style="margin-left: 4px;" alt="HIT">
											<img src="/resources/img/shoppingmall/product/icon/best.png"
												style="margin-left: 5px;" alt="BEST">
										</div>
									</div>
									<!-- // 아이콘 -->
								</div>
								<!-- // 상품 이름 / 원가 / 세일가 / 아이콘 -->
							</div>
						</li>
						<%
							}
						%>
					</ul>
				</div>
			</div>
		</div>
		<!-- 페이징 -->
		<div class="page">
			<ul>
				<%
					// 페이지 접근 형태 출력
					// <이전  1,2,3,4,5 다음>
					if (count != 0) {
						// 전체 페이지수 계산 => 게시판 글 50개 , 한페이지에 10개씩 보여줌 => 5페이지 
						//                                               게시판 글 77개 , 한페이지에 10개씩 보여줌 => 8페이지( 7+1 )
						int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);

						// 한 화면에 보여줄 페이지 번호의 개수 
						int pageBlock = 5;

						// 시작페이지 번호
						int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;

						// 끝페이지 번호 
						int endPage = startPage + pageBlock - 1;
						if (endPage > pageCount) {
							endPage = pageCount;
						}
						
						// 처음
				%>
				<li>
					<a href="">
							<img src="/resources/img/shoppingmall/page/start.png"
								style="width: 30px; height: 30px;" alt="시작 페이지 보기">
					</a>
				</li>
				<%
						// 이전
						if (startPage > pageBlock) {
				%>
				<li>
					<a href="product_all?page_num=<%=startPage - pageBlock%>">
							<img src="/resources/img/shoppingmall/page/previous.png"
								style="width: 30px; height: 30px;" alt="이전 페이지 보기">
					</a>
				</li>
				<%
					}
						// 1~10,11~20,21~30,....
						for (int a = startPage; a <= endPage; a++) {
							if (a == currentPage) {
				%>
								<li class="on">
									<a href="product_all?page_num=<%=a%>"><%=a%>
								</a> 
						<%
							} else {
						%>
								<li class="off">
									<a href="product_all?page_num=<%=a%>"><%=a%></a>
								</li>
						<%
							}
						}

						// 다음
						if (endPage < pageCount) {
				%>
				<li>
					<a href="product_all?page_num=<%=startPage + pageBlock%>">
							<img src="/resources/img/shoppingmall/page/next.png"
								style="width: 30px; height: 30px;" alt="다음 페이지 보기">
					</a>
				</li>
				<%
						}
						// 끝
				%>
				<li>
					<a href="product_all?page_num=<%=startPage + pageBlock%>">
							<img src="/resources/img/shoppingmall/page/end.png"
								style="width: 30px; height: 30px;" alt="끝 페이지 보기">
					</a>
				</li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
	<!-- 메인 페이지 상품 목록-->

	<%@include file="../include/footer.jsp"%>

	<script src="/resources/js/index/index.js?i=<%=i_index%>"></script>