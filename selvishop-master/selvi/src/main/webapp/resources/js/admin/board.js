// 버튼을 클릭하면  숨김과 드롭다운 내용 표시 사이에서 전환
function btnDropdown() {
	document.getElementById("dropdownbtn").classList.toggle("show");
}

$(document).ready(function() {
	// 외부에서 클릭한 경우 드롭다운 닫기
	window.onclick = function(e) {
		if (!e.target.matches('.dropbtn')) {
			var myDropdown = document.getElementById("myDropdown");
			if (myDropdown.classList.contains('show')) {
				myDropdown.classList.remove('show');
			}
		}
	};
	
	//----------------------------------------------------------------------------------
	//----------------------------------------------------------------------------------
	// 딤 레이어 팝업
	// 메소드
	// $("#id").dialog() // 해당 id로 지정된 영역의 내용을 다이얼로그로 생성
	// $("#id").dialog("open") // 다이얼로그 오픈
	// $("#id").dialog("close") // 다이얼로그를 화면상에서 보이지 않게함
	// $("#id").dialog("isOpen") // 해당 id를 가진 다이얼로그가 열려진 상태인 경우 true값
	// $("#id").dialog("moveToTop") // 다이얼로그를 최상위로 배치

	// 해당 id로 지정된 영역의 내용을 다이얼로그로 생성
	$("#board_layer_popup").dialog({
		// dialog가 선언되면 자동으로 열릴것인가
		autoOpen : false,
		// dialog를 modal 창으로 띄울것인지 결정
		modal : true,
		// dialog 넓이 지정
		width : "760px",
		// dialog 높이 지정
		// height : "890px",
		// 위치 center, left, right, top, bottom, x,y
		position : {
			my : "center", // dialog 의 위치
			at : "center", // 위치할 개체의 위치
			of : "body" // 위치할 개체
		},
		// 사이즈 조절가능 여부
		resizeable : false
	});

	$(".popup_layer_btn").on("click", function() {
		$("#board_layer_popup").dialog("open");
	});
	
	//----------------------------------------------------------------------------------
	//----------------------------------------------------------------------------------
	// 검색
	// 키보드 키 눌렀을 때 이벤트 발생
	$("#searchBoardPost").keyup(function() {
		// keyup이 되었을 때 텍스트 필드에 입력한 문자열값을 읽어내 변수 k에 저장
		var k = $(this).val();
		
		// 텍스트 필드에 입력한 값을 읽어낸 후에 #board_table > tbody > tr와 같이 자식 선택자를
		// 연속으로 사용하여 tbody 태그 내의 tr에 대해 hide() 메서드 호출 후 모두 화면에 보이지않도록 함
		$("#board_table > tbody > tr").hide();
		
		// :contains() 필터 활용하여 검색어를 포함하는 tr만 화면에 나타나게 함
		// #board_table > tbody > tr > td:nth-child(7n+3):contains('두') 형태의 선택자
		// 문자열을 먼저 생성한 후에 $() 함수에 인자로 전달 // 선택자가 복잡하여 미리 문자열을 생성
		// #board_table 자식 중 tbody, tbody 자식 중 tr, tr 자식 중 td:nth-child(7n+3)를 찾아
		// :contains("두")로 "두"라는 문자열을 포함하는 td셀을 선택
		// 화면에 나타나도록 처리하는 요소는 td 부모인 tr이므로 parent() 메서드로 부모 요소를 선택하여 화면에 나타나도록 함
		var title = $("#board_table > tbody > tr > td:nth-child(7n+3):contains('" + k + "')");
		var writer = $("#board_table > tbody > tr > td:nth-child(7n+5):contains('" + k + "')");

	    $(title).parent().show();
	    $(writer).parent().show();
	});
});