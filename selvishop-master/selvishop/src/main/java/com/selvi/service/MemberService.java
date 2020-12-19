package com.selvi.service;

import com.selvi.domain.MemberVO;

public interface MemberService {
	// 서비스 동작을 구현 -> 추상메서드 형태로 선언
	
	// 회원 정보 가져오기
	public MemberVO getMember(Integer eid) throws Exception;
}
