package com.selvi.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cglib.core.DefaultNamingPolicy;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import service.SampleService;

@Controller
public class Admin_product_Add_RepairController {
	// 로깅을 위한 변수


	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;
	
	// 어드민 상품추가 - 스마트에디터 이미지 추가 기능
	@RequestMapping(value = "/admin_product_image_add", method = RequestMethod.POST)
	@ResponseBody
	public void product_image_add(HttpServletRequest req, HttpSession sessions, HttpServletResponse response) throws Exception {
		
		System.out.println("현재 product");
		
		String sFileInfo = "";
		
		String name = req.getHeader("file-name");
		String ext = name.substring(name.lastIndexOf(".")+1);

		String defaultPath = req.getServletContext().getRealPath("/");

		System.out.println(defaultPath);
		
		String path = defaultPath+"resources/img/shoppingmall/admin/product/";
		System.out.println("파일경로 : "+path);
		File file = new File(path);
		if(!file.exists()) {
		    file.mkdirs();
		}
		String realname = UUID.randomUUID().toString() + "." + ext;
		InputStream is = req.getInputStream();
		OutputStream os=new FileOutputStream(path + realname);
		
		System.out.println("파일경로 : "+path + name);
		int numRead;
	
		byte b[] = new byte[Integer.parseInt(req.getHeader("file-size"))];
		while((numRead = is.read(b,0,b.length)) != -1){
		    os.write(b,0,numRead);
		}
		if(is != null) {
		    is.close();
		}
		os.flush();
		os.close();
		sFileInfo += "&bNewLine=true&sFileName="+ name+"&sFileURL="+"/resources/img/shoppingmall/admin/product/"+realname;
		System.out.println(sFileInfo);

		PrintWriter print = response.getWriter();
		print.print(sFileInfo);
		print.flush();
		print.close();
		
	}
	
	
	
	
	// 어드민 상품추가 
	@RequestMapping(value = "/admin_product_add", method = RequestMethod.POST)
	@ResponseBody
	public void product_add(HttpServletRequest req, HttpSession sessions) throws Exception {
		
		req.setCharacterEncoding("utf-8");

		String defaultPath = req.getServletContext().getRealPath("/");
		
				
		System.out.println(defaultPath);
		
		
		String path = "C:/Users/DD Studio/git/selvi/selvi/src/main/webapp/resources/img/shoppingmall/admin/product/";

		String name_arr ="";
		UUID randomeUUID = UUID.randomUUID();

		File dir = new File(path);
		
		if (!dir.isDirectory()){
			dir.mkdirs(); 
		}
		

        MultipartHttpServletRequest multi = (MultipartHttpServletRequest) req;
        MultipartFile multifile = null;
        Iterator<String> iterator = multi.getFileNames();
        
       
        
        while(iterator.hasNext()){
        	
        	multifile = multi.getFile(iterator.next());
        	
	        if(!multifile.isEmpty()){
	            System.out.println("------------- file start -------------");
	            System.out.println("name : "+multifile.getName());
	            System.out.println("filename : "+multifile.getOriginalFilename());
	            System.out.println("size : "+multifile.getSize());
	            System.out.println("-------------- file end --------------\n");
	        }
	        
	        
	        String name = multifile.getOriginalFilename();
	        
	        File file = new File(path+name);
	        boolean isExists = file.exists();

	        if(isExists){
	        	name = randomeUUID.toString()+"_"+name;
	        }
	        else {
	        	
	        }
	        
	        multifile.transferTo(new File(path+name));

	        name_arr = name_arr +"§"+ name;
	        System.out.println(name_arr);

	        
	        
        }
        
        

        
        String prdt_thumbnail = name_arr;
     
        
		
       

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("prdt_name", new String(multi.getParameter("prdt_name").getBytes("8859_1"),"utf-8"));
		map.put("prdt_code", new String(multi.getParameter("prdt_code").getBytes("8859_1"),"utf-8"));
		map.put("prdt_price", new String(multi.getParameter("prdt_price").getBytes("8859_1"),"utf-8"));
		map.put("prdt_sale_price", new String(multi.getParameter("prdt_sale_price").getBytes("8859_1"),"utf-8"));
		map.put("prdt_thumbnail", prdt_thumbnail);
		map.put("prdt_content", new String(multi.getParameter("prdt_content").getBytes("8859_1"),"utf-8"));
		map.put("prdt_comment", new String(multi.getParameter("prdt_comment").getBytes("8859_1"),"utf-8"));
		map.put("prdt_quantity", new String(multi.getParameter("prdt_quantity").getBytes("8859_1"),"utf-8"));
		map.put("prdt_option1_name", new String(multi.getParameter("prdt_option1_name").getBytes("8859_1"),"utf-8"));
		map.put("prdt_option2_name", new String(multi.getParameter("prdt_option2_name").getBytes("8859_1"),"utf-8"));
		map.put("prdt_option3_name", new String(multi.getParameter("prdt_option3_name").getBytes("8859_1"),"utf-8"));
		map.put("prdt_state", new String(multi.getParameter("prdt_state").getBytes("8859_1"),"utf-8"));
		map.put("prdt_category_large", new String(multi.getParameter("prdt_category_large").getBytes("8859_1"),"utf-8"));
		map.put("prdt_option_add_price_1", new String(multi.getParameter("prdt_option_add_price_1").getBytes("8859_1"),"utf-8"));
		map.put("prdt_option_add_price_2", new String(multi.getParameter("prdt_option_add_price_2").getBytes("8859_1"),"utf-8"));
		map.put("prdt_option_add_price_3", new String(multi.getParameter("prdt_option_add_price_3").getBytes("8859_1"),"utf-8"));
		SampleService.selectBoardList(map, "selvishop.admin_product_add");
		
		
	}
	
	
	

	// 상품코드 중복검사
	// 어드민 상품추가 
	@RequestMapping(value = "/product_sku_duplicate", method = RequestMethod.POST)
	@ResponseBody
	public String product_sku_duplicate(HttpServletRequest req, HttpSession sessions) throws Exception {
		
		String state;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("prdt_code", req.getParameter("prdt_code"));
		
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.product_sku_duplicate");
		
		if(list.size() > 0) {
			state = "fail";
		}
		else {
			state = "success";
		}
		
		return state;
	}
	
	
	
	
	// 카테고리 추가
	@RequestMapping(value = "/product_category_add", method = RequestMethod.POST)
	@ResponseBody
	public void product_category_add(HttpServletRequest req, HttpSession sessions) throws Exception {


		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("admin_mem_category", req.getParameter("category_name"));

	    SampleService.selectBoardList(map, "selvishop.product_category_add");


	}
	
	
	
	
	// 카테고리 변경시 적용해주는 기능
	@RequestMapping(value = "/product_category_modify", method = RequestMethod.POST)
	@ResponseBody
	public void product_category_modify(HttpServletRequest req, HttpSession sessions) throws Exception {

		HashMap<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> output = new HashMap<String, Object>();
		
		String[] category_arr = {};
        String category_val = "" ;
		
		List<Map<String,Object>> list_category = SampleService.selectBoardList(map, "selvishop.product_category_get");

		if(list_category.size()>0) {
			output = list_category.get(0);
			
			category_arr = String.valueOf(output.get("admin_mem_category")).split("§");
		}
		
		category_arr[(Integer.parseInt(req.getParameter("index"))-1)] = req.getParameter("category_name");
		
		
		for(int i=0; i<category_arr.length; i++) {
			if(i>0) {
			    category_val = category_val +"§"+ category_arr[i];
			}
			else {
				category_val = category_arr[i];
			}
		}
		
		
		map.put("admin_mem_category", category_val);
		SampleService.selectBoardList(map, "selvishop.product_category_modify");
		
	}
	
	
	
		
	
	
}
