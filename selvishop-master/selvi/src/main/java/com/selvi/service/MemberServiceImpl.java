package com.selvi.service;

import javax.inject.Inject;

import com.selvi.domain.MemberVO;
import com.selvi.persistence.MemberDAO;

public class MemberServiceImpl implements MemberService {
	// 디비처리객체 연결 DAO
	@Inject
	private MemberDAO mdao;

	@Override
	public MemberVO getMember(Integer eid) throws Exception {
		return mdao.getMember(eid);
	}
}
