package com.selvi.controller;

import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class Admin_IncludeController {
	

		// 헤더 호출
		@RequestMapping(value = "/admin/header", method = RequestMethod.GET)
		public ModelAndView mybody(HttpServletRequest req, HttpSession sessions) throws Exception {
		
			
			ModelAndView mv = new ModelAndView("/admin/include/header");

			return mv;
		}

		
}
