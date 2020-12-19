<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="java.util.*"%>
<%
	Random r_login = new Random();
	int i_login = r_login.nextInt(1000);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀비샵 공식 쇼핑몰</title>


<link href="/resources/css/admin/login/login.css?i=<%=i_login %>" rel="stylesheet" type="text/css" />

<link rel="shortcut icon" href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">


<script src="/resources/js/common/jquery-3.3.1.js"></script>
<script src="/resources/js/sweetalert/sweetalert.js"></script>
</head>
<body style="width:100%; height:100%; background-image:url('/resources/img/admin/common/login_image.jpg');">   
	


<!-- 홈 -->
<div id="login_form">

   <div class="admin_id_div">
       <input type="text" id="admin_id" />
   </div>
   
   <div class="admin_pass_div">
       <input type="password" id="admin_pass" />
   </div>
   
   <div class="login_entry">로그인하기</div>

</div>

	
	<script src="/resources/js/admin/login/login.js?i=<%=i_login%>"></script>
</body>
</html>