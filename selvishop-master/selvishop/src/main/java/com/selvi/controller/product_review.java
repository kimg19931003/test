package com.selvi.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.selvi.service.BoardService;
import service.SampleService;

@Controller
public class product_review {
	
	
	
	@Resource(name="SampleService")
    private SampleService SampleService;
	
	
	@RequestMapping(value = {"/review" , "/m_review"}, method = RequestMethod.GET)
	public ModelAndView review(HttpServletRequest req, HttpSession session) throws Exception{
		
		String url = req.getServletPath(); 
		ModelAndView mv = null;
		
		if(url.equals("/review")) {	
		     mv = new ModelAndView("product_review");
		}
		else if(url.equals("/m_review")) {
			 mv = new ModelAndView("m_product_review");
		}
		
		
		HashMap<String, Object> map = new HashMap<String, Object>(); 
	    Map<String, Object> output = new HashMap<String, Object>();

        List<Map<String,Object>> product_review = SampleService.selectBoardList(map,"selvishop.product_review");
        List<Map<String,Object>> product_review_count = SampleService.selectBoardList(map,"selvishop.product_review_count");
    
        output = product_review_count.get(0);
        String cnt = String.valueOf(output.get("cnt"));
    
        mv.addObject("list", product_review);
        mv.addObject("count", cnt);
    
	    return mv;
	}  
	
	
	@RequestMapping(value = "/review_upload", method = RequestMethod.POST)
	public void review_upload_post(HttpServletRequest req, HttpSession session) throws Exception{
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		
		map.put("review_text", req.getParameter("review_text"));
	    map.put("image_name_arr", req.getParameter("image_name_arr"));
	    map.put("image_name", req.getParameter("image_name"));

	    SampleService.selectBoardList(map,"selvishop.product_review_insert");
		
	}
	
	
	
	@RequestMapping(value = "/slide", method = RequestMethod.GET)
	public ModelAndView slide(HttpServletRequest req, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/img_slide");
		
		return mv;
		
	}
}
