package com.selvi.controller;

import java.util.ArrayList;
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
public class ProductViewController {


	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;
	
	//상품 상세
	@RequestMapping(value = "/product_view", method = RequestMethod.GET)
	public ModelAndView product_view(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/product/product_view");
		
		String[] option_1_arr = null;
		String[] option_2_arr = null;
		String[] option_3_arr = null;
		
		String[] option_1_add_price_arr = null;
		String[] option_2_add_price_arr = null;
		String[] option_3_add_price_arr = null;
		
		List<Map<String,Object>> option_list_1 = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> option_list_2 = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> option_list_3 = new ArrayList<Map<String,Object>>();
		
		Map<String, Object> option_output = new HashMap<String, Object>();
		Map<String, Object> option_save = new HashMap<String, Object>();
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("prdt_idx_pk", req.getParameter("id"));
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.product_view");
		
		
		
		
		// 옵션 분리해내는 기능
		if(list.size() >0) {
			option_output = list.get(0);
			
			
			
		
		    	option_1_arr = String.valueOf(option_output.get("prdt_option1_name")).split("§"); 
		
		    	option_2_arr = String.valueOf(option_output.get("prdt_option2_name")).split("§");
	
		    	option_3_arr = String.valueOf(option_output.get("prdt_option3_name")).split("§"); 
		
		    	
		    	
		    	option_1_add_price_arr = String.valueOf(option_output.get("prdt_option_add_price_1")).split("§"); 
	
		    	option_2_add_price_arr = String.valueOf(option_output.get("prdt_option_add_price_2")).split("§"); 
			
		    	option_3_add_price_arr = String.valueOf(option_output.get("prdt_option_add_price_3")).split("§"); 
		
		    
		    for(int i=0; i<option_1_arr.length; i++) {
		    	option_save = new HashMap<String, Object>();
		        option_save.put("prdt_name1_option", option_1_arr[i]);       
		        option_save.put("prdt_option_add_price_1", option_1_add_price_arr[i]);
		        option_list_1.add(option_save);
		        
		    }
		    
		    for(int i=0; i<option_2_arr.length; i++) {
		    	option_save = new HashMap<String, Object>();
		        option_save.put("prdt_name2_option", option_2_arr[i]);
		        option_save.put("prdt_option_add_price_2", option_2_add_price_arr[i]);
		        option_list_2.add(option_save);
		    }

		    for(int i=0; i<option_3_arr.length; i++) {
		    	option_save = new HashMap<String, Object>();
		        option_save.put("prdt_name3_option", option_3_arr[i]);
		        option_save.put("prdt_option_add_price_3", option_3_add_price_arr[i]);
		        option_list_3.add(option_save);
		    }
		    
		    
		}
		else {
			
		}
		
		
		
		
		// 조회수 1씩 카운팅 시켜주는곳
		SampleService.selectBoardList(map, "selvishop.product_view_hit");
		
		
		
		mv.addObject("list",list);
		mv.addObject("option_list_1",option_list_1);
		mv.addObject("option_list_2",option_list_2);
		mv.addObject("option_list_3",option_list_3);
		
		return mv;
	}
	

	
	// 상품 추천
	@RequestMapping(value = "/product_view_recommend", method = RequestMethod.POST)
	@ResponseBody
	public String product_view_recommend(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView();
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("prdt_idx_pk", req.getParameter("id"));
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.product_view_recommend");
		
		mv.addObject("list",list);

		return "";
	}	
	
	
	
	// 상품 추천
	@RequestMapping(value = "/product_view_basket", method = RequestMethod.POST)
	@ResponseBody
	public String product_view_basket(HttpServletRequest req, HttpSession sessions) throws Exception {

		String state="";
			
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("basket_idx_pk", req.getParameter("product_id"));
		map.put("basket_product_price", req.getParameter("option_total_price_val"));
		map.put("basket_product_num", req.getParameter("option_total_num_val"));
		map.put("basket_product_option", req.getParameter("arr_option_val"));
		map.put("basket_product_name", req.getParameter("prdt_name"));
	
		
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.product_view_basket");
			
		if(list.size()>0) {
			state="success";
		}
		else {
			state="fail";
		}

		return "";
	}	

    
}
