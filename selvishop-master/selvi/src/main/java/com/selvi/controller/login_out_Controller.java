package com.selvi.controller;

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
public class login_out_Controller {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(login_out_Controller.class);

	
	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;
	
	
	
	// 로그인 엔트리
	@RequestMapping(value = "login_out", method = RequestMethod.POST)
	@ResponseBody
	public String login_entry(HttpServletRequest req, HttpSession session, HttpServletResponse response) throws Exception {

		
        session.invalidate();


        return "redirect:/";
	}
	
	
	
}
