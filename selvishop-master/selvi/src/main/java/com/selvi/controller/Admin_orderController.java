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
public class Admin_orderController {
	// 로깅을 위한 변수


	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;
	

	
	// 어드민 게시판 내용 추가 - 스마트에디터 이미지 추가 기능
	@RequestMapping(value = "/dddd", method = RequestMethod.POST)
	@ResponseBody
	public void ddd(HttpServletRequest req, HttpSession sessions, HttpServletResponse response)
			throws Exception {


	}
	  
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
	
	
}
