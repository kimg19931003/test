package com.selvi.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.selvi.domain.BoardVO;
import com.selvi.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
	// 디비처리객체 연결 DAO
	@Inject
	private BoardDAO bdao;
	
	@Override
	public void regist(BoardVO vo) throws Exception {
         bdao.create(vo);		
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return bdao.listAll();
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		return bdao.read(bno);
	}

	@Override
	public void modify(BoardVO board) throws Exception {
		bdao.update(board);			
	}

	@Override
	public void remove(Integer bno) throws Exception {
		bdao.delete(bno);
	}	
}
