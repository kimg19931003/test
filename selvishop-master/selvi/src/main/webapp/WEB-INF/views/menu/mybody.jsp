<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%
	Random r_mybody = new Random();
	int i_mybody = r_mybody.nextInt(1000);
%> 




<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<link href="/resources/css/common/common.css?i=<%=i_mybody%>" rel="stylesheet">
<link href="/resources/css/menu/mybody.css?i=<%=i_mybody%>" rel="stylesheet">

<%@include file="../include/header.jsp"%>


    <div id="ad_form">
    
       <div><a> <img src="https://img.womanstalk.co.kr/upload/banner/2019030515320031583.jpg" alt=""></a></div>
       <div><a> <img src="https://img.womanstalk.co.kr/upload/banner/201903051904475779D.jpg" alt=""></a></div>

    </div>
    
    
    
    <div id="sns_form">
    
        <span class="explain_text">친구들에게 공유하기!</span>
    
        <div><img src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/%ED%8E%98%EC%9D%B4%EC%8A%A4%EB%B6%81.png" /></div>
        <div><img src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/%EC%9D%B8%EC%8A%A4%ED%83%80.png" /></div>
        <div><img src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/%EC%9C%A0%ED%8A%9C%EB%B8%8C.png" /></div>
    
    </div>






<%@include file="../include/footer.jsp"%>

<script>
	
</script>