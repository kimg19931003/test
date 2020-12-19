<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>

<%
	Random r_header = new Random();
	int i_header = r_header.nextInt(1000);
%>

<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400"
	rel="stylesheet">
<link href="/resources/css/admin/include/header.css?i=<%=i_header%>"
	rel="stylesheet" type="text/css" />
<link href="/resources/css/admin/include/common.css?i=<%=i_header%>"
	rel="stylesheet" type="text/css" />
<link href="/resources/css/common/jquery-ui.css?i=<%=i_header%>"
	rel="stylesheet" type="text/css" /> 
	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<script src="/resources/js/common/jquery-3.3.1.js?i=<%=i_header%>"></script>
<script src="/resources/js/common/jquery-ui.js?i=<%=i_header%>"></script> 
<script src="/resources/js/common/bootstrap.js?i=<%=i_header%>"></script>
<script src="/resources/js/admin/include/header.js?i=<%=i_header %>"></script> 

<script src="/resources/js/common/selectbox/selectbox.js?i=<%=i_header %>"></script>
<script src="/resources/js/common/selectbox/prism.js?i=<%=i_header %>"></script>
<script src="/resources/js/common/selectbox/init.js?i=<%=i_header %>"></script>

<!-- 스위트 얼러트 -->
<script src="/resources/js/sweetalert/sweetalert.js?i=<%=i_header %>"></script>


<!-- 엑셀 다운로드 -->
<script src="/resources/js/common/table2excel.js?i=<%=i_header %>"></script>

<%-- <link href="/resources/css/common/selectbox/selectbox.css?i=<%=i_header %>" rel="stylesheet" type="text/css"/>
<link href="/resources/css/common/selectbox/style.css?i=<%=i_header %>" rel="stylesheet" type="text/css"/>
<link href="/resources/css/common/selectbox/prism.css?i=<%=i_header %>" rel="stylesheet" type="text/css"/> --%>
</head>

<body>

	<!-- 헤더  -->
	<div id="header">

		<!-- 헤더 아이콘들 -->
		<div class="icons">

			<div class="logo">
				<img class="logo_img"
					src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/company_photo/%EC%8A%88%ED%8D%BC%EC%85%80+%EA%B0%80%EB%A1%9C%EB%A1%9C%EA%B3%A0(%ED%99%94%EC%9D%B4%ED%8A%B8).png" />
			</div>

			<div class="icon_menu">
				<span class="icon_menu_text">관리하기</span>
			</div>

			<div class="login_info">
				<span><img src="" /></span> <span><%=session.getAttribute("admin_mem_id") %></span> <span
					class="drop_login_menu"> <img class="drop_login_menu_img"
					src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/selvi_shopping_mall_pc/%EC%95%84%EB%9E%98%EB%A1%9C.png" />
				</span>
			</div>

			<!-- 로긴 화살표 눌렀을때 드랍다운 -->
			<div class="drop_login_popup">
				<div>supersell</div>

				<div class="logout">로그아웃</div>

				<!-- 로긴 화살표 눌렀을때 드랍다운 세모 방향표 -->
				<span>
					<div class="drop_login_tri"></div>
				</span>
				<!-- 로긴 화살표 눌렀을때 드랍다운 세모 방향표  -->
			</div>


			<!-- 로긴 화살표 눌렀을때 드랍다운 -->

		</div>
		<!-- 헤더 아이콘들 -->
	</div>