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



@Controller
public class Admin_loginController {
	
	
	
	    // mybatis 사용을 위한 클래스
		@Resource(name = "SampleService")
		private SampleService SampleService;
	

		// 로그인 겟
		@RequestMapping(value = "/admin/login", method = RequestMethod.GET)
		public ModelAndView admin_login(HttpServletRequest req, HttpSession sessions) throws Exception {
		
			
			ModelAndView mv = new ModelAndView("/admin/login/login");

			return mv;
		}
		
		
		
		// 로그인 포스트
		@RequestMapping(value = "/admin/login/post", method = RequestMethod.POST)
		@ResponseBody
		public String admin_login_post(HttpServletRequest req, HttpSession sessions) throws Exception {

			String state ="";
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("admin_mem_id", req.getParameter("mem_id"));
			map.put("admin_mem_pass", req.getParameter("mem_pass"));
			List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.admin_login_post");
			
			if(list.size()>0) {
				state ="success";
				sessions.setAttribute("admin_mem_id", req.getParameter("mem_id"));
				sessions.setAttribute("admin_mem_pass", req.getParameter("mem_pass"));
			}
			else {
				state="fail";
			}

			return state;
		}
		
		
		// 로그인 겟
		@RequestMapping(value = "/admin/logout", method = RequestMethod.POST)
		@ResponseBody
		public void admin_log_out(HttpServletRequest req, HttpSession sessions) throws Exception {
			
			sessions.invalidate();

		}

		
}
