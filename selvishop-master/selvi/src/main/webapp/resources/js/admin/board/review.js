$("#board_table").dataTable({
	
		
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



// 밑방향 화살표 누를시 드랍다운 메뉴 나타남
$(document).on("click","body, html, .dropbtn",function(){
	
	
	var clas = $(this).attr("class");
	var index = $(this).data("tablechki");
	
	
	
	
	if($(".dropdown-content").eq(index).css("display") == "none"){
		$(".dropdown-content").eq(index).css("display","unset");
	}
	else{
		$(".dropdown-content").eq(index).css("display","none");
	}
	

	

	
}).on("blur","#dropdownbtn",function(){
	$("#dropdownbtn").css("display","none");
});






// 클릭시 테이블 정보 엑셀 다운로드하게 해주는 기능
$(".excelExportButton").click(function(){
	
	var date = new Date();
	
	var filename = String(date.getFullYear()) + String(date.getHours()) + String(date.getMinutes()) + String(date.getSeconds());
	
	$("#board_table").table2excel({
        name: "Worksheet Name",
        filename: filename,
        fileext: ".xls"
    });
	
});