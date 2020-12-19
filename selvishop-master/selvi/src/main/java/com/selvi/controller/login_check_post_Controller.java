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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.SampleService;

@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
public class login_check_post_Controller {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(login_check_post_Controller.class);

	
	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;
	
	
	
	// 로그인 엔트리
	@RequestMapping(value = "login_check", method = RequestMethod.POST)
	@ResponseBody
	public String login_entry(HttpServletRequest req, HttpSession session) throws Exception {

		String state = "";


        if(session.getAttribute("mem_id") != null && session.getAttribute("mem_pass") != null) {	
			return state = "login_check_success";
        }
        else {
        	return state = "login_check_fail";
        }
	


	}
	
	
	
	// 회원가입할때 아이디 존재하는지 확인해주는거
	@RequestMapping(value = "login_id_exist", method = RequestMethod.POST)
	@ResponseBody
	public String login_id_exist(HttpServletRequest req, HttpSession session) throws Exception {

		String state = "";

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", req.getParameter("mem_id"));
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.login_id_exist");
		
		if(list.size()>0) {
			state = "fail";
		}
		else {
			state = "success";
		}
		
		return state;
		

	}
	
	
	
}
