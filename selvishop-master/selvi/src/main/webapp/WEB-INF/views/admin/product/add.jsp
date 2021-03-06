<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page import="java.util.*"%>
<%
	Random r_add = new Random();
	int i_add = r_add.nextInt(1000);
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400"
	rel="stylesheet">
<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
<link
	href="/resources/css/admin/product/product_common.css?!=<%=i_add%>"
	rel="stylesheet" type="text/css">
<link
	href="/resources/css/admin/product/product_add.css?!=<%=i_add%>"
	rel="stylesheet" type="text/css">

<script src="/resources/js/common/jquery-3.3.1.js?!=<%=i_add%>"></script>

<!-- SmartEditor를 사용하기 위해서 다음 js파일을 추가 (경로 확인) -->
<script type="text/javascript" src="/resources/SE2.8/js/HuskyEZCreator.js?i=<%=i_add%>"></script>
<script type="text/javascript" src="/resources/SE2.8/js/se2.js?i=<%=i_add%>"></script>
<script type="text/javascript" src="/resources/js/sweetalert/sweetalert.js?i=<%=i_add%>"></script>

	
</head>
<body>
	<form action="/product_add" method="post"  id="frm"  enctype="multipart/form-data">
		<div class="contents_wrapper page add-product">
			<div class="include_field_left">
				<div class="properties wrapper">
					<div class="left-header">
						<span class="title">상품 설정</span> <a class="backToDash"
							onclick="fun_cancel()"> <i class="icon icon-black icon-exit"></i>
						</a>
					</div>
					<div class="left-scrollbar">
						<div class="scroll-wrapper scrollbar-inner"
							style="position: relative;">
							<div
								class="scrollbar-inner scroll-content scroll-scrolly_visible"
								style="margin-bottom: 0px; margin-right: 0px; height: 504px;">
								<div class="left-content">

									<div class="setting-row">
										<div class="title">
											<span>이름</span>
										</div>
										<div class="content">
											<input type="text" id="shopProductName" name="prdt_name">
										</div>
									</div>

									<div id="defaultProductSKU" class="setting-row">
										<div class="title">
											<span>상품 코드</span>
										</div>
										<div class="content sku">
											<input type="text" id="shopProductSKU" name="prdt_code">
											<div class="sku_duplicate"></div>
										</div>
									</div>
									<div class="setting-row">
										<div class="title">
											<span>정가 </span><span>(소비자가)</span>
										</div>
										<div class="content input">
											<input type="text" id="shopProductPrice" name="prdt_price" value="0"> <span>원</span>
										</div>
									</div>
									<div class="setting-row">
										<div class="title">
											<span>할인가 </span><span>(판매가)</span>
										</div>
										<div class="content input">
											<input type="text" id="shopProductDiscountPrice"
												class="checkNumberCanBeBlank" name="prdt_sale_price"> <span>원</span>
										</div>
									</div>

									<div class="setting-row">
										<div class="title">
											<span>대표 이미지 </span><span> (가로 900px 이상, 확대 기능 사용하면
												2000px 이상)</span>
										</div>
										<div class="content fill box" id="productImgList">
											<div id="addProductImgBtn" class="">
												<label for="productImageUploader"
													class="add img icon icon-black icon-add1 fileUploader-wrapper">
													<input id="productImageUploader" class="fileUploader"
													type="file" name="" data-url="/upload/uploadFile"
													data-i="productImage" multiple>
												</label>
											</div>
										</div>
									</div>
									<div class="setting-row">
										<div class="title">
											<span>요약 설명</span>
										</div>
										<textarea id="shopProductCaption" class="Content"
											style="margin: 0px; width: 310px; height: 90px;"></textarea>
									</div>
									<div id="defaultProductQuantity" class="setting-row">
										<div class="title">
											<span>수량</span>
										</div>
										<div class="content">
											<div class="fill box">
												<div class="no option">
													<div class="input">
														<input type="text" id="productQuantity"> <span class="product_quantity_after">개</span>
													</div>
													<div class="checkbox">
														<input type="checkbox" id="unlimit" checked="checked">
														<label for="unlimit" class="trans-fast">수량 관리 안 함</label>
													</div>
												</div>

											</div>
										</div>
									</div>
									<div class="setting-row">
										<div class="title">
											<span>옵션</span>
										</div>
										<div class="content">
											<div class="fill box options">
												<div class="text">추가된 옵션이 없습니다.</div>
												
												
												<div id="displayOptionList" class="option-list">
												   
												</div>
												
												
												<button id="setProductOption" type="button"
													class="add-btn btn icon icon-black icon-add1 dialog-activated"
													data-dialog="add-shopProductOptions"></button>
											
											</div>
										</div>
									</div>
									<div class="setting-row">
										<div class="title">
											<span>상태</span>
										</div>
										<div class="content state">
											<div class="border box" style="padding: 15px 25px;">
												<div class="status select-margin">
													<input type="checkbox" id="selling" name="sellingOrNot"
														value="selling" checked="checked"> 
														<label for="selling" class="trans-fast state_label"></label>
														<label for="selling" class="second_label">판매 중</label>
												</div>
												<div class="status select-margin" style="margin-left: 20px;">
													<input type="checkbox" id="stop_selling"
														name="sellingOrNot" value="stop_selling">   
														<label for="stop_selling" class="trans-fast state_label"></label>
														<label for="stop_selling" class="second_label">판매 중지</label>
												</div>
												<div class="status select-margin" style="margin-left: 20px;">
													<input type="checkbox" id="soldOut_selling"
														name="sellingOrNot" value="soldOut_selling"> 
														<label for="soldOut_selling" class="trans-fast state_label"></label>
														<label for="soldOut_selling" class="second_label">품절</label>
												</div>
											</div>
										</div>
									</div>

									<div class="border"
										style="border-bottom: 1px solid #ddd; margin: 0 -10px; margin-top: 40px; margin-bottom: 26px;">
									</div>
									<div class="setting-row">
										<div class="title">
											<span>카테고리</span>
										</div>
										<div class="content">
											<div class="fill box category">
											
											<c:if test="${fn:length(list)<=0 }" >	
											
												<div id="noShopCategory" class="text hide">추가된 카테고리가
													없습니다.</div>
													
											</c:if>		
													
												<div id="shopCategoryList" class="category-list">
												
												<c:choose>
												    <c:when test="${fn:length(list)>0 }" >												    			
												        <c:forEach var="row" items="${list}" >
												
												
												<c:set var="category_arr" value="${fn:split(row.admin_mem_category , '§') }" />
												
												
												<c:forEach var="arr" items="${category_arr }" varStatus="g" >
												
													 <div class='category categoryDiv'>
													     <div class='checkbox'>
													     	<input type='checkbox' name='paytype' id='checkbox${g.index}'>
													     	<label for='checkbox${g.index}' class='trans-fast'>
													     	  
													     	   ${arr}
													     	
													     	</label>
													     </div>
													     
													     <div class='icons'>
													     	<img class='edit_icon' src='/resources/img/pen_icon.png' />
													     </div>
													     
													     <div class='input_div'></div>
													 
													 </div>
													 
												</c:forEach>	 
													 
													 

                                                  </c:forEach>
                                                  	 </c:when>
                                                  		</c:choose>

												</div>
												<div class="add category input">
													<input type="text" id="newShopCategoryName">
													<button id="btn_addShopCategory" data-i="saveSection"
														type="button" class="category_btn btn btn-green">추가</button>
												</div>
											</div>
										</div>
									</div>


									<div class="setting-row">
										<div class="title">
											<span>검색 키워드 </span><span> (쉼표를 입력해서 구분해주세요.)</span>
										</div>
										<div class="content">
											<input type="text" id="shopProductMetaKeywords"
												placeholder="예시) 키워드1, 키워드2, 키워드3">
										</div>
									</div>




								</div>
							</div>
							<div class="scroll-element scroll-y scroll-scrolly_visible">
								<div class="scroll-element_outer">
									<div class="scroll-element_size"></div>
									<div class="scroll-element_track"></div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="include_field_right">
				<div class="information wrapper">
					<div class="right-header">
						<span class="title">상세 설명</span>
						<div class="btn-wrapper" style="display: inline-block;">
							<button id="saveShopProduct" type="button" class="btn btn-green">글쓰기</button>
						</div>
					</div>
					<div class="right-scrollbar">
						<div id="productDescriptionWrapper" class="right-content">
							<!-- 에디터 -->
								<textarea name="smarteditor" id="smart_editor"></textarea>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>     
	
	
	<!-- 옵션ㅜ가하기 창 -->
	<div class="option_add_blind">
	    <div class="option_add_layer">
	        <div class="option_add_header">
	            <div class="option_add_header_title">옵션 추가하기</div>
	            <div class="option_cancel_save">
	                <div class="option_cancel">취소</div>
	                <div class="option_save">저장</div>
	            </div>
	        </div>
	        
	        
	        <!-- 옵션 인포 -->
	        <div class="option_info_layer">
	            <div class="option_title">
	                <span>옵션 제목</span>
	                <span>옵션 값(엔터를 눌러서 입력해주세요.)</span>
	            </div>

				<div class="option_val_layer">

					<div class="option_val_div">
					
						<!-- 첫번째 옵션 제목 값 입력 폼 -->
						
						<div class='option_val_1_div'>
							<input type='text' class='option_val_1' />
						</div>

						<div class='option_val_2_div'>
							<div class='option_tag'></div>
							<input type='text' placeholder='예시)xl, 파랑' class='option_val_2' />
						</div>
						
						<!-- 첫번째 옵션 제목 값 입력 폼 -->

				

					</div>
				</div>

				<div class="option_add_button">옵션 추가하기</div>
	            
	            
	            <!-- 타이핑한 옵션 자세한 설정 -->
				<div class="option_detail_layer">
					<table class="option_detail_table">
					
					    <colgroup>
					        <col width="5%" />
					        <col width="22%" />
					        <col width="18%" />
					        <col width="18%" />
					        <col width="18%" />
					        <col width="10%" />
					        <col width="9%" />
					    </colgroup>
					
					    <thead>
					        <th>항목</th>
					        <th></th>
					        <th>옵션 코드</th>
					        <th>추가 금액</th>
					        <th>상품 금액</th>
					        <th>수량</th>
					        <th></th>
					    </thead>
					    
					    <tbody>
					    
					      <!-- append 붙이는 부분 -->
					        
					      <!-- append 붙이는 부분 -->  
					        
					    </tbody>
					</table>
				</div>

			</div>
	        <!-- 옵션 인포 -->
	        
	        
	        
	    </div>
	    
	</div>
	<!-- 옵션ㅜ가하기 창 -->
	
	<script type="text/javascript" src="/resources/js/admin/product/add.js?i=<%=i_add%>"></script>
	
</body>
</html>