<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page import="java.util.*"%>
<%
	Random r_all = new Random();
	int i_all = r_all.nextInt(1000);
%> 
<%@include file="../include/header.jsp"%>
<%@include file="../include/menu.jsp"%>


<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400"
	rel="stylesheet">
	
<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">
<link
	href="${pageContext.request.contextPath}/resources/css/admin/product/product_common.css?i=<%=i_all%>"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/admin/product/product_all.css?i=<%=i_all%>"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/common/jquery-ui.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/common/jquery-ui.theme.css"
	rel="stylesheet" type="text/css">
	
	



<script src="${pageContext.request.contextPath}/resources/js/common/jquery-3.3.1.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/admin/product/sb_num.js?i=<%=i_all%>"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 테이블 관련 -->
<link
	href="${pageContext.request.contextPath}/resources/css/common/datatable.css?i=<%=i_all %>"
	rel="stylesheet" type="text/css"/>
<script
	src="${pageContext.request.contextPath}/resources/js/common/datatable.js?i=<%=i_all %>"></script>



<!-- 타이틀 / 검색 / 엑셀 다운 / 버튼 -->
<div id="dashboardContentWrapper" class="contents_field right">
	

	<!-- 상품 현황 -->
	<div class="mBox typeAll pannel">
		<ul class="state">
			<li>
				<strong>전체</strong>
				<a href="#none" class="eCountSearch"
					sort_type="" status="A">138</a>건
			</li>
			<li>
				<strong>판매함</strong>
				<a href="#none" class="eCountSearch"
					sort_type="selling" status="T">51</a>건
			</li>
			<li>
				<strong>판매안함</strong>
				<a href="#none" class="eCountSearch"
					sort_type="selling" status="F">87</a>건
			</li>
			<li>
				<strong>진열함</strong>
				<a href="#none" class="eCountSearch"
					sort_type="display" status="T">51</a>건
			</li>
			<li>
				<strong>진열안함</strong>
				<a href="#none" class="eCountSearch"
					sort_type="display" status="F">87</a>건
			</li>
		</ul>
	</div>
	<!-- // 상품 현황 -->

	<!-- 검색 -->
	<div class="optionArea" id="QA_list1">
		<div class="mOption" id="submitSearchBox">
			<table border="1" summary="" class="product_search">
				<caption>상품 검색</caption>
				<colgroup>
					<col width= "11%"> <!-- th -->
					<col width= "10%"> <!-- td -->
					<col width= "12%"> <!-- td -->
					<col width= "16%"> <!-- td -->
					<col width= "11%"> <!-- th -->
					<col width= "10%"> <!-- td -->
					<col width= "12%"> <!-- td -->
					<col width= "16%"> <!-- td -->
				</colgroup>
				<tbody data-ssd-dynamic-wrapper>
					<tr data-ssd-dynamic-row>
						<th scope="row" data-ssd-dynamic-field>검색분류</th>
						<td colspan="7" data-ssd-dynamic-field>
							<ul class="mForm typeVer" id="eSearchFormGeneral"
								style="padding-left: 0px;">
								<li>
									<select class="fSelect eSearch" name="eField[]">
										<option value="product_name" selected="selected">상품명</option>
										<option value="eng_product_name">영문상품명</option>
										<option value="item_name">상품명(관리용)</option>
										<option value="purchase_prd_name">공급사 상품명</option>
										<option value="naver_ks_product_name">네이버쇼핑 상품명</option>
										<option value="">--------------------</option>
										<option value="product_no">상품번호</option>
										<option value="product_code">상품코드</option>
										<option value="ma_product_code">자체 상품코드</option>
										<option value="item_code">품목코드</option>
										<option value="admin_item_code">자체 품목코드</option>
										<option value="">--------------------</option>
										<option value="Manufacturer">제조사</option>
										<option value="Supplier">공급사</option>
										<option value="Brand">브랜드</option>
										<option value="Trend">트렌드</option>
										<option value="Classification">자체분류</option>
										<option value="">--------------------</option>
										<option value="model_name">모델명</option>
										<option value="origin">원산지</option>
										<option value="Condition">상품상태</option>
										<option value="product_tag">상품 검색태그</option>
										<option value="product_weight">상품 전체중량</option>
										<option value="">--------------------</option>
										<option value="pm_memo">메모</option>
										<option value="ins_user">등록아이디</option>
									</select>
									<input type="text" class="fText eSearchText"
										style="width: 300px;" value="" name="eValue[]">
									<a href="#none" class="btnIcon icoMinus" data-ssd-dynamic-remove>
										<span>삭제</span>
									</a>
									<a href="#none" class="btnIcon icoPlus" style="display: inline-block;" data-ssd-dynamic-add>
										<span>추가</span>
									</a>
								</li>
							</ul>
							<p class="txtInfo">최대 10개까지 복수검색 가능</p>
						</td>
						
					</tr>
					<tr>
						<th scope="row">상품구분</th>
						<td>
							<label class="gLabel eSelected">
								<input type="radio" class="fChk" name="product_type" value="all"
									checked="checked"> 전체
							</label>
						</td>
						<td>
							<label class="gLabel">
								<input type="radio" class="fChk" name="product_type" value="basic"> 기본상품
							</label>
						</td>
						<td>
							<label class="gLabel">
								<input type="radio" class="fChk" name="product_type" value="set_complex"> 세트상품
							</label>
						</td>
						<td colspan="4"></td>
					</tr>
					<tr>
						<th scope="row">상품분류</th>
						<td colspan="7">
							<label class="gLabel eSelected">
								<input type="checkbox" class="fChk" checked="checked"
									name="eToggleDisplay" id="eToggleDisplay"> 전체 상품분류 보기
							</label>
							<div class="gSingle">
								<select class="fSelect category eCategory" id="eCategory1"
									depth="1" name="categorys[]">
									<option value="">- 대분류 -</option>
									<option value="46">SUNGLASSES</option>
									<option value="48">GLASSES</option>
									<option value="56">BRANDS</option>
									<option value="57">VINT_METAL</option>
									<option value="58">HOT PICKS</option>
									<option value="60">OWA</option>
									<option value="61">WINTER</option>
									<option value="62">selvi</option>
									<option value="66">집 안</option>
									<option value="64">집 밖</option>
									<option value="67">집안</option>
									<option value="68">무료배송</option>
								</select>
								<select class="fSelect category eCategory" id="eCategory2"
									depth="2" name="categorys[]">
									<option value="">- 중분류 -</option>
								</select>
								<select class="fSelect category eCategory" id="eCategory3"
									depth="3" name="categorys[]">
									<option value="">- 소분류 -</option>
								</select>
								<input type="hidden" name="category" id="eHiddenCategory" value="">
								<span class="gBreak">
									<label>
										<input type="checkbox" class="fChk category_sort" name="sub_cate" value="T"> 하위분류 포함
									</label>
									<label>
										<input type="checkbox" class="fChk category_sort" name="notincategory" value="T"> 분류 미등록상품
									</label>
								</span>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">상품등록일</th>
						<td colspan="7">
							<input type="text" id="pr_start_date" name="start_date"
							class="fText gDate" value="">
							&nbsp;~&nbsp; 
							<input type="text" id="pr_end_date" name="end_date"
								class="fText gDate" value="">
						</td>
					</tr>
					<tr>
						<th scope="row">판매상태</th>
						<td>
							<label class="gSingleLabel eSelected">
								<input type="radio" class="fChk eDisplayStatus" name="display"
									value="A" checked="checked"> 전체
							</label>
						</td>
						<td>
							<label class="gSingleLabel">
								<input type="radio" class="fChk eDisplayStatus" name="display" value="T"> 판매함
							</label>
						</td>
						<td>
							<label class="gSingleLabel">
								<input type="radio" class="fChk eDisplayStatus" name="display" value="F"> 판매안함
							</label>
						</td>
						<th scope="row">품절상태</th>
						<td>
							<label class="gSingleLabel eSelected">
								<input type="radio" class="fChk eDisplayStatus" name="selling"
									value="A" checked="checked"> 전체
							</label>
						</td>
						<td>
							<label class="gSingleLabel">
								<input type="radio" class="fChk eDisplayStatus" name="selling" value="T"> 품절
							</label>
						</td>
						<td>
							<label class="gSingleLabel">
								<input type="radio" class="fChk eDisplayStatus" name="selling" value="F"> 품절아님
							</label>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="mButton gCenter">
			<a href="#none" class="btnSearch" id="eBtnSearch">
				<span>검색</span>
			</a>
			<a href="#none" class="btnSearch reset" id="eSearchFormInit">
				<span>초기화</span>
			</a>
		</div>
	</div>
	<!-- // 검색 -->
	
	
	<!-- 상단 엑셀다운, 상품추가, 등 -->
	<div id="dashboardContentHeaderWrapper" class="field_header">
		<div class="nowSectionTitle field_header_title">전체 상품</div>

		<!-- 엑셀 다운 / 상품 추가 버튼 -->
		<div class="field_header_contents shop-products">
			<div class="button-wrap hover-trans tooltip-wrap">
				<button class="btn exportBtn excelExportButton btn-gray no-opacity"
					id="downloadAllProductsBtn">
					<i class="icon icon-black icon-export no-opacity"></i>
				</button>
			</div>
			<div class="button-wrap">
				<a id="a_addShopProduct" href="/admin/product/add?id=${row.prdt_idx_pk}">
					<button id="btn_addShopProduct" type="button"
						class="btn btn-black trigger selectTemplate">상품 추가하기</button>
				</a>
			</div>
		</div>
		<!-- // 엑셀 다운 / 상품 추가 버튼 -->
	</div>
	<!-- //  상단 엑셀다운, 상품추가, 등 -->
	
	
	
	

	<!-- 전체 상품 리스트 / 검색 결과 / 페이징 -->
	<div id="product_table_wrapper" class="dataTables_wrapper no-footer"
		style="top: 0px !important;">
		<div id="shopProductWrapper customer_form" class="wrapper">
			<!-- 전체 상품 리스트 / 검색 결과 - 리스트 제목 -->
			<table id="product_table" class="dataTable no-footer" role="grid">
				<colgroup>
					<!-- 라디오 버튼 -->
					<col width="5%">
					<!-- colspan="2" 이미지 -->
					<col width="10%">
					<!-- 상품 이름 -->
					<col width="35%">
					<!-- 가격 -->
					<col width="10%">
					<!-- 수량 -->
					<col width="15%">
					<!-- 상태 -->
					<col width="10%">
					<!-- 편집하기 -->
					<col width="15%">
				</colgroup>
				<thead>
					<!-- 라디오 버튼 -->
					<th>
						<input type='radio'/>
					</th>
					<!-- 이미지 / 상품 이름 -->
					<th></th>
					<th>상품 이름</th>
					<!-- 상품 이름 -->
					<!-- <th></th> -->
					<th>가격</th>   
					<th>수량</th>
					<th>상태</th>
					<th>
						<!-- 전체 상품 리스트 / 검색 결과 - 리스트 개수 -->
						<div class="dataTables_length" id="product_table_length"
							style="margin-left: 28%;">
							<label>
								<select name="product_table_length" aria-controls="product_table" class=""
									style="padding: 9px;">
									<option value="10" selected="selected">10개</option>
									<option value="20">20개</option>
									<option value="50">50개</option>
									<option value="100">100개</option>
								</select>
							</label>
						</div>
						<!-- // 전체 상품 리스트 / 검색 결과 - 리스트 개수 -->
					</th>
					<!-- 편집하기 -->
				</thead>
				<tbody>
				
				
				
				
		 <c:choose>
           <c:when test="${fn:length(list) > 0}">
             <c:forEach items="${list}" var="row">
             
             <c:set var="product_image" value="${fn:split(row.prdt_thumbnail,'§')}" />
           
             
			  		<!-- 판매, 품절 -->
					<tr class="tb_content" >
						<!-- 라디오 버튼 -->
						<td>
							<input type='radio'/>
						</td>
						<!-- 이미지 -->
						<td>
						
						  <c:forEach var="image" items="${product_image}" varStatus="g">
                               <c:if test="${g.index == 0}">

								  <img class="thumb img thumb-tb-img"
								  src="/resources/img/${image}">
							   </c:if>
						  </c:forEach> 
						  
						  		
						</td>
						<!-- 상품 이름 -->
						<td class="Product thumb-tb-title">${row.prdt_name }</td>
						<!-- 가격 -->
						<td class="Price">
							<span>${row.prdt_sale_price }원</span>
							<br>
							<span>${row.prdt_price }원</span>
						</td>
						<!-- 수량 -->
						<td class="Qty">${row.prdt_quantity }</td>
						<!-- 상태 -->
						<td class="status">${row.prdt_state }</td>     
						<!-- 편집하기 -->
						<td>   
							
								<button data-id='${row.prdt_idx_pk }' type="button" class="product_repair_button btn btn-gray btn-left no-opacity editProductBtn">
									편집하기
								</button>
							
						</td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>
				</tbody>
			</table>
			<!-- // 전체 상품 리스트 / 검색 결과 - 리스트 -->

			<!-- 페이징 -->
			<!-- <div id="shopProductPageCount" class="pagination_div">
				<span class="pagination_css pagination_navi" data-pageno="1">이전</span>
				<span class="pagination_css pagination_navi pagination_selected" data-pageno="1">1</span>
				<span class="pagination_css pagination_navi" data-pageno="2">2</span>
				<span class="pagination_css pagination_navi" data-pageno="3">3</span>
				<span class="pagination_css pagination_navi" data-pageno="4">4</span>
				<span class="pagination_css pagination_navi" data-pageno="5">5</span>
				<span class="pagination_css pagination_navi" data-pageno="6">6</span>
				<span class="pagination_css pagination_navi" data-pageno="6">다음</span>
			</div> -->
			<!-- // 페이징 -->

			<!-- 리스트 / 검색 결과 없을 때 -->
			<div class="no-searchProduct-msg no-content-msg hide">검색 결과가 없습니다.</div>
			<!-- // 리스트 / 검색 결과 없을 때 -->
		</div>
	</div>
	<!-- // 전체 상품 리스트 / 검색 결과 / 페이징 -->
</div>

<script src="${pageContext.request.contextPath}/resources/js/admin/product/product_all.js?i=<%=i_all%>"></script>
<!-- // 타이틀 / 검색 / 엑셀 다운 / 버튼 -->
</body>
</html>