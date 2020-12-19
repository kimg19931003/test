<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>

<link href="/resources/css/admin/include/menu.css"
	rel="stylesheet" type="text/css">
<script src="/resources/js/admin/include/menu.js"></script>

<div class="accordion">    
    <ul>
        <li class="open">
        	<span>메인</span>
        	<ul>
                <li>
                	<a href="/">쇼핑몰</a>
                </li>
                <li>
                	<a href="/admin/home">관리자</a>
                </li>
           	</ul>
        </li>
        <li>
        	<span>쇼핑몰 메인 페이지 설정</span>
            <ul>
                <li>
                	<a href="">슬라이더</a>
                </li>
                <li>
                	<a href="">베스트 아이템</a>
                </li>
                <li>
                	<a href="">스튜디오</a>
                </li>
                <li>
                	<a href="">포토 리뷰</a>
                </li>
            </ul>
        </li>
        <li>
        	<span>주문</span>
            <ul>
                <li>
                	<a href="/admin/order?state=order_new">신규(<%=session.getAttribute("order_cnt") %>)</a>
                </li>
                <li>
                	<a href="/admin/order?state=deposit_wait">입금 대기</a>
                </li>
                <li>
                	<a href="/admin/order?state=pay_complete">결제 완료</a>
                </li>
                <li>
                	<a href="/admin/order?state=product_ready">상품 준비</a>
                </li>
                <li>
                	<a href="/admin/order?state=delivery_ready">배송 준비</a>
                </li>
                <li>
                	<a href="/admin/order?state=delivery_proceed">배송 중</a>
                </li>
                <li>
                	<a href="/admin/order?state=delivery_complete">배송 완료</a>
                </li>            
            </ul>
        </li>
        <li>
        	<span>C/S</span>
            <ul>
                <li>
                	<a href="/admin/cs?state=cancel_req">취소 요청</a>
                </li>
                <li>
                	<a href="/admin/cs?state=refund_req">반품 요청</a>
                </li>
                <li>
                	<a href="/admin/cs?state=exchange_req">교환 요청</a>
                </li>
            </ul>
        </li>
        <li>
        	<span>상품</span>
        	<ul>
                <li>
                	<a href="/admin/product">상품</a>
                </li>
            </ul>
        </li>
        <li>
        	<span>고객</span>
            <ul>
                <li>
                	<a href="/admin/customer">전체 (<%=session.getAttribute("member_cnt") %>)</a>
                </li>
                <li>
                	<a href="">재구매 (<%=session.getAttribute("member_cnt") %>)</a>
                </li>
                <li>
                	<a href="/admin/customer_leave">탈퇴 (<%=session.getAttribute("member_cnt") %>)</a>
                </li>
            </ul>
        </li>
        <li>
        	<span>게시판</span>
            <ul>
                <li>
                	<a href="/admin/board/all">전체 (<%=session.getAttribute("board_cnt") %>)</a>
                </li>
                <li>
                	<a href="/admin/board/notice">공지사항</a>
                </li>
                <li>
                	<a href="/admin/board/inquire">문의사항</a>
                </li>
                <li>
                	<a href="/admin/board/event">이벤트</a>
                </li>
                <li>
                	<a href="/admin/board/review">리뷰</a>
                </li>
            </ul>
        </li>
    </ul>
</div>