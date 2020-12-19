package com.selvi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

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

import net.sf.json.JSONObject;
import service.SampleService;

@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
public class Member_find_accountController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(Member_find_accountController.class);

	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;

	email email = new email();
	
	// 아이디찾기  - 이메일로 찾기
	@RequestMapping(value = "/member/find_account_id_find_email", method = RequestMethod.POST)
	@ResponseBody
	public String login(HttpServletRequest req, HttpSession session) throws Exception {

		
		String state ="";
		JSONObject json = new JSONObject();
	
	
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mem_name", req.getParameter("mem_name"));
		map.put("mem_email", req.getParameter("mem_email"));
		
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.find_account_id_find_email");

		if(list.size()>0) {
		
			json.put("state", "success");
			json.put("val", list.get(0).get("mem_email"));
			json.put("val_kinds","email");
		}
		else {
			
			json.put("state", "fail");
			
		}
				
		return json.toString();
	}
	
	
	
	// 아이디찾기  - 휴대폰 번호로 찾기
	@RequestMapping(value = "/member/find_account_id_find_phone", method = RequestMethod.POST)
	@ResponseBody
	public String find_account_id_find_phone(HttpServletRequest req, HttpSession session) throws Exception {

	
		String state ="";
		JSONObject json = new JSONObject();
		

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mem_name", req.getParameter("mem_phone"));
		map.put("mem_email", req.getParameter("mem_name"));
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.find_account_id_find_email");

		if(list.size()>0) {
			
			json.put("state", "success");
			json.put("val", list.get(0).get("mem_phone"));
			json.put("val_kinds","phone");
			
		}
		else {
			
			json.put("state", "fail");
			
		}
				
				
		return json.toString();
	}
	
	
	
	
	
	
	
	
	
	
	
	// 비밀번호 찾기 - 휴대폰 번호로 찾기
	@RequestMapping(value = "/member/find_account_pass_find_email", method = RequestMethod.POST)
	@ResponseBody
	public String find_account_pass_find_email(HttpServletRequest req, HttpSession session) throws Exception {

		String state = "";

		

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", req.getParameter("mem_id"));
		map.put("mem_name", req.getParameter("mem_name"));
		map.put("mem_email", req.getParameter("mem_email"));
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.find_account_pass_find_email");

		if (list.size() > 0) {

		
			String tomail = (String) list.get(0).get("mem_email");

			Random rnd = new Random();
			String randomStr ="";
			for(int i = 0 ; i<10; i++) {
			   randomStr = randomStr+String.valueOf((char) ((int) (rnd.nextInt(26)) + 65));
			}
			
			state = email.pass_reply(randomStr, tomail);

		} else {

			state = "fail";

		}

		return state;
	}
	
	
	
	// 비밀번호 찾기 - 휴대폰 번호로 찾기
	@RequestMapping(value = "/member/find_account_pass_find_phone", method = RequestMethod.POST)
	@ResponseBody
	public String find_account_pass_find_phone(HttpServletRequest req, HttpSession session) throws Exception {

		String state = "";

		

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", req.getParameter("mem_id"));
		map.put("mem_name", req.getParameter("mem_phone"));
		map.put("mem_email", req.getParameter("mem_name"));
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.find_account_pass_find_phone");

		if (list.size() > 0) {

			String tomail = (String) list.get(0).get("mem_email");

			Random rnd = new Random();
			String randomStr ="";
			for(int i = 0 ; i<10; i++) {
			   randomStr = randomStr+String.valueOf((char) ((int) (rnd.nextInt(26)) + 65));
			}
			
			state = email.pass_reply(randomStr, tomail);

		} else {

			state = "fail";

		}

		return state;
	}
	
}
