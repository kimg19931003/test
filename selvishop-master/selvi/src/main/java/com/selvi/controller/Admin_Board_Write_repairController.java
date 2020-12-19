package com.selvi.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
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
public class Admin_Board_Write_repairController {
	// 로깅을 위한 변수


	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;
	

	
	// 어드민 게시판 내용 추가 - 스마트에디터 이미지 추가 기능
	@RequestMapping(value = "/admin_board_image_add", method = RequestMethod.POST)
	@ResponseBody
	public void product_image_add(HttpServletRequest req, HttpSession sessions, HttpServletResponse response)
			throws Exception {

		System.out.println("현재 board");
		
		String sFileInfo = "";

		String name = req.getHeader("file-name");
		String ext = name.substring(name.lastIndexOf(".") + 1);

		String defaultPath = req.getServletContext().getRealPath("/");

		System.out.println(defaultPath);

		String path = defaultPath + "resources/img/shoppingmall/admin/board/";
		System.out.println("파일경로 : " + path);
		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();
		}
		String realname = UUID.randomUUID().toString() + "." + ext;
		InputStream is = req.getInputStream();
		OutputStream os = new FileOutputStream(path + realname);

		System.out.println("파일경로 : " + path + name);
		int numRead;

		byte b[] = new byte[Integer.parseInt(req.getHeader("file-size"))];
		while ((numRead = is.read(b, 0, b.length)) != -1) {
			os.write(b, 0, numRead);
		}
		if (is != null) {
			is.close();
		}
		os.flush();
		os.close();
		sFileInfo += "&bNewLine=true&sFileName=" + name + "&sFileURL=" + "/resources/img/shoppingmall/admin/board/" + realname;
		System.out.println(sFileInfo);

		PrintWriter print = response.getWriter();
		print.print(sFileInfo);
		print.flush();
		print.close();

	}
	  
	
	
	
	
	
	
	
	
	
	
	
	// 어드민 상품추가 
	@RequestMapping(value = "/admin_board_add", method = RequestMethod.POST)
	@ResponseBody
	public void board_add(HttpServletRequest req, HttpSession sessions) throws Exception {
		
		req.setCharacterEncoding("utf-8");
		
		String state="";

		String defaultPath = req.getServletContext().getRealPath("/");
		
				
		System.out.println(defaultPath);
		
		
		String path = "C:/Users/DD Studio/git/selvi/selvi/src/main/webapp/resources/img/shoppingmall/admin/board/";

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
        
        

        
        String board_thumbnail = name_arr;
     
        
		
        //시간 구하는 식
        long time = System.currentTimeMillis(); 

		SimpleDateFormat dayTime = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String board_reg_date = dayTime.format(new Date(time));



		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("board_name", new String(multi.getParameter("board_name").getBytes("8859_1"),"utf-8"));
		map.put("board_title", new String(multi.getParameter("board_title").getBytes("8859_1"),"utf-8"));
		map.put("board_content", new String(multi.getParameter("board_content").getBytes("8859_1"),"utf-8"));
		map.put("board_thumbnail", board_thumbnail);
		map.put("board_writer", new String(multi.getParameter("board_writer").getBytes("8859_1"),"utf-8"));
		map.put("board_reg_date", board_reg_date);
		map.put("board_writer_email", new String(multi.getParameter("board_writer_email").getBytes("8859_1"),"utf-8"));
	
		SampleService.selectBoardList(map, "selvishop.admin_board_add");
		
		
		
	}
	
	
	
	
	
	
	
	
		
	
	
}
