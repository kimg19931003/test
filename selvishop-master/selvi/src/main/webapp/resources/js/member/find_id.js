$(function() {
    // 아이디 찾기 / 비밀번호 찾기 탭 클릭시
    $('.find_tab_content').hide(); // 처음에 비밀번호 탭 숨기기
    $('.find_tab_content:first').show(); // 처음에 아이디 탭 보여주기
    
    $('div.findArea .tabBtn button').click(function() {
        // 선택 안 되었을 때
        $("div.findArea .tabBtn button").removeClass("on");

        // 선택 되었을 때
        $(this).addClass("on");

        // 탭 숨기기
        $('.find_tab_content').hide();

        var tab = $(this).attr('rel');
        
        $("#" + tab).fadeIn()
    });


    // 비밀번호 찾기 SMS / 이메일 클릭시
    $('.find_pass_content').hide(); // 처음에 이메일 탭 숨기기
    $('.find_pass_content:first').show(); // 처음에 SMS 탭 보여주기

    $('div.findArea .findChkBox button.btnChk').click(function() {
        // 선택 안 되었을 때
        $("div.findArea .findChkBox button.btnChk").removeClass("on");

        // 선택 되었을 때
        $(this).addClass("on");

        // 탭 숨기기
        $('.find_pass_content').hide();

        var tab = $(this).attr('rel');
        
        $("#" + tab).fadeIn()
    });
});