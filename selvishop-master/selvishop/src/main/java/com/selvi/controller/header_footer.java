package com.selvi.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class header_footer {
	
	private static final Logger logger = LoggerFactory.getLogger(header_footer.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "header", method = RequestMethod.GET)
	public ModelAndView header(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/include/header");

		return mv;
	}
	
	@RequestMapping(value = "footer", method = RequestMethod.GET)
	public ModelAndView footer(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/include/footer");

		return mv;
	}
	
}
