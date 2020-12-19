<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	
	
<%@ page import="java.util.*"%>
<%
	Random r_board_all = new Random();
	int i_board_all = r_board_all.nextInt(1000);
%>


<%@include file="../include/header.jsp"%>
<%@include file="../include/menu.jsp"%>

<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400" rel="stylesheet">
<link rel="shortcut icon" href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">





<link href="/resources/css/admin/board/board.css?i=<%=i_board_all %>" rel="stylesheet" type="text/css">
<link href="/resources/css/admin/board/board_inquire.css?i=<%=i_board_all %>" rel="stylesheet" type="text/css">


<!-- 테이블 관련 -->
<link href="/resources/css/common/datatable.css?i=<%=i_board_all %>" rel="stylesheet" type="text/css"/>
<script src="/resources/js/common/datatable.js?i=<%=i_board_all %>"></script>


 



<!-- 타이틀 / 검색 / 엑셀 다운 / 버튼 -->
<div id="dashboardContentWrapper" class="contents_field right">
	<!-- 헤더 -->
	<div id="dashboardContentHeaderWrapper" class="field_header">
		<div class="nowSectionTitle field_header_title">전체 글</div>
		
		<!-- 검색 -->
		<!--  
		<div class="field_header_contents boards search-wrap">
			<div class="search-box">
				<i class="icon icon-black icon-search"></i>
				<input type="text" id="searchBoardPost" placeholder="제목, 내용, 글쓴이">
			</div>
		</div>
		-->
		<!-- // 검색 -->

		<!-- 엑셀 다운 / 전체 / 미확인 / 확인 완료 / 글쓰기 버튼 -->
		<div class="field_header_contents shop-boards">
			<div class="button-wrap hover-trans tooltip">
				<button class="btn excelExportButton btn-gray" id="downloadAllboardsBtn">
					<i class="icon icon-black icon-export no-opacity"></i>
				</button>
				<!-- 툴팁 -->
				<span class="tooltiptext tooltip-bottom">엑셀</span>
			</div>
			<div class="button-wrap">
				<a id="a_addShopboard" href="write">
					<button id="btn_addShopboard" type="button" class="btn btn-black trigger">글쓰기</button>
				</a>
			</div>
		</div>
		<!-- // 엑셀 다운 / 전체 / 미확인 / 확인 완료 / 글쓰기 버튼 -->
	</div>
	<!-- // 헤더 -->

	<!-- 전체 게시판 리스트 / 검색 결과 / 페이징 -->
	<div id="board_table_wrapper" class="dataTables_wrapper" style="top: 0px !important;">
		<div id="shopboardWrapper" class="wrapper">
			<!-- 전체 상품 리스트 / 검색 결과 - 리스트 제목 -->
			<table id="board_table" class="dataTable no-footer">
				<colgroup>
					<!-- 라디오 버튼 -->
					<col width="5%">
					<!-- colspan="2" 이미지 -->
					<col width="10%">
					<!-- 제목 -->
					<col width="30%">
					<!-- 조회수 -->
					<col width="10%">
					<!-- 글쓴이 -->
					<col width="15%">
					<!-- 등록일 -->
					<col width="10%">
					<!-- 버튼 -->
					<col width="20%">
				</colgroup>
				<thead>
					<!-- 라디오 버튼 -->
					<th><input type='radio'/></th>
					<!-- 이미지 / 제목 -->
					<th></th>
					<th>제목</th>
					<!-- 제목 -->
					<!-- <th></th> -->
					<th>조회수</th>
					<th>글쓴이</th>
					<th>등록일</th>
					<th>관리</th>
					<!-- 편집하기 -->

				</thead>
				<tbody>
				
				
				<!-- db number 아님, 테이블 순서 번호 체크하기위해 작성 -->
				<%int table_check_i = 0; %>
				
				<c:choose>
				    <c:when test="${fn:length(list)>0 }">
				        <c:forEach var="row" items="${list}" >
				
					<tr class="tb_content" data-id="${row.board_idx_pk }">
						<!-- 라디오 버튼 -->
						<td><input type='radio'/></td>
						<!-- 이미지 -->
						<td>
						 
						    <c:set var="board_thumbnail" value="${fn:split(row.board_thumbnail,'§')}" />
						    
						    
						    <c:forEach var="thumbnail" items="${board_thumbnail}" >
						    
							    <img src="/resources/img/admin/board/${thumbnail}" style="" />
								
						    </c:forEach>
								
						</td>
						<!-- 제목 -->
						<td class="postTitle thumb-tb-title">${row.board_title }</td>
						<!-- 조회수 -->
						<td class="postHitCount">0</td>
						<!-- 글쓴이 -->   
						<td class="postWriter">${row.board_writer }</td>
						<!-- 등록일 -->
						<td class="postDate">${fn:substring(row.board_reg_date,2,16) }</td>
						<!-- 확인하기 / 편집하기 / 삭제하기 -->
						<td class="post_buttons">
							<button class="popup_layer_btn btn btn-gray btn-left confirmPostBtn">확인하기</button>
							<div class="dropdown">
								<button data-tablechki="<%=table_check_i %>" class="btn-gray btn-left dropbtn icon icon-black icon-down2"></button>
									
								<div class="dropdown-content" id="dropdownbtn" data-id="${row.board_idx_pk }">
									<a href="#">바로가기</a>
									<a href="/admin/board/edit?id=${row.board_idx_pk}">편집하기</a>
									<a href="#">삭제하기</a>
								</div>
								
							</div>
						</td>
					</tr>
				
				  <%table_check_i += 1; %>
				
				        </c:forEach>
				    </c:when>
				</c:choose>
				
				
				</tbody>
			</table>
			<!-- // 전체 상품 리스트 / 검색 결과 - 리스트 -->



            
			<!-- 확인하기 눌렀을 시 레이어 팝업 -->
			<!-- <div class="dialog feature dialog--open"> -->
		
			
			<div id="board_layer_popup" class="dialog feature" title="게시글 확인하기"
				style="padding-right: 0px !important; display:none;">
				<div class="dialog__content viewPostContentDialog viewContentDialog">
					<div class="scroll-wrapper content box scrollbar-inner"
						style="position: relative; padding-right: 0px !important;">
						<div class="content box scrollbar-inner"
							style="margin-bottom: 0px; margin-right: 0px; height: 337px;">
							<div class="content-wrapper" style="margin-top: 20px;">
								<!-- 제목 / 작성자 / 작성 날짜 -->
								<div class="viewPostHead field">
									<div class="text-wrapper">
										<div id="postTitle" class="viewPostTitle">공지사항 테스트</div>
										<div class="viewPostInfo">
											<span id="postWriter" class="viewPostWriter">이한결</span>
											<span id="createdDate" class="viewPostCreatedDate"> / 2019.04.04</span>
										</div>
									</div>
								</div>
								<!-- // 제목 / 작성자 / 작성 날짜 -->
								
								<!-- 내용 -->
								<div id="postContent" class="viewPostContent">
									<p>ㅇ루ㅘㅁㅇㄴ러ㅣㅇ노리ㅏㅓㅁㄴㅇㄹ</p>
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<p>ㅁㅇ노러ㅏㅁㄴ오리ㅏㅓㅁ뇌라</p>
									<p>&nbsp;</p>
									<p>ㅇ너람ㅇ너라ㅣㄴ머이ㅏ런ㅇ</p>
									<p>ㄴㅁ</p>
									<p>ㅇ럼나ㅣㅇ럼ㄴ;ㅣㅏㅇ러ㅏ민ㅇㄹ</p>
									<p>ㅁㄴ어라ㅣㅁㄴ얼;ㅣㅏㅁㄴ얼;ㅣㄴㅁ얼</p>
									<p>ㅁㄴㅇ러ㅏㅁㅇㄴ러ㅏㅣㄴㅁㅇ러</p>
									<p>ㄴㅇㅁ러ㅏㅁㄴㅇ러ㅣ만얾ㅇㄴ</p>
									<p>ㅓㄴㅁ아ㅣ럼니아러ㅏㅣㄴㅁㅇㄹ</p>
									<p>ㅁㄴ어라ㅣㅁㅇ너ㅣ람너아림</p>
									<p>ㅓㅏㅁㅇㄴ러ㅣㅁ낭러ㅣㅏ</p>
									<p>&nbsp;</p>
									<div class="embeddedContent oembed-provider-youtube"
										data-align="center"
										data-oembed="https://www.youtube.com/watch?v=N4VCVPYZitE"
										data-oembed_provider="youtube" data-resizetype="noresize"
										data-title="동영상 테스트" style="text-align: center">
										<iframe allowfullscreen="true" allowscriptaccess="always"
											frameborder="0" height="349" scrolling="no"
											src="//www.youtube.com/embed/N4VCVPYZitE?wmode=transparent&amp;jqoemcache=NEITq"
											title="동영상 테스트" width="425"></iframe>
									</div>
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<p>
										<img alt=""
											src="https://thumb.sixshop.kr/uploadedFiles/23223/post/image_1554342973018.png?width=500"
											style="max-height: 810px; max-width: 100%">
									</p>
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<p>
										<img alt=""
											src="https://thumb.sixshop.kr/uploadedFiles/23223/post/image_1554342987469.png?width=500"
											style="max-height: 810px; max-width: 100%">
									</p>
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<p>
										<img alt=""
											src="https://thumb.sixshop.kr/uploadedFiles/23223/post/image_1554342994170.png?width=500"
											style="max-height: 810px; max-width: 100%">
									</p>
									<p>&nbsp;</p>
								</div>
								<!-- // 내용 -->
								
								<!-- 좋아요 -->
								<div class="postLikeDiv boardPostLikeDiv designSettingElement text-assi text-body clearfix onlyPostLike">
									<span class="postLike-name boardPostLike-name">
										<i class="fa fa-heart" style="font-size: 24px; color: red;"></i>
										&nbsp;좋아요
									</span>
								</div>
								<!-- //좋아요 -->
								
								<!-- 댓글 -->
								<div class="viewPostCommentCount" id="postCommentCount">댓글 (2)</div>
								<div class="viewPostCommentlist" id="postCommentsList">
									<div id="viewPostComment205258" class="viewPostComment">
										<div class="viewPostCommentHead">
											<div class="viewPostCommentWriter">
												<span class="postCommentWriter">이한결</span>
												<span>2019.04.29 15:38</span>
											</div>
											<div class="postCommentDelete">삭제하기</div>
										</div>
										<div class="viewPostCommentContent">aaa</div>
									</div>
									<div id="viewPostComment205259" class="viewPostComment">
										<div class="viewPostCommentHead">
											<div class="viewPostCommentWriter">
												<span class="postCommentWriter">이한결</span>
												<span>2019.04.29 15:38</span>
											</div>
											<div class="postCommentDelete">삭제하기</div>
										</div>
										<div class="viewPostCommentContent">aaa</div>
									</div>
								</div>
								<div class="viewPostCommentWrite">
									<textarea id="postCommentContent"></textarea>
									<button class="btn btn-green" id="savePostComment"">댓글 쓰기</button>
								</div>
								<!-- // 댓글 -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 확인하기 눌렀을 시 레이어 팝업 -->

			<!-- 페이징 -->
			<!-- 
			<div id="shopboardPageCount" class="pagination_div">
				<span class="pagination_css pagination_navi" data-pageno="1">이전</span>
				<span class="pagination_css pagination_navi pagination_selected" data-pageno="1">1</span>
				<span class="pagination_css pagination_navi" data-pageno="2">2</span>
				<span class="pagination_css pagination_navi" data-pageno="3">3</span>
				<span class="pagination_css pagination_navi" data-pageno="4">4</span>
				<span class="pagination_css pagination_navi" data-pageno="5">5</span>
				<span class="pagination_css pagination_navi" data-pageno="6">6</span>
				<span class="pagination_css pagination_navi" data-pageno="6">다음</span>
			</div>
			-->
		
			<!-- // 페이징 -->
		</div>
	</div>
	<!-- // 전체 상품 리스트 / 검색 결과 / 페이징 -->
</div>
<!-- // 타이틀 / 검색 / 엑셀 다운 / 버튼 -->

            



<script src="/resources/js/admin/board/inquire.js?i=<%=i_board_all %>" ></script>



</body>
</html>