<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
 <%@ page import="java.util.*"%>
<%
	Random r_login = new Random();
	int i_login = r_login.nextInt(1000);
%> 
	 
    <link href="/resources/css/login/login.css?i="<%=i_login %> rel="stylesheet">
    
    
<%@include file="include/header.jsp"%>

    <div id="login">
        <div id="login_form">
            <div class="login_explain">*가입하신 아이디와 비밀번호를 이용하여 로그인 하여주십시오.</div>
        	<div class="id_form"><input type="text" placeholder="id" id="user_id"/></div>
        	<div class="password_form"><input type="password" placeholder="pass" id="user_password"/></div>
        	<div class="login_button">로그인</div>
        </div>
    </div>


 <%@include file="include/footer.jsp"%>