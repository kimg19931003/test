package com.selvi.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.selvi.domain.MemberVO;
import com.selvi.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberService service;
	
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void read(@RequestParam("eid") int eid, Model model) throws Exception {
		// @RequestParam("eid") int eid
		// int eid =Integer.parseInt(request.getParameter("eid")) 와 유사하다.

		logger.info("getMember() 메서드 호출");

		// service 객체로부터 정보를 전달받아서 view(jsp) 페이지로 이동
		MemberVO vo = service.getMember(eid);

		model.addAttribute("vo", vo);
		// model.addAttribute(vo);
	}
}
