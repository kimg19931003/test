package com.selvi.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import service.SampleService;

@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
public class countselorController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(countselorController.class);

	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;

	// 고객센터 화면
	@RequestMapping(value = "/cs/counselor_home", method = RequestMethod.GET)
	public ModelAndView counselor_home(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView("/cs/counselor_home");
		

		return mv;
	}
	
	
	
	// 공지사항 화면
	@RequestMapping(value = "/cs/counselor_notice", method = RequestMethod.GET)
	public ModelAndView counselor_notice(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView("/cs/counselor_notice");

		HashMap<String, Object> map = new HashMap<String, Object>();
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.counselor_notice_get");
		
		if(list.size()>0) {
		    mv.addObject("list" , list);
		}
		else {
			
		}
		
		return mv;
	}
	
	// 공지사항 상세내용 화면
	@RequestMapping(value = "/cs/counselor_notice_view", method = RequestMethod.GET)
	public ModelAndView counselor_notice_view(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView("/cs/counselor_notice_view");
        
		String board_idx_pk = "1";
		
		if(req.getParameter("id") == null) {
			board_idx_pk = "1";
		}
		else {
			board_idx_pk = req.getParameter("id");
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("board_idx_pk", board_idx_pk);
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.counselor_notice_view_get");

		if (list.size() > 0) {
			mv.addObject("list", list);
			SampleService.selectBoardList(map, "selvishop.counselor_notice_hit_put");
		} else {

		}

		return mv;
	}
	
	
	
	
	
	
	// 이용안내 화면
	@RequestMapping(value = "/cs/counselor_faq", method = RequestMethod.GET)
	public ModelAndView counselor_faq(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView("/cs/counselor_faq");

		HashMap<String, Object> map = new HashMap<String, Object>();
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.counselor_faq_get");
		
		if(list.size()>0) {
		    mv.addObject("list" , list);
		}
		else {
			
		}
		
		return mv;
	}
	
	
	// 문의안내 상세내용보기 화면
	@RequestMapping(value = "/cs/counselor_faq_view", method = RequestMethod.GET)
	public ModelAndView counselor_faq_view(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView("/cs/counselor_faq_view");

		String board_idx_pk = "1";

		if (req.getParameter("id") == null) {
			board_idx_pk = "1";
		} else {
			board_idx_pk = req.getParameter("id");
		}

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("board_idx_pk", board_idx_pk);
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.counselor_faq_view_get");

		if (list.size() > 0) {
			mv.addObject("list", list);
			SampleService.selectBoardList(map, "selvishop.counselor_faq_hit_put");
		} else {

		}

		HashMap<String, Object> review_map = new HashMap<String, Object>();
		map.put("board_idx_pk", board_idx_pk);
		List<Map<String, Object>> review_list = SampleService.selectBoardList(map, "selvishop.faq_review_get");

		if (review_list.size() > 0) {
			mv.addObject("review_list", review_list);
		} else {

		}

		return mv;
	}
		
	
	
	
	// 이용안내 쓰기화면
	@RequestMapping(value = "/cs/counselor_faq_write", method = RequestMethod.GET)
	public ModelAndView counselor_faq_write(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView("/cs/counselor_faq_write");


		return mv;
	}
	
	
	// 이용안내 쓰기 db저장
	@RequestMapping(value = "/cs/counselor_faq_write_post", method = RequestMethod.POST)
	@ResponseBody
	public void counselor_faq_write_post(HttpServletRequest req, HttpSession session) throws Exception {

        String state="";
       
        
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("board_id", req.getParameter("board_id"));
        map.put("board_title", req.getParameter("board_title"));
        map.put("board_content", req.getParameter("board_content"));
        map.put("board_secret_setting", req.getParameter("board_secret_setting"));
        map.put("board_password", req.getParameter("board_password"));
        map.put("board_name", "faq_customer");
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.counselor_faq_write_post");

		
	}	
	
	
	
	
	
	
	// 상품리뷰 화면
	@RequestMapping(value = "/cs/counselor_prdt_review", method = RequestMethod.GET)
	public ModelAndView counselor_pdrt_review(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView("/cs/counselor_prdt_review");

		HashMap<String, Object> map = new HashMap<String, Object>();
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.counselor_prdt_review_get");
		
		if(list.size()>0) {
		    mv.addObject("list" , list);
		}
		else {
			
		}
		
		return mv;
	}
	
	
	
	
	// 상품리뷰 화면
	@RequestMapping(value = "/cs/counselor_prdt_review_write", method = RequestMethod.GET)
	public ModelAndView counselor_pdrt_review_write(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView("/cs/counselor_prdt_review_write");

		HashMap<String, Object> map = new HashMap<String, Object>();
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.counselor_prdt_review_write_get");
		
		if(list.size()>0) {
		    mv.addObject("list" , list);
		}
		else {
			
		}
		
		return mv;
	}
	
	
	
	// 문의사항 상품리뷰 상세내용 댓글
	@RequestMapping(value = "/cs/counselor_prdt_review_write_post", method = RequestMethod.POST)
	@ResponseBody
	public void board_add(HttpServletRequest req, HttpSession sessions) throws Exception {

		req.setCharacterEncoding("utf-8");

		String state = "";

		String defaultPath = req.getServletContext().getRealPath("/");

		System.out.println(defaultPath);

		String path = "C:/Users/DD Studio/git/selvi/selvi/src/main/webapp/resources/img/shoppingmall/cs/counselor_prdt_review_write/img/";

		String name_arr = "";
		UUID randomeUUID = UUID.randomUUID();

		File dir = new File(path);

		if (!dir.isDirectory()) {
			dir.mkdirs();
		}

		MultipartHttpServletRequest multi = (MultipartHttpServletRequest) req;
		MultipartFile multifile = null;
		Iterator<String> iterator = multi.getFileNames();

		while (iterator.hasNext()) {

			multifile = multi.getFile(iterator.next());

			if (!multifile.isEmpty()) {
				System.out.println("------------- file start -------------");
				System.out.println("name : " + multifile.getName());
				System.out.println("filename : " + multifile.getOriginalFilename());
				System.out.println("size : " + multifile.getSize());
				System.out.println("-------------- file end --------------\n");
			}

			String name = multifile.getOriginalFilename();

			File file = new File(path + name);
			boolean isExists = file.exists();

			if (isExists) {
				name = randomeUUID.toString() + "_" + name;
			} else {

			}

			multifile.transferTo(new File(path + name));

			name_arr = name_arr + "§" + name;
			System.out.println(name_arr);

		}

		String board_thumbnail = name_arr;

		// 시간 구하는 식
		long time = System.currentTimeMillis();

		SimpleDateFormat dayTime = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String board_reg_date = dayTime.format(new Date(time));

		HashMap<String, Object> map = new HashMap<String, Object>();
		
		

		
		map.put("board_id", new String(multi.getParameter("board_id").getBytes("8859_1"),"utf-8"));
		map.put("board_title", new String(multi.getParameter("board_title").getBytes("8859_1"),"utf-8"));
		map.put("board_content", new String(multi.getParameter("board_content").getBytes("8859_1"),"utf-8"));
		map.put("board_star_score", new String(multi.getParameter("board_star_score").getBytes("8859_1"),"utf-8"));
		map.put("board_name", "review_customer");
		map.put("board_thumbnail", board_thumbnail);

		SampleService.selectBoardList(map, "selvishop.counselor_prdt_review_write_post");

	}
	
	
	
	
	
	
	
	
	
	
	
	// 이벤트 화면
	@RequestMapping(value = "/cs/counselor_event", method = RequestMethod.GET)
	public ModelAndView counselor_event(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView("/cs/counselor_event");

		HashMap<String, Object> map = new HashMap<String, Object>();
		List<Map<String,Object>> list = SampleService.selectBoardList(map, "selvishop.counselor_event_get");
		
		if(list.size()>0) {
		    mv.addObject("list" , list);
		}
		else {
			
		}
		
		return mv;
	}
	
	
	
	// 이벤트 상세내용보기 화면
	@RequestMapping(value = "/cs/counselor_event_view", method = RequestMethod.GET)
	public ModelAndView counselor_event_view(HttpServletRequest req, HttpSession session) throws Exception {

		ModelAndView mv = new ModelAndView("/cs/counselor_event_view");

		String board_idx_pk = "1";

		if (req.getParameter("id") == null) {
			board_idx_pk = "1";
		} else {
			board_idx_pk = req.getParameter("id");
		}

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("board_idx_pk", board_idx_pk);
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.counselor_event_view_get");

		if (list.size() > 0) {
			mv.addObject("list", list);
			SampleService.selectBoardList(map, "selvishop.counselor_event_hit_put");
		} else {

		}
		
		
		
		HashMap<String, Object> review_map = new HashMap<String, Object>();
		map.put("board_idx_pk", board_idx_pk);
		List<Map<String, Object>> review_list = SampleService.selectBoardList(map, "selvishop.event_review_get");

		if (review_list.size() > 0) {
			mv.addObject("review_list", review_list);
		} else {

		}
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


}
