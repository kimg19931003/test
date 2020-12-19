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
	href="${pageContext.request.contextPath}/resources/css/index/index.css" />
<script
	src="${pageContext.request.contextPath}/resources/js/common/jquery-3.3.1.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bxslider/src/css/jquery.bxslider.css" />

<%@include file="../include/header.jsp"%>
<!-- 본문 -->
<div id="index_contents">
	<!-- 슬라이더 배너 -->
	<div id="index_slider_banner">
		<!-- bxslider -->
		<ul class="bxslider">
			<li>
				<img src="https://selvishop.kr/_wg/img/selvipic/01.jpg"
					width="100%" height="580px" />
			</li>
			<li>
				<img src="https://selvishop.kr/_wg/img/selvipic/02.jpg"
					width="100%" height="580px" />
			</li>
			<li>
				<img src="https://selvishop.kr/_wg/img/selvipic/03.jpg"
					width="100%" height="580px" />
			</li>
			<li>
				<img src="https://selvishop.kr/_wg/img/selvipic/04.jpg"
					width="100%" height="580px" />
			</li>
			<li>
				<img src="https://selvishop.kr/_wg/img/selvipic/05.jpg"
					width="100%" height="580px" />
			</li>
		</ul>
		<!-- // bxslider -->
	</div>
	<!-- // 슬라이더 배너 -->

	<!-- 베스트 아이템 -->
	<div class="best_item">
		<div class="best_item_layout">
			<div class="title">BEST ITEM</div>
			<div>
				<ul class="best_product_list">
					<%
						List<Map<String, Object>> list = (List<Map<String, Object>>) request.getAttribute("list");

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
									<img src="/resources/img/<%=prdt_thumbnail[a]%>"
										alt="<%=prdt_name%>">
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
										<img src="/resources/img/shoppingmall/product/new.png"
											style="margin-left: 2px;" alt="NEW">
										<img src="/resources/img/shoppingmall/product/hit.png"
											style="margin-left: 4px;" alt="HIT">
										<img src="/resources/img/shoppingmall/product/best.png"
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
	<!-- // 베스트 아이템 -->

	<!-- 셀비 스튜디오 -->
	<div class="selvi_studio">
		<div class="selvi_studio_layer">
			<div class="box1">
				<div class="box_text">
					셀비 studio 바로가기 연결<br>
					(스튜디오 배너광고 이미지)
				</div>
			</div>
			<div class="box2">
				<div class="box2_1">
					<div class="box2_2">영상</div>
					<div class="box2_3">
						4단 스마트폰 삼각대 + 무료배송<br>
						엄청 좋은 삼각대입니다<br>
						이모든게 무료배송이라고?<br>
						크기도 적당하고 좋네
					</div>
				</div>
				<div class="box2_1">
					<div class="box2_2">영상</div>
					<div class="box2_3">
						4단 스마트폰 삼각대 + 무료배송<br>
						엄청 좋은 삼각대입니다<br>
						이모든게 무료배송이라고?<br>
						크기도 적당하고 좋네
					</div>
				</div>
				<div class="box3">
	                <div class="box3_1">
	                    <a class="video_more">영상 더 보러 가기 <i class='fas fa-angle-right'></i></a>
	                </div>
	            </div>
			</div>
		</div>
	</div>
	<!-- // 셀비 스튜디오 -->

	<!-- 포토 리뷰 배너 광고 이미지 -->
	<div class="photo_review_banner">
		<div class=layout>
			<div class="photo_review_banner_img">
				<img src="https://selvishop.kr/_wg/img/selvipic/01.jpg"
					width="1000px" height="200px" />
			</div>
		</div>
	</div>
	<!-- // 포토 리뷰 배너 광고 이미지 -->

	<!-- 리뷰 사진 -->
	<div class="review_photo">
		<div class="review_photo_layout">
			<div>
				<ul class="review_photo_list">
					<%
						for (int a = 0; a < 24; a++) {
					%>
					<li class="review_photo_li">
						<div class="photo">
							<!-- 썸네일 -->
							<div class="photo_thumbnail">
								<div class="review_thumbnail">
									<img src="/resources/img/b8928023-7771-48bd-bda8-7c6c935636fe_5b6d548b2db04b0cb42c7f8c37547865%20-%20%C3%AB%C2%B3%C2%B5%C3%AC%C2%82%C2%AC%C3%AB%C2%B3%C2%B8%20-%20%C3%AB%C2%B3%C2%B5%C3%AC%C2%82%C2%AC%C3%AB%C2%B3%C2%B8.jpg"
										alt="">
								</div>
							</div>
							<!-- // 썸네일 -->
						</div>
					</li>
					<%
						}
					%>
				</ul>
			</div>
		</div>
	</div>
	<!-- // 리뷰 사진 -->
</div>
<!-- // 본문 -->

<script
	src="${pageContext.request.contextPath}/resources/bxslider/src/js/jquery.bxslider.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/index/index.js"></script>

<%@include file="../include/footer.jsp"%>