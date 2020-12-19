package com.selvi.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import service.SampleService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model, HttpServletRequest req, HttpSession session) throws Exception {

		 ModelAndView mv;
		
		 String returnurl;
		
		 String userAgent = req.getHeader("User-Agent").toUpperCase();
	     
	     String IS_MOBILE = "MOBILE";
	     String IS_PHONE = "PHONE";
	     String IS_TABLET = "TABLET";
	     String IS_PC = "PC";
	 	
	     
	     // 모바일, pc 에 따라 레이아웃 크기 결정하는 메소드
	     /*if(userAgent.indexOf(IS_MOBILE) > -1) {
	    	 mv = new ModelAndView("index/m_index");
	     }
	     else {
	    	 mv = new ModelAndView("index/index");
	     }*/
	     
	     
	     
	     
	     
	    mv = new ModelAndView("index/index"); 
	    
	 	
		HashMap<String, Object> map = new HashMap<String, Object>();
	
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.index_product");
				
		mv.addObject("list",list);

		
		/* return "home"; */
		return mv;
	}
	
	
	
	
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public ModelAndView header(Locale locale, Model model, HttpServletRequest req, HttpSession session) throws Exception {
		
		ModelAndView mv = new ModelAndView("include/header"); 
		
		
		return mv;
	}
	
}
