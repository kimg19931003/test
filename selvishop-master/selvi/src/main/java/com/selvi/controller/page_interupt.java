package com.selvi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import service.SampleService;

public class page_interupt extends HandlerInterceptorAdapter{
	
	
	
	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;
	
	
	
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse response, Object handler) throws Exception{

    
		 HttpSession session = req.getSession();
		
     /*
	     String userAgent = req.getHeader("User-Agent").toUpperCase();
	     
	     String IS_MOBILE = "MOBILE";
	     String IS_PHONE = "PHONE";
	     String IS_TABLET = "TABLET";
	     String IS_PC = "PC";
	 	
	     
	     // 모바일, pc 에 따라 레이아웃 크기 결정하는 메소드
	     if(userAgent.indexOf(IS_MOBILE) > -1) {
	    	 session.setAttribute("layout_size", "<style>#wrap{width:98% !important;}</style>"); 
	     }
	     else {
	    	 session.setAttribute("layout_size", "<style>#wrap{width:1000px !important;}</style>");
	     }
	   */
	     
	     
	     String url = req.getServletPath(); 
	     
	 
	     if(!url.matches(".*/admin.*")) {
	    	 
	
	    
	    	 boolean login_check = url.matches(".*/order.*");
	 	     
	    	 if(login_check) {
	    		 if(session.getAttribute("mem_id") != null && session.getAttribute("mem_pass") != null) {
	    		     return true;
	    		 }
	    		 else {
	    			 response.sendRedirect("/member/login");
	    			 return false;
	    		 }
	    	 }
	   
	     }
	     else {
	    
	    

	    	 String pattern = "^\\S+.(?i)(img|jpg|png|css|js)$";
	   

	         boolean login_page_check = url.matches(".*/admin/login.*");
	    	 boolean ex_file = Pattern.matches(pattern, url);
	    	 boolean post = url.matches(".*/admin/log_out*");
	    	
	    	 
	    	 
	    	 
	    	 if(!login_page_check) {
	    		 
	    		 if(!ex_file) {
	    		
	    			if(session.getAttribute("admin_mem_id") != null && session.getAttribute("admin_mem_pass") != null) {  	
	    				
	    				
	    				
	    				
	    				// 메뉴에 각 항목별 전체 갯수 알려주는 세션값넣기
	    				String[] mybatis_arr = {"order_total_count", "product_total_count", "member_total_count", "board_total_count"};
	    				String[] cnt_arr = {"order_cnt", "product_cnt", "member_cnt", "board_cnt"};
	    				
	    				
	    				HashMap<String, Object> map = new HashMap<String, Object>();
	    				
	    				for(int i=0; i<mybatis_arr.length; i++) {
	    					List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop."+mybatis_arr[i]);
	    					
	    					if(list.size()>0) {
	    						session.setAttribute(cnt_arr[i], list.get(0).get(cnt_arr[i]));
	    					}
	    					else {
	    						session.setAttribute(cnt_arr[i], "error");
	    					}
	    					
	    				}	    				
	    				
	    				
	    		 		return true;
    		 		}
    		 		else {
    			 	
    			 		response.sendRedirect("/admin/login");
    			 		return false;
    		 		}
	    		 
	    		 }
	    	 }
	    	 
	     }
	     
	
	     return true;
	    
    	
	
	}
	
	
}
