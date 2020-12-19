package com.selvi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import service.SampleService;

@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
public class mypageController {
	
	
	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;
	
	// 마이페이지 화면
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public ModelAndView mypage(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/mypage/mypage");

		return mv;
	}

	// 개인정보 수정 화면
	@RequestMapping(value = "/mypage/myinfo", method = RequestMethod.GET)
	public ModelAndView myinfo(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/mypage/myinfo");
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", sessions.getAttribute("mem_id"));
		
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.myinfo_get");
		
		
		if(list.size()>0) {
			mv.addObject("list",list);	
		}
		
		

		return mv;
	}

	// 고객 자주묻는 질문 화면
	@RequestMapping(value = "/mypage/qna", method = RequestMethod.GET)
	public ModelAndView qna(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/mypage/qna");

		return mv;
	}
	
	// 작성가능한 리뷰
	@RequestMapping(value = "/mypage/my_review", method = RequestMethod.GET)
	public ModelAndView my_review(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/mypage/my_review");

		return mv;
	}
	
	
	// 장바구니
	@RequestMapping(value = "/mypage/my_basket", method = RequestMethod.GET)
	public ModelAndView my_basket(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/mypage/my_basket");

		return mv;
	}
	
	
	// 주문 배송조회
	@RequestMapping(value = "/mypage/order_list", method = RequestMethod.GET)
	public ModelAndView order_list(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/mypage/order_list");

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("prdt_idx_pk", req.getParameter("id"));
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.order_list");
		
		
		mv.addObject("list",list);
		
		return mv;
	}
	
	
	// 주문 배송조회 상세보기
	@RequestMapping(value = "/mypage/order_list_detail", method = RequestMethod.GET)
	public ModelAndView order_list_detail(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/mypage/order_list_detail");

		return mv;
	}

}
