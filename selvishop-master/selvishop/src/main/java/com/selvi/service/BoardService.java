package com.selvi.service;

import java.util.List;

import com.selvi.domain.BoardVO;

public interface BoardService {
	// 서비스 동작을 구현 -> 추상메서드 형태로 선언

	// 게시판 글쓰기
	public void regist(BoardVO vo) throws Exception;

	// 게시판 정보(목록) 가져오기
	public List<BoardVO> listAll() throws Exception;

	// 게시판 정보 특정 글정보를 가져오기
	public BoardVO read(Integer bno) throws Exception;

	// 게시판 정보를 수정
	public void modify(BoardVO board) throws Exception;

	// 게시판 글 삭제
	public void remove(Integer bno) throws Exception;
}
