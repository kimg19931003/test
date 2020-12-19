/* 셀렉트박스 항목 눌렀을 때 - 개수만큼 페이징 처리 */
var lang_kor = {
	"decimal" : "",
	"emptyTable" : "데이터가 없습니다.",
	"info" : "_START_ - _END_ (총 _TOTAL_ 개)",
	"infoEmpty" : "데이터 없음",
	"infoFiltered" : "(전체 _MAX_ 개 중 검색 결과)",
	"infoPostFix" : "",
	"thousands" : ",",
	"lengthMenu" : "_MENU_",
	"loadingRecords" : "로딩중...",
	"processing" : "처리중...",
	/* "searchPlaceholder" : "검색어 입력", */
	"search" : "<img src='/resources/img/search.png'/>",
	"zeroRecords" : "검색된 데이터가 없습니다.",
	"paginate" : {
		"first" : "첫 페이지",
		"last" : "마지막 페이지",
		"next" : "다음",
		"previous" : "이전"
	},
	"aria" : {
		"sortAscending" : " :  오름차순 정렬",
		"sortDescending" : " :  내림차순 정렬"
	}
};

$(document).ready(function() {
	$('#product_table').DataTable({
		// 가로 스크롤 막대를 사용
		scrollX : true,
		// 세로 스크롤 막대를 사용(최대의 높이)
		scrollY : 200,

		columns : col_kor,
		language : lang_kor,

		// 엑셀 다운
		dom : 'Blfrtip',
		buttons : [ {
			extend : 'excel',
			text : '엑셀 저장',
			footer : true,
			className : 'exportBtn'
		} ]
	});
});