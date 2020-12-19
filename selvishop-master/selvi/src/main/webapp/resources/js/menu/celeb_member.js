// 스크롤시 헤더 색상 변경
$(window).scroll(function() {
	var scrollTop = $(window).scrollTop();
	var header = $("#celebSearchTopMenu").parent();
	
	if (scrollTop > 0) {
		header.removeClass('wh');
	}
	else {
		header.addClass('wh');
	}
});

/*---------------------------------------------------------------------------*/

/* 무한 스크롤 */
let isEnd = false;

$(function() {
	$(window).scroll(
			function() {
				let $window = $(this);
				let scrollTop = $window.scrollTop();
				let windowHeight = $window.height();
				let documentHeight = $(document).height();

				console.log("documentHeight:" + documentHeight
						+ " | scrollTop:" + scrollTop + " | windowHeight: "
						+ windowHeight);

				// scrollbar의 thumb가 바닥 전 30px까지 도달 하면 리스트를 가져온다.
				if (scrollTop + windowHeight + 30 > documentHeight) {
					//Ajax 요청을 통해 서버로부터 비동기 방식을 데이터를 리스트로 가져온다.
					fetchList();
				}
			});

	fetchList();

})

let fetchList = function() {
	if (isEnd == true) {
		return;
	}

	// 방명록 리스트를 가져올 때 시작 번호
	// renderList 함수에서 html 코드를 보면 <li> 태그에 data-no 속성이 있는 것을 알 수 있다.
	// ajax에서는 data- 속성의 값을 가져오기 위해 data() 함수를 제공.
	let startNo = $("#list-guestbook li").last().data("no") || 0;

	$.ajax({
		url : "/guestbook/api/guestbook/list?no=" + startNo,
		type : "GET",
		dataType : "json",
		success : function(result) {
			// 컨트롤러에서 가져온 방명록 리스트는 result.data에 담겨오도록 했다.
			// 남은 데이터가 5개 이하일 경우 무한 스크롤 종료
			let length = result.data.length;

			// 전역 변수인 isEnd = true로 할당
			if (length < 5) {
				isEnd = true;
			}
			
			// 데이터의 개수 만큼 반복문을 돌면서 renderList() 함수를 호출
			$.each(result.data, function(index, vo) {
				renderList(false, vo);
			})
		}
	});
}

let renderList = function(mode, vo) {
	// 리스트 html을 정의
	let html = "<li data-no='" + vo.no + "'>" + "<strong>" + vo.name
			+ "</strong>" + "<p>" + vo.content.replace(/\n/gi, "<br>") + "</p>"
			+ "<strong></strong>" + "<a href='#' data-no='" + vo.no
			+ "'>삭제</a>" + "</li>"

	if (mode) {
		$("#list-guestbook").prepend(html);
	} else {
		$("#list-guestbook").append(html);
	}
}

/*---------------------------------------------------------------------------*/

