package com.selvi.persistence;

import com.selvi.domain.MemberVO;

public interface MemberDAO {
	// 로그인
	// 게시글 읽어오기 (eid)
	public MemberVO getMember(Integer eid) throws Exception;
}
