package com.selvi.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.selvi.domain.MemberVO;

public class MemberDAOImpl implements MemberDAO {
	/// root-context.xml 로부터 SqlSession Bean을 주입 받아온다.
	@Inject
	private SqlSession session;

	// MemberMapper.xml 안에있는 namespace를 저장
	private static String namespace = "com.selvi.mapper.member_SQl";
	
	@Override
	public MemberVO getMember(Integer eid) throws Exception {
		return session.selectOne(namespace + ".getMember", eid);
	}
}
