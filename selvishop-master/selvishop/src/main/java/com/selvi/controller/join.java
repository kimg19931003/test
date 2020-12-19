package com.selvi.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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
public class join {
	
	@Resource(name = "SampleService")
	private SampleService SampleService;

	@RequestMapping(value = "join", method = RequestMethod.GET)
	public ModelAndView join(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/join");

		return mv;
	}
	
}
