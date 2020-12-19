package com.selvi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.SampleService;

@Controller
public class email_reply {

	 
	 @Resource(name="SampleService")
	    private SampleService SampleService;
	     
	 
	 @RequestMapping(value = "email_reply", method = RequestMethod.GET)
	 public ModelAndView email_reply(HttpServletRequest req,HttpSession session) throws Exception{
		 ModelAndView mv = new ModelAndView("/email_reply");
	     return mv;
	 }
	 
	 
	
	 @RequestMapping(value = "email_reply", method = RequestMethod.POST)
	 @ResponseBody
	 public Map<String, Object> email_reply_cert(HttpServletRequest req,HttpSession session) throws Exception{
		 
		   Random rnd = new Random();
		   String randomStr ="";
		   for(int i = 0 ; i<10; i++) {
			  randomStr = randomStr+String.valueOf((char) ((int) (rnd.nextInt(26)) + 65));
		   }
		 
		 
		    Map<String, Object> output = new HashMap<String, Object>();
		    Map<String, Object> overlap_output = new HashMap<String, Object>(); 
		 
		    HashMap<String, Object> map = new HashMap<String, Object>(); 
		    map.put("email", req.getParameter("email"));
		    map.put("email_pass", randomStr);
		    map.put("id", req.getParameter("id"));
		    
		    List<Map<String,Object>> overlap_list = SampleService.selectBoardList(map,"selvi.email_reply_mailcert");
		    
     if(overlap_list.size()>0) {
    	 overlap_output = overlap_list.get(0);
    	 
    	 if(!String.valueOf(overlap_output.get("email")).equals(req.getParameter("email"))) {
    		 
    		 
		    
		    List<Map<String,Object>> cert_list = SampleService.selectBoardList(map,"selvi.email_reply_cert");
		    
		    if(cert_list.size()>0){
		    	  
		    	
		    	  SampleService.selectBoardList(map,"selvi.email_reply_update");
		    	  			
			      email email = new email();
				  email.email_reply(randomStr, req.getParameter("email"));
		    	  		    	  
		    	  output.put("state","success");
		    }
		    else {
		    	  output.put("state","fail");
		    	 
		    }
		    
		    
		    
		// 메일 중복 검사    
    	 }
    	 else {
    		 output.put("state","mail_overlap");
    	 }
    	 
     }    
		    
		    return output;
	 }
	 
	 
	 
	 
	 
	 @RequestMapping(value = "email_reply_send", method = RequestMethod.POST)
	 @ResponseBody
	 public Map<String, Object> email_reply_send(HttpServletRequest req,HttpSession session) throws Exception{
		 
		    Map<String, Object> output = new HashMap<String, Object>();
		 
		 
		    Random rnd = new Random();
			String randomStr ="";
			for(int i = 0 ; i<10; i++) {
			 randomStr = randomStr+String.valueOf((char) ((int) (rnd.nextInt(26)) + 65));
			}
			
			email email = new email();
		    email.email_reply(randomStr, req.getParameter("email"));
		    
		    
		    
		    
		    return output;
	 }
	
		 
}
