<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	Random r_edit = new Random();
	int i_edit = r_edit.nextInt(1000);
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
	href="/resources/css/admin/board/board.css?i=<%=i_edit %>"
	rel="stylesheet" type="text/css">
<link
	href="/resources/css/admin/board/board_edit.css?i=<%=i_edit %>"
	rel="stylesheet" type="text/css">
	
	
<script src="/resources/js/common/jquery-3.3.1.js"></script>

  
<script type="text/javascript" src="/resources/SE2.8/js/HuskyEZCreator.js?i=<%=i_edit%>"></script>
<script type="text/javascript" src="/resources/SE2.8/js/se2.js?i=<%=i_edit%>"></script>
<script type="text/javascript" src="/resources/js/sweetalert/sweetalert.js?i=<%=i_edit%>"></script>


<!-- SmartEditor를 사용하기 위해서 다음 js파일을 추가 (경로 확인) -->

</head>
<body>


   <c:choose>
       <c:when test="${fn:length(list) > 0}">
           <c:forEach items="${list}" var="row">

	<div class="include_field_left">
		<div class="properties wrapper">
			<div class="left-header">
				<span class="title">게시판 게시글 설정</span>
				<a class="backToDash" onclick="history.back();">
					<i class="icon icon-black icon-exit"></i>
				</a>
			</div>
			<div class="left-scrollbar">
				<div class="scroll-wrapper scrollbar-inner" style="position: relative;">
					<div class="scrollbar-inner scroll-content"
						style="margin-bottom: 0px; margin-right: 0px; height: 1462px;">
						<div class="left-content">
							<div class="setting-row">
								<div class="title">
									<span>게시판</span>
								</div>
								<div class="content">
									<input type="text" id="boardName" value="${row.board_name }" readonly>
									<ul class="select_box">
									    <li data-code="review">review</li>
									    <li data-code="notice">notice</li>
									    <li data-code="QnA">QnA</li>
									    <li data-code="event">event</li>
									</ul>
								</div>
							</div>
							<div class="setting-row">
								<div class="title">
									<span>제목</span>
								</div>
								<div class="content">
									<input type="text" id="postTitle" value="${row.board_title}" placeholder="제목을 입력해주세요.">
								</div>
							</div>
							<div class="setting-row">
								<div class="title">
									<span>글쓴이</span>
								</div>
								<div class="content">
									<input type="text" id="postWriter" value="${row.board_writer }" value="이한결" >
								</div>
							</div>
							<div class="setting-row">
								<div class="title">
									<span>아이디 또는 이메일</span>
								</div>
								<div class="content">
									<input type="text" id="postWriterEmail" value="${row.board_writer_email }"
										placeholder="sample@sixshop.com" >
								</div>
							</div>
							<div class="setting-row" id="image_thumbnail">
								<div class="title">
									<span>썸네일</span>
								</div>
								<!-- 이미지 업로드시 -->
								
								<c:set var="board_thumbnail" value="${fn:split(row.board_thumbnail,'§') }" />
								   
								<div class="content fill box postImgList" id="postImgList" style="
								
								<c:if test="${fn:length(board_thumbnail) > 0 }" >
								    height:auto;
								</c:if>
								
								">
									<!-- <div id="addPostImgBtn" class="postImgBtn hide"> -->
									<input id="productImageUploader" class="fileUploader" type="file" name="files[]">
								
								    <div class="html_label_div">
								        <label for='productImageUploader' class='image_upload_label append_label'><i class='icon icon-black icon-add1'></i></label>
								    </div>
								
								
								<c:if test="${fn:length(board_thumbnail) eq 0 }" >
									<div id="addPostImgBtn" class="postImgBtn">
										<button class="btn add img fileUploader-wrapper">
											    <label for="productImageUploader" class="image_upload_label">
											         
											    	<i class="icon icon-black icon-add1"></i>			    
											        <span class="image_upload_text">이미지 업로드</span>

											    </label>  
		
										</button>
									</div>									
								</c:if>
									
									
									<div class='filereader_image_div'>																
									
										<c:forEach var="thumbnail" items="${board_thumbnail}" varStatus="g">
									
									    		<img src="/resources/img/admin/board/${thumbnail }" class='filereader_image' />

										</c:forEach>
									
									</div>
									
									
								</div>
								
							  
								
								<!-- 이미지 업로드하였을 때  -->
								<!--  
								<div class="postImg img flexThumbnailSize"
									imgsrc="/uploadedFiles/23223/post/image_1557809687965.jpg"
									uploadfileoriginalname="1.jpg"
									style="background-image: url(&quot;https://thumb.sixshop.kr/uploadedFiles/23223/post/image_1557809687965.jpg?width=2500&quot;);">
									
									
									<img src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/shoppingmall/admin/board/%EC%8D%B8%EB%84%A4%EC%9D%BC%EC%A0%9C%EA%B1%B0.png"
										class="delete"
										onclick="">
										
								</div>
								-->
								
							</div>
							<div class="border"
								style="border-bottom: 1px solid #ddd; margin: 0 -10px; margin-top: 40px; margin-bottom: 26px;">
							</div>
							<div class="setting-row">
								<div class="checkBox-element">
									<input type="checkbox" name="" id="secretOn"> <label
										for="secretOn" class="trans-fast">비밀글로 지정하기</label>
								</div>
								<div class="checkBox-element">
									<input type="checkbox" name="" id="noticeOn"> <label
										for="noticeOn" class="trans-fast">공지글로 지정하기</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		

		
	</div>
	
	
		
	
	
	<!-- 오른쪽 필드 -->

	<div class="include_field_right">
		<div class="information wrapper">
			<div class="right-header">
				<span class="title">상세 설명</span>
				<div class="btn-wrapper" style="display: inline-block;">
					<button id="savePost" data-i="saveSection" type="button"
						class="btn btn-green">저장</button>
				</div>
			</div>
			<div class="right-scrollbar">
				<div id="postContentWrapper" class="right-content"></div>
			</div>
		</div>


		<div class="right-scrollbar">
			<div id="productDescriptionWrapper" class="right-content">
				<!-- 에디터 -->
				<textarea name="smarteditor" id="smart_editor" style="width:100%;">${row.board_content}</textarea>
			</div>
		</div>


	</div>

	<!--  오른쪽 필드  -->
	   
	
	</c:forEach>
	    </c:when>
	        </c:choose>    
	   

	<script type="text/javascript" src="/resources/js/admin/board/edit.js?i=<%=i_edit%>"></script>
	
	
</body>
</html>