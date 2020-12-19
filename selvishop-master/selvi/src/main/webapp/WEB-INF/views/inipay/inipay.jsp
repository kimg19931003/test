<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
	<title>inipay</title>
	<script src="/resources/js/common/jquery-3.3.1.js"></script>
	<script language="javascript" type="text/javascript" src="https://stgstdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
</head>
<body>

<script>
//결제
function fnGoInipay(){
  
	alert("알수없는 오류로 인하여 결제에 실패하였습니다. 다시한번 시도해주세요.");
    location.href="/";
}

fnGoInipay();

</script>

</body>
</html>
