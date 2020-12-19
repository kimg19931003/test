package com.selvi.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.selvi.domain.BoardVO;
import com.selvi.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	
	
	// 게시판 글쓰기로 이동
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public ModelAndView write(HttpServletRequest req, HttpSession session) throws Exception {
		
		ModelAndView mv = new ModelAndView("/board/write");
		
		return mv;
		
		
	}
	
	
	
}
