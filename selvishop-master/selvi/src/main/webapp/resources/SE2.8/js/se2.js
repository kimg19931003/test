/* 스마트 에디터 */
$(function() {
	// 전역변수
	var obj = [];
	var sSkinURI;
	
    var url = document.location.href;
	
	
	if(url.match(/admin/g) && url.match(/product/g) ){
		sSkinURI="/resources/SE2.8/SmartEditor2Skin_admin_product.html";
	}
	else if(!url.match(/admin/g) && url.match(/product/g) ){
		sSkinURI="/resources/SE2.8/SmartEditor2Skin_product.html";
	}
	else if(url.match(/admin/g) && url.match(/board/g) ){
		sSkinURI="/resources/SE2.8/SmartEditor2Skin_admin_board.html";
	}
	else if(!url.match(/admin/g) && url.match(/board/g) ){
		sSkinURI="/resources/SE2.8/SmartEditor2Skin_board.html";
	}
	
	
	
	// 스마트에디터 프레임생성
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : obj,
		elPlaceHolder : "smart_editor",
		sSkinURI : sSkinURI,
		fCreator: "createSEditor2",
		sCallback: "/admin/home",
		htParams : {
			// 툴바 사용 여부
			bUseToolbar : true,
			// 입력창 크기 조절바 사용 여부
			bUseVerticalResizer : true,
			// 모드 탭(Editor | HTML | TEXT) 사용 여부
			bUseModeChanger : true,
		}
	});
	
	// 전송버튼
	$("#saveShopProduct").click(function() {
		// id가 smarteditor인 textarea에 에디터에서 대입
		obj.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
		
		// 폼 submit
		$("#frm").submit();
	});
	

	
	
});