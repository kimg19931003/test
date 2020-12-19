package com.selvi.persistence;

import java.util.List;

import com.selvi.domain.BoardVO;

public interface BoardDAO {
	// 게시판 글작성 
	public void create(BoardVO vo) throws Exception;
	
	// 게시글 읽어오기 (bno)
	public BoardVO read(Integer bno) throws Exception;

	// 게시글 전부를 읽어오는 동작 
	public List<BoardVO> listAll() throws Exception;
	
	// 게시글 정보를 수정 동작
	public void update(BoardVO vo) throws Exception;
	
	// 게시글 삭제
	public void delete(Integer bno) throws Exception;
}
