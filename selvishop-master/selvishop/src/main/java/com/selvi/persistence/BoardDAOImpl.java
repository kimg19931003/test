package com.selvi.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.selvi.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	// root-context.xml 로부터 SqlSession Bean을 주입 받아온다.
	@Inject
	private SqlSession session;

	// boardMapper.xml 안에있는 namespace를 저장
	private static String namespace = "com.selvi.mapper.BoardMapper";

	@Override
	public void create(BoardVO vo) throws Exception {
		// sql 쿼리 작성
		session.insert(namespace + ".create", vo);
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		return session.selectOne(namespace + ".read", bno);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		session.delete(namespace + ".delete", bno);
	}
}
