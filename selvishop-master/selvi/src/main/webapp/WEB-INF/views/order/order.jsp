<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*,net.sf.json.JSONArray,net.sf.json.JSONObject"%>
<%
	Random r_order = new Random();
	int i_order = r_order.nextInt(1000);
%> 



    
<link rel="shortcut icon"
	href="https://s3.ap-northeast-2.amazonaws.com/kimgeunho/favicon/favicon.ico">

<link href="/resources/css/common/common.css?i=<%=i_order%>" rel="stylesheet">
<link href="/resources/css/order/order.css?i=<%=i_order%>" rel="stylesheet">



<script src="/resources/js/common/jquery-3.3.1.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/js/sweetalert/sweetalert.js?i=<%=i_order%>"></script>
<script language="javascript" type="text/javascript" src="https://stgstdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
<script language="javascript" type="text/javascript" src="https://stgstdpay.inicis.com/stdjs/INIStdPay_close.js" charset="UTF-8"></script>

    <!-- 상단 고정 헤더 -->
    <div id="order_fix_header_blank">
    
    </div>

    <div id="order_fix_header">
    
        <span class="back">
            <img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_back_b.png" alt="뒤로가기">
        </span>
      
        <span>구매하기</span>
      
        <span>
            <a href="/" style="display:unset;"><img src="https://img.womanstalk.co.kr/upload/images/common/btn_gnb_home_b.png" alt="HOME"></a>
        </span>
    </div>
    <!-- 상단 고정 헤더 -->
    
    
    <!-- 결제 폼 -->
    <div id="order_form">
    
        <!-- 장바구니, 결제하기, 주문완료 과정 요약 -->
		<div class="myOrderIcon">
			<div class="icon_img">
			    <div><img src="https://img.womanstalk.co.kr/upload/images/mobile/ico_m_order1.png" /></div>
			    <div>장바구니</div>
			</div>
			
			<div class="icon_img"> 
			    <div><img src="https://img.womanstalk.co.kr/upload/images/mobile/ico_m_order3.png" /></div>
			    <div>결제하기</div>
			</div>
			
			<div class="icon_img">
			    <div><img src="https://img.womanstalk.co.kr/upload/images/mobile/ico_m_order4.png" /></div>
			    <div>주문완료</div>
			</div>
		</div>
		<!-- 장바구니, 결제하기, 주문완료 과정 요약 -->



<% 

    // 상품 상세페이지에서 선택한 옵션정보 저장하는곳
    JSONArray arr_option = (JSONArray) request.getAttribute("json_arr_option");
    JSONArray option_total_num_arr = (JSONArray) request.getAttribute("json_option_total_num_arr");
    JSONArray option_total_price_arr = (JSONArray) request.getAttribute("json_option_total_price_arr");
    

%>




	<!-- 주문상품 확인 란 -->
	<div class="order_product_info">

		<div class="order_product_info_title">주문확인</div>

     
    <%for(int i=0; i<arr_option.size(); i++){ 
    
        JSONObject arr_option_object = (JSONObject)arr_option.get(i);


        JSONObject option_total_num_object = (JSONObject)option_total_num_arr.get(i);
  

        JSONObject option_total_price_object = (JSONObject)option_total_price_arr.get(i);
      
    
    %>
		<div class="product_order_cert"  style="border-top:1px solid #d0d0d0;">
			<div class="inline-block order_product_info_img">
				<img
					src="https://img.womanstalk.co.kr/upload/product/20180921/prodImg3/2018092100011_view_mobile_1553226549.jpg" />
			</div>

			<div class="inline-block">
				<div>${prdt_name}</div>
				
			</div>
			
			<div class="inline-block">
			    <div><%=arr_option_object.get("arr_option") %></div>
			</div>
					
			<div class="inline-block">
			    <div><%=option_total_num_object.get("option_total_num_arr") %> 개</div>
			</div>
			
			<div class="inline-block">
			    <div><%=option_total_price_object.get("option_total_price_arr") %> 원</div>
			</div>
		</div>
    <%} %>
    
    
		
	</div>
	<!-- 주문상품 확인 란 -->
	


	

	<!-- 주문자 정보 -->
        <div class="order_user_info">
        
            <div class="order_user_info_title">주문자 확인정보</div>
        
            <table class="order_user_info_table">
                <colgroup>
                    <col width="20%">
                    <col width="80%">
                </colgroup>
            
                <tbody>
                    <tr>
                        <td>주문자명</td>
                        <td><input type="text" class="order_name" /></td>
                    </tr>
                    
                    <tr>
                        <td>핸드폰</td>
                        <td>
                            <select class="order_phone1" >
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                            
                            <span>--</span>
                            <input type='text' class="order_phone2" /><span>--</span>
                            <input type='text' class="order_phone3" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td>연락처</td>
                        <td>
                            <select class="order_phone_add_1" >
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                            
                            <span>--</span>
                            <input type='text' class="order_phone_add_2" /><span>--</span>
                            <input type='text' class="order_phone_add_3" />
                        </td>
                    </tr>
                      
                    <tr>
                        <td>이메일</td>
                        <td>
                            <input type="text" class="order_email_id" />
                            <span>@</span>
                        	<input type="text" class="order_email" readonly />
                        	
                        	<select class="order_email_select" >
                        	    <option value="choise">메일 선택</option>
                                <option value="naver.com">naver.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="hanmail.com">hanmail.com</option>
                                <option value="hand">직접입력</option>
                            </select>
                        </td>
                       
                    </tr>
                    
                </tbody>
            
            </table>        
            
            <div style="color:#e40069;font-size:12px;">핸드폰 번호가 틀릴 시, 비회원 주문정보를 확인하실 수 없으니 꼭 한번 더 확인해주세요!</div>
        </div>
        <!-- 주문자 정보 -->
        
        
        
        
        <!-- 배송정보 확인 -->
        <div class="order_shipping_info">
        
            <div class="order_shipping_info_title">주문자 확인정보</div>
        
            <table class="order_shipping_info_table">
                <colgroup>
                    <col width="20%">
                    <col width="80%">
                </colgroup>
            
                <tbody>
                    <tr>
                        <td>받는 분</td>
                        <td><input type="text" class="order_recipient" /></td>
                    </tr>
                    
                    <tr>
                        <td>주소</td>
                        <td>
                           <div class="addr_div">
                               <div><input type='text' value='' class='order_addr' readonly /></div>
                               <div><input type='text' value='' class='order_addr_detail'/></div>
                           </div>
                               
                           <div class="addr_button">주소검색</div>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>핸드폰</td>
                        <td>
                            <select class="order_recipient_phone_1" >
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                            
                            <span>--</span>
                            <input type='text' class="order_recipient_phone_2" /><span>--</span>
                            <input type='text' class="order_recipient_phone_3" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td>연락처</td>
                        <td>
                            <select class="order_recipient_phone_add_1" >
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                            
                            <span>--</span>
                            <input type='text' class="order_recipient_phone_add_2" /><span>--</span>
                            <input type='text' class="order_recipient_phone_add_3" />
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td colspan="2">
                            <div class="sortBox">
                                <select class="order_delivery_message" name="requestMemo">
                                    <option value="">배송시 요청 사항 선택하기</option>
                                    <option value="빠른 배송 부탁드립니다.">빠른 배송 부탁드립니다.</option>
                                    <option value="부재시 경비실에 맡겨 주세요.">부재시 경비실에 맡겨 주세요.</option>
                                    <option value="부재시 핸드폰으로 연락 주세요.">부재시 핸드폰으로 연락 주세요.</option>
                                    <option value="배송 전에 연락 바랍니다.">배송 전에 연락 바랍니다.</option>
                                </select>
                            </div>
                            <p>
                                <input type="text" class="order_delivery_message_add" name="etcMemo" placeholder="기타 내용을 입력해주세요.">
                            </p>
                        </td>
                    </tr>
                    
                </tbody>
            
            </table>        
            
            <div style="color:#e40069;font-size:12px;">※ 배송 준비중으로 넘어간 경우 배송지 변경이 불가하니 한번 더 확인해주세요!</div>
            
            
        </div>
        <!-- 배송정보 확인 -->
        
        
        
        <!-- 개인정보 수집 및 제 3자 공유 동의 -->
        <div class="order_personal_information">
		<div class="policyFormBox">
			<h3>개인정보 수집 및 제3자 공유 동의</h3>
			<div class="policyForm">
				<div class="policybox">
					<p class="plicybox_title">
						<strong>개인정보 수집 및 이용 동의</strong>
					</p>


					<table class="policytable">

						<colgroup>
							<col width="20%">
							<col width="80%">
						</colgroup>

						<tbody>
							<tr>
								<td>목적</td>
								<td>주문, 결제 및 배송서비스</td>
							</tr>
							<tr>
								<td>항목</td>
								<td>구매자정보, 주문비밀번호, 상품 구매/취소/반품/교환/환불 정보, 수령인정보, 결제정보, 송장정보,
									은행계좌정보, 휴대폰번호(휴대폰결제 시), 현금영수증정보</td>
							</tr>
							<tr>
								<td>보전기간</td>
								<td>법령에 따른 보존기간</td>
							</tr>
						</tbody>
					</table>
   
					<div class="order_personal_explain">
						<p class="order_personal_explain_title">
							<strong>개인정보 제3자 공유 동의</strong>
						</p>
						
						<p class="small_font">※ 동의하지 않을 시 상품배송, CS처리등 계약이행이 불가하여 거래하실 수 없습니다.</p>

						<p class="small_font">서비스 내 상품 및 서비스를 구매 및 이벤트를 응모 하고자 할 경우, 거래 당사자간 원활한 의사소통 및
							배송, 상담 등 거래 이행을 위하여 필요한 최소한의 개인정보만을 판매자 및 이행자에게 아래와 같이 공유하고 있습니다.</p>

						<p class="small_font">1. ㈜크라클팩토리는 귀하께서 우먼스톡 판매자로부터 상품 및 서비스를 구매하고자 할 경우, 정보통신망
							이용촉진 및 정보보호 등에 관한 법률 제 24조의 2(개인정보 공유동의 등)에 따라 아래와 같은 사항은 안내하고
							동의를 받아 귀하의 개인정보를 판매자에게 공유합니다. "동의"를 체크하시면 개인정보 공유에 대해 동의한 것으로
							간주합니다.</p>

						<p class="small_font">2 공유하는 개인정보 항목 : 성명, 전화번호, 휴대전화번호, 주소, 이메일주소, 통관고유부호(선택 시)</p>

						<p class="small_font">3 개인정보를 공유받는 자의 이용 목적 : 상품 및 경품(서비스) 배송(전송), 반품, 환불, 고객상담 등
							정보통신서비스제공계약 및 전자상거래(통신판매)계약의 이행을 위해 필요한 업무의 처리</p>

						<p class="small_font">4 개인정보를 공유받는 자의 개인정보 보유 및 이용 기간 : 이용 목적 이행 종료 후 1개월</p>

						<p class="small_font">5 동의 거부 시 불이익 : 본 개인정보 공유에 동의하지 않으시는 경우, 동의를 거부할 수 있으며, 이
							경우 상품구매가 제한될 수 있습니다.</p>

					</div>
				</div>

				<div class="btnCenter">
					<input type="radio" name="thirdInfoAgree" value="Y"> 동의합니다.
					<input type="radio" name="thirdInfoAgree" value="N" checked="">
					동의 하지 않습니다.
				</div>
			</div>
		</div>

	</div>
        <!-- 개인정보 수집 및 제 3자 공유 동의 -->
        
        
        
        
        
        <!-- 결제 수단 -->
        <!--
        <div class="order_payment">
            <div class="order_payment_way">신용카드</div>
            <div class="order_payment_way">네이버페이</div>
            <div class="order_payment_way">카카오페이</div>
            <div class="order_payment_way">휴대폰 결제</div>
            <div class="order_payment_way">무통장 입금</div>
            <div class="order_payment_way">실시간 계좌이체</div>
            <div class="order_payment_way">가상계좌</div>
        </div>
        -->
        <!-- 결제 수단 -->
        
        
        <!-- 네이버페이 간편결제 사용섬령 -->
        <div class="naver_pay_explain">
            <div class="naver_pay_explain_title">*네이버페이 간편결제 안내</div>
            <div class="naver_pay_explain_word">​주문 변경 시 카드사 혜택 및 할부 적용 여부는 해당 카드사 정책에 따라 변경될 수 있습니다.</div>
            <div class="naver_pay_explain_word">네이버페이는 네이버ID로 별도 앱 설치 없이 신용카드 또는 은행계좌 정보를 등록하여 네이버페이 비밀번호로 결제할 수 있는 간편결제 서비스입니다. </div>
            <div class="naver_pay_explain_word">네이버페이 카드 간편결제는 네이버페이에서 제공하는 카드사 별 무이자, 청구할인 혜택을 받을 수 있습니다.</div>
            <div class="naver_pay_explain_word">- 결제 가능한 신용카드 : 신한, 삼성, 현대, BC, 국민, 하나, 롯데, NH농협, 씨티 </div>
            <div class="naver_pay_explain_word">- 결제 가능한 은행 : NH농협, 국민, 신한, 우리, 기업, SC제일, 부산, 경남, 수협, 우체국, 광주, 대구, 전북, 제주은행, 새마을금고, 미래에셋대우 </div>
        </div>
        <!-- 네이버페이 간편결제 사용섬령 -->
        
        
        <!-- 결제 최종정보 -->
        <div class="order_pay_info">
            <table class="order_pay_info_table">
                <thead>
                    <th>주문금액</th>
                    <th>배송비</th>
                    <th>할인금액</th>
                </thead>
                
                <tbody>
                    <tr>
                        <td>30,900원</td>
                        <td>0원</td>
                        <td>0원</td>
                    </tr>  
                    
                    <tr>
                        <td colspan="3">결제예정금액 : 30,900원</td>
                    </tr> 
     
                </tbody>
            </table>
        
        </div>
        <!-- 결제 최종정보 -->
        
        
        
        <!-- 결제하기  고정하단 바 -->
        <div class="fixed_bottom_pay">
            <div class="back_product">상품으로 돌아가기</div>
            <div class="product_pay">결제하기</div>
        </div>
        <!-- 결제하기  고정하단 바 -->
        
        
        
	</div>
    <!-- 결제 폼 -->


         
    
   <!-- 이니시스 페이 설정 인풋:히든 -->
   <form id="sendPayForm" name="sendPayForm" method="post">
    <!-- inipay hidden parameter start -->
    <input type="hidden" name="version" value="1.0" >
    <input type="hidden" name="mid" value="${mid}" >
    <input type="hidden" name="goodsname" value="${prdt_name }" >
    <input type="hidden" name="oid" value="${oid}" >
    
    <input type="hidden" name="price" value="${price }" >
    
    <input type="hidden" name="currency" value="WON" >
    <input type="hidden" name="buyername" value="${memberVo.nm}" >
    <input type="hidden" name="buyertel" value="<c:out value="${memberVo.tel1}-${memberVo.tel2}-${memberVo.tel3}"/>" >
    <input type="hidden" name="buyeremail" value="<c:out value='${memberVo.email1}@${memberVo.email2}'/>" >
    <input type="hidden" name="timestamp" value="${timestamp}" >
    <input type="hidden" name="signature" value="${signature}" >
    <input type="hidden" name="returnUrl" value="${siteDomain}/inipay_return" >
    <input type="hidden" name="closeUrl" value="${siteDomain}" >
    <input type="hidden" name="mKey" value="${mKey}" >
    <input type="hidden" name="gopaymethod" value="" >
    <input type="hidden" name="offerPeriod" value="" >
    <input type="hidden" name="acceptmethod" value="CARDPOINT:HPP(1):no_receipt:va_receipt:vbanknoreg(0):below1000" >
    <input type="hidden" name="languageView" value="ko" >
    <input type="hidden" name="charset" value="" >
    <input type="hidden" name="payViewType" value="" >
    <input type="hidden" name="quotabase" value="${cardQuotaBase}" >
    <input type="hidden" name="ini_onlycardcode" value="" >
    <input type="hidden" name="ini_cardcode" value="" >
    <input type="hidden" name="ansim_quota" value="" >    
    <input type="hidden" name="vbankRegNo" value="" >
    <input type="hidden" name="merchantData" id="merchantData" value="" >
   </form>
   <!-- 이니시스 페이 설정 인풋:히든 -->

   <button id="btnPay" onclick="INIStdPay.pay('sendPayForm')" style="display:none;">결제요청</button>
 

<%@include file="../include/footer.jsp"%>

<script src="/resources/js/order/order.js?i=<%=i_order%>"></script>


</body>

</html>
