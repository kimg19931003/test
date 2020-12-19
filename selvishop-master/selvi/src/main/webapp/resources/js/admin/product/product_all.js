/* 검색 관련*/
$(document).ready(function() {
	/* 검색분류 +, - 버튼 눌렀을 시 */

	/*상품 등록일*/ 
	var calendar = {
		monthNamesShort : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dayNamesMin : ['일','월','화','수','목','금','토'],
		weekHeader : 'Wk',
		dateFormat: 'yy-mm-dd',
		// 오토 리사이즈(body등 상위태그의 설정에 따른다)
		autoSize: false,
		// 월 변경가능
		changeMonth: true,
		// 년 변경가능
		changeYear: true,
		//년 뒤에 월 표시
		showMonthAfterYear: true,
		// 이미지표시
		buttonImageOnly: true,
		// 버튼 텍스트 표시
		buttonText: '달력선택',
		// next 아이콘의 툴팁.
		nextText: '다음 달',
		// prev 아이콘의 툴팁.
		prevText: '이전 달',
		// 이미지 주소
		buttonImage : 'https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/shoppingmall/admin/search/%EB%8B%AC%EB%A0%A5.gif',
		// 엘리먼트와 이미지 동시 사용(both,button)
		showOn: "both",
		// 2019년부터 2100년까지
		yearRange: '2019:2100',
		showButtonPanel: true, 
        currentText: '오늘 날짜', 
	};
	
	/* 상품 등록일 - 시작일 */
	$("#pr_start_date").datepicker(calendar);
	
	
	/* 상품 등록일 - 종료일 */
	$("#pr_end_date").datepicker(calendar);

	// 이미지 버튼 style 적용
	$("img.ui-datepicker-trigger").attr("style", "margin-left:5px; vertical-align:middle; cursor:pointer;");
	
	//자동으로 생성되는 div객체 숨김
	$("#ui-datepicker-div").hide();
	
	/* 검색 관련 */
	
	
	
	/* 검색 관련 */

	/* 검색 관련 */
	

});





// 편집하기 버튼 눌렀을때 나오는 편집 페이지로 이동 ( 상품 수정 페이지 )
$(".product_repair_button").click(function(){

	var product_id = $(this).data("id");
	location.href="/admin/product/repair?id="+product_id;
});




$("#product_table").dataTable({
	"pagingType" : "first_last_numbers",
	"dom": '<"title">flrtip',
	 "language": {
	        "emptyTable": "데이터가 없어요.",
	        "searchPlaceholder" : "검색어 입력",
	        "lengthMenu": "_MENU_",
	        "info": "현재 _START_ - _END_ / _TOTAL_건",
	        "infoEmpty": "데이터 없음",
	        "infoFiltered": "( _MAX_건의 데이터에서 필터링됨 )",
	        "search": "<img src='/resources/img/search.png' />",
	        "zeroRecords": "일치하는 데이터가 없어요.",
	        "loadingRecords": "로딩중...",
	        "processing":     "잠시만 기다려 주세요...",
	        "paginate": {
	            "next": "다음",
	            "previous": "이전",
	            "last" : ">>",
	            "first" : "<<"
	        }

	   },
	   
	 

});






//클릭시 테이블 정보 엑셀 다운로드하게 해주는 기능
$(".excelExportButton").click(function(){
	
	var date = new Date();
	
	var filename = String(date.getFullYear()) + String(date.getHours()) + String(date.getMinutes()) + String(date.getSeconds());
	
	$("#product_table").table2excel({
        name: "Worksheet Name",
        filename: filename,
        fileext: ".xls"
    });
	
});
