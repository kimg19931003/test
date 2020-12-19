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
public class MemberController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;

	// 로그인 화면
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv;

		if (session.getAttribute("mem_id") != null && session.getAttribute("mem_pass") != null) {
			mv = new ModelAndView("redirect:/mypage");
			logger.info("마이페이지 이동");
		} else {
			mv = new ModelAndView("/member/login");
			logger.info("로그인 페이지 이동");
		}

		return mv;
	}
	
	
	// 비회원 로그인 화면
	@RequestMapping(value = "/member/nomem_login", method = RequestMethod.GET)
	public ModelAndView nomem_login(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv;

        mv = new ModelAndView("/member/nomem_login");
		

		return mv;
	}

	// 아이디 찾기
	@RequestMapping(value = "/member/find_id", method = RequestMethod.GET)
	public ModelAndView find_id(HttpServletRequest req, HttpSession session) throws Exception {
		logger.info("아이디 찾기 페이지 이동");

		ModelAndView mv = new ModelAndView("/member/find_id");

		return mv;
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/member/find_pass", method = RequestMethod.GET)
	public ModelAndView find_pass(HttpServletRequest req, HttpSession session) throws Exception {
		logger.info("비밀번호 찾기 페이지 이동");

		ModelAndView mv = new ModelAndView("/member/find_pass");

		return mv;
	}

	// 회원가입 화면
	@RequestMapping(value = "/member/join", method = RequestMethod.GET)
	public ModelAndView join(HttpServletRequest req, HttpSession session) throws Exception {
		logger.info("회원가입 페이지 이동");

		ModelAndView mv = new ModelAndView("/member/join");

		return mv;
	}
	
	
	// 회원가입 완료화면
	@RequestMapping(value = "/member/join_complete", method = RequestMethod.GET)
	public ModelAndView join_complete(HttpServletRequest req, HttpSession session) throws Exception {
		logger.info("회원가입 페이지 이동");

		ModelAndView mv = new ModelAndView("/member/join_complete");

		return mv;
	}

	// 회원가입 엔트리
	@RequestMapping(value = "join_entry", method = RequestMethod.POST)
	@ResponseBody
	public String join_entry(HttpServletRequest req, HttpSession sessions) throws Exception {

		String state = "";

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", req.getParameter("mem_id"));
		map.put("mem_name", req.getParameter("mem_name"));
		map.put("mem_pass", req.getParameter("mem_pass"));
		map.put("mem_pass2", req.getParameter("mem_pass2"));
		map.put("mem_phone", req.getParameter("mem_phone"));
		map.put("mem_email", req.getParameter("mem_email"));
		map.put("mem_addr", req.getParameter("mem_addr"));
		map.put("mem_gender", req.getParameter("mem_gender"));
		map.put("mem_birth", req.getParameter("mem_birth"));
		map.put("mem_personal_info_agree", req.getParameter("mem_personal_info_agree"));
		map.put("mem_sevice_terms_agree", req.getParameter("mem_sevice_terms_agree"));
		map.put("mem_shopping_info_agree_sms", req.getParameter("mem_shopping_info_agree_sms"));
		map.put("mem_shopping_info_agree_email", req.getParameter("mem_shopping_info_agree_email"));
	
	

		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.member_cert_id");

		System.out.println(list.size());

		if (list.size() <= 0) {
			SampleService.selectBoardList(map, "selvishop.member_insert_join");
			return state = "id_cert_success";
		} else {
			return state = "id_cert_fail";
		}
	}

	// 로그인 엔트리
	@RequestMapping(value = "login_entry", method = RequestMethod.POST)
	@ResponseBody
	public String login_entry(HttpServletRequest req, HttpSession session) throws Exception {

		String state = "";

		Map<String, Object> output = new HashMap<String, Object>();

		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("mem_id", req.getParameter("id"));
		map.put("mem_pass", req.getParameter("password"));

		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.member_login_entry");

		if (list.size() != 0) {
			output = list.get(0);
			
			session.setAttribute("mem_id", output.get("mem_id"));
			session.setAttribute("mem_pass", output.get("mem_pass"));
			session.setAttribute("mem_name", output.get("mem_name"));
			
			// 최근 로그인한 시각
			SampleService.selectBoardList(map, "selvishop.member_last_login");
			
			return state = "login_entry_success";
		} else {
			return state = "login_entry_fail";
		}

	}

	// 로그아웃
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest req, HttpSession session) throws Exception {
		logger.info("로그아웃 - 메인 페이지 이동");

		// 세션 초기화
		session.invalidate();
		
		/*return mv;*/
		return "redirect:/";
	}
	
	
	
	// 계정찾기 페이지
	@RequestMapping(value = "/member/find_account", method = RequestMethod.GET)
	public ModelAndView find_account(HttpServletRequest req, HttpSession session) throws Exception {
		logger.info("계정찾기 페이지 이동");

		ModelAndView mv = new ModelAndView("/member/find_account");

		return mv;
	}
	
	// 계정찾기 완료 페이지
	@RequestMapping(value = "/member/find_account_complete", method = RequestMethod.GET)
	public ModelAndView find_account_complete(HttpServletRequest req, HttpServletResponse response, HttpSession session) throws Exception {
		logger.info("계정찾기 페이지 이동");

		ModelAndView mv = new ModelAndView("/member/find_account_complete");
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		HashMap<String, Object> map;
		
		
		
		if(!req.getParameter("val_kinds").isEmpty() && !req.getParameter("val").isEmpty()) {
			
			map = new HashMap<String, Object>();
			if(req.getParameter("val_kinds").equals("email")){
				map.put("val", req.getParameter("val"));
			    list = SampleService.selectBoardList(map, "find_account_complete_pass_find_email");
			}
			else if(req.getParameter("val_kinds").equals("phone")) {
				map.put("val", req.getParameter("val"));
				list = SampleService.selectBoardList(map, "find_account_complete_pass_find_phone");
			}
			else {
				response.sendRedirect("/");
			}
			
		}

		
		
		
		
		
		
		if(list.size()>0) {
			mv.addObject("mem_id", list.get(0).get("mem_id"));
			session.setAttribute("find_mem_id", list.get(0).get("mem_id"));
			session.setAttribute("find_mem_email", list.get(0).get("mem_email"));
		}
		else {
			response.sendError(1);
		}
		
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	// 계정 비밀번호 찾기 페이지
	@RequestMapping(value = "/member/find_account_complete_pass", method = RequestMethod.GET)
	public ModelAndView find_account_complete_pass(HttpServletRequest req, HttpSession session) throws Exception {
		logger.info("계정찾기 페이지 이동");

		ModelAndView mv = new ModelAndView("/member/find_account_complete_pass");

		return mv;
	}

}
