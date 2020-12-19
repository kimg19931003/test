package com.selvi.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.SampleService;

@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
public class reviewController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(reviewController.class);

	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;

	// 이벤트 상세내용 댓글
	@RequestMapping(value = "/cs/event_review_post", method = RequestMethod.POST)
	@ResponseBody
	public void event_review_post(HttpServletRequest req, HttpSession session) throws Exception {


		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("review_content", req.getParameter("val"));
		map.put("review_user_id", req.getParameter("review_user_id"));
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.event_review_post");

	
	}
	
	// 문의안내 상세내용 댓글
	@RequestMapping(value = "/cs/faq_review_post", method = RequestMethod.POST)
	@ResponseBody
	public void faq_review_post(HttpServletRequest req, HttpSession session) throws Exception {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("review_content", req.getParameter("val"));
		map.put("review_user_id", req.getParameter("review_user_id"));
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.event_review_post");

	}
	
	
	
	
	// 공지사항 상세내용 댓글
	@RequestMapping(value = "/cs/notice_review_post", method = RequestMethod.POST)
	@ResponseBody
	public void notice_review_post(HttpServletRequest req, HttpSession session) throws Exception {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("review_content", req.getParameter("val"));
		map.put("review_user_id", req.getParameter("review_user_id"));
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.event_review_post");

	}
		
		
		
	
	
	
	

	
	


}
