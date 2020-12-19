package com.selvi.controller;

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
import org.springframework.web.servlet.ModelAndView;

import service.SampleService;

@Controller
public class MenuController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;

	// 내 몸을 부탁해
	@RequestMapping(value = "mybody", method = RequestMethod.GET)
	public ModelAndView mybody(HttpServletRequest req, HttpSession sessions) throws Exception {
		ModelAndView mv = new ModelAndView("/menu/mybody");

		return mv;
	}

	// 투데이 빅딜
	@RequestMapping(value = "today_bigdeal", method = RequestMethod.GET)
	public ModelAndView today_bigdeal(HttpServletRequest req, HttpSession sessions) throws Exception {
		ModelAndView mv = new ModelAndView("/menu/today_bigdeal");

		return mv;
	}

	// 베스트
	@RequestMapping(value = "best", method = RequestMethod.GET)
	public ModelAndView best(HttpServletRequest req, HttpSession sessions) throws Exception {
		ModelAndView mv = new ModelAndView("/menu/best");

		return mv;
	}

	// 패션샵
	@RequestMapping(value = "fasion", method = RequestMethod.GET)
	public ModelAndView fasion(HttpServletRequest req, HttpSession sessions) throws Exception {
		ModelAndView mv = new ModelAndView("/menu/fasion");

		return mv;
	}

	// 셀럽공구
	@RequestMapping(value = "celeb", method = RequestMethod.GET)
	public ModelAndView celeb(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("셀럽공구 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/celeb");

		return mv;
	}

	// 셀럽공구
	@RequestMapping(value = "celeb_b", method = RequestMethod.GET)
	public ModelAndView celeb_b(HttpServletRequest req, HttpSession sessions) throws Exception {

		ModelAndView mv = new ModelAndView("/menu/celeb");

		HashMap<String, Object> map = new HashMap<String, Object>();

		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.index_product");

		mv.addObject("list", list);

		return mv;
	}

	// 셀럽공구 - 셀럽 리스트
	@RequestMapping(value = "celeb_list", method = RequestMethod.GET)
	public ModelAndView celeb_list(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("셀럽공구 - 셀럽 리스트 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/celeb_list");

		return mv;
	}

	// 셀럽공구 - 셀럽 멤버 - 공구 없을 때
	@RequestMapping(value = "celeb_member", method = RequestMethod.GET)
	public ModelAndView celeb_member(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("셀럽공구 - 셀럽 멤버 - 공구 없을 때 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/celeb_member");

		return mv;
	}

	// 셀럽공구 - 셀럽 멤버 - 공구 있을 때
	@RequestMapping(value = "celeb_member2", method = RequestMethod.GET)
	public ModelAndView celeb_member2(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("셀럽공구 - 셀럽 멤버 - 공구 있을 때 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/celeb_member2");

		return mv;
	}

	// 뷰티샵 - 카테고리
	@RequestMapping(value = "beautyshop", method = RequestMethod.GET)
	public ModelAndView beautyshop(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("뷰티샵 - 카테고리 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/beautyshop");

		return mv;
	}

	// 뷰티샵 - 브랜드
	@RequestMapping(value = "beautyshop_b", method = RequestMethod.GET)
	public ModelAndView beautyshop_b(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("뷰티샵 - 브랜드 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/beautyshop_b");

		return mv;
	}

	// 기획전
	@RequestMapping(value = "plan", method = RequestMethod.GET)
	public ModelAndView plan(HttpServletRequest req, HttpSession sessions) throws Exception {
		ModelAndView mv = new ModelAndView("/menu/plan");

		return mv;
	}

	// 라이프
	@RequestMapping(value = "life", method = RequestMethod.GET)
	public ModelAndView life(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("라이프 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/life");

		return mv;
	}

	// 푸드 건강 - 카테고리
	@RequestMapping(value = "food_health", method = RequestMethod.GET)
	public ModelAndView food_health(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("푸드 건강 - 카테고리 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/food_health");

		return mv;
	}

	// 푸드 건강 - 브랜드
	@RequestMapping(value = "food_health_b", method = RequestMethod.GET)
	public ModelAndView food_health_b(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("푸드 건강 - 브랜드 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/food_health_b");

		return mv;
	}

	// 이벤트
	@RequestMapping(value = "event", method = RequestMethod.GET)
	public ModelAndView event(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("이벤트 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/event");

		return mv;
	}

	// 왼쪽 메뉴
	@RequestMapping(value = "left_menu", method = RequestMethod.GET)
	public ModelAndView left_menu(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("왼쪽 메뉴 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/left_menu");

		return mv;
	}

	// 인기상품
	@RequestMapping(value = "popular_product", method = RequestMethod.GET)
	public ModelAndView popular_product(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("인기상품 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/popular_product");

		int page_num = 1;

		if (req.getParameter("page_num") != null && req.getParameter("page_num") != "") {
			page_num = Integer.parseInt(req.getParameter("page_num"));
		}

		// 한 페이지에 보여줄 상품 갯수
		int page_size = 16;

		int start_page = page_size * page_num - page_size;
		int end_page = page_size * page_num;

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("start_page", start_page);
		map.put("end_page", end_page);

		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.popular_product_paging");

		// 보드 상품갯수 구하는곳
		List<Map<String, Object>> list_count = SampleService.selectBoardList(map,
				"selvishop.popular_product_total_count");

		int count = Integer.parseInt(String.valueOf(list_count.get(0).get("cnt")));

		mv.addObject("list", list);
		mv.addObject("count", count);
		mv.addObject("page_num", page_num);
		mv.addObject("page_size", page_size);

		return mv;
	}

	// 내 몸을 부탁해
	@RequestMapping(value = "product_all", method = RequestMethod.GET)
	public ModelAndView product_all(HttpServletRequest req, HttpSession sessions) throws Exception {
		ModelAndView mv = new ModelAndView("/menu/product_all");

		int page_num = 1;

		if (req.getParameter("page_num") != null && req.getParameter("page_num") != "") {
			page_num = Integer.parseInt(req.getParameter("page_num"));
		}

		// 한 페이지에 보여줄 상품 갯수
		int page_size = 16;

		int start_page = page_size * page_num - page_size;
		int end_page = page_size * page_num;

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("start_page", start_page);
		map.put("end_page", end_page);

		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.category_board_list");

		// 보드 상품갯수 구하는곳
		List<Map<String, Object>> list_count = SampleService.selectBoardList(map, "selvishop.category_paging_count");

		int count = Integer.parseInt(String.valueOf(list_count.get(0).get("cnt")));

		mv.addObject("list", list);
		mv.addObject("count", count);
		mv.addObject("page_num", page_num);
		mv.addObject("page_size", page_size);

		return mv;
	}

	// 카테고리1
	@RequestMapping(value = "category1", method = RequestMethod.GET)
	public ModelAndView category1(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("카테고리1 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/category1");

		int page_num = 1;

		if (req.getParameter("page_num") != null && req.getParameter("page_num") != "") {
			page_num = Integer.parseInt(req.getParameter("page_num"));
		}

		// 한 페이지에 보여줄 상품 갯수
		int page_size = 16;

		int start_page = page_size * page_num - page_size;
		int end_page = page_size * page_num;

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("start_page", start_page);
		map.put("end_page", end_page);

		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.category_board_list");

		// 보드 상품갯수 구하는곳
		List<Map<String, Object>> list_count = SampleService.selectBoardList(map, "selvishop.category_paging_count");

		int count = Integer.parseInt(String.valueOf(list_count.get(0).get("cnt")));

		mv.addObject("list", list);
		mv.addObject("count", count);
		mv.addObject("page_num", page_num);
		mv.addObject("page_size", page_size);

		return mv;
	}

	// 카테고리2
	@RequestMapping(value = "category2", method = RequestMethod.GET)
	public ModelAndView category2(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("카테고리2 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/category2");

		int page_num = 1;

		if (req.getParameter("page_num") != null && req.getParameter("page_num") != "") {
			page_num = Integer.parseInt(req.getParameter("page_num"));
		}

		// 한 페이지에 보여줄 상품 갯수
		int page_size = 16;

		int start_page = page_size * page_num - page_size;
		int end_page = page_size * page_num;

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("start_page", start_page);
		map.put("end_page", end_page);

		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.category2_board_list");

		// 보드 상품갯수 구하는곳
		List<Map<String, Object>> list_count = SampleService.selectBoardList(map, "selvishop.category2_paging_count");

		int count = Integer.parseInt(String.valueOf(list_count.get(0).get("cnt")));

		mv.addObject("list", list);
		mv.addObject("count", count);
		mv.addObject("page_num", page_num);
		mv.addObject("page_size", page_size);

		return mv;
	}

	// 카테고리3
	@RequestMapping(value = "category3", method = RequestMethod.GET)
	public ModelAndView category3(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("카테고리3 페이지 이동");

		ModelAndView mv = new ModelAndView("/menu/category3");

		int page_num = 1;

		if (req.getParameter("page_num") != null && req.getParameter("page_num") != "") {
			page_num = Integer.parseInt(req.getParameter("page_num"));
		}

		// 한 페이지에 보여줄 상품 갯수
		int page_size = 16;

		int start_page = page_size * page_num - page_size;
		int end_page = page_size * page_num;

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("start_page", start_page);
		map.put("end_page", end_page);

		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.category3_board_list");

		// 보드 상품갯수 구하는곳
		List<Map<String, Object>> list_count = SampleService.selectBoardList(map, "selvishop.category3_paging_count");

		int count = Integer.parseInt(String.valueOf(list_count.get(0).get("cnt")));

		mv.addObject("list", list);
		mv.addObject("count", count);
		mv.addObject("page_num", page_num);
		mv.addObject("page_size", page_size);

		return mv;
	}

	// 고객센터
	@RequestMapping(value = "customer_service", method = RequestMethod.GET)
	public ModelAndView customer_service(HttpServletRequest req, HttpSession sessions) throws Exception {
		ModelAndView mv = new ModelAndView("/menu/customer_service");

		HashMap<String, Object> map = new HashMap<String, Object>();

		List<Map<String, Object>> list_notice = (List<Map<String, Object>>) SampleService.selectBoardList(map,
				"selvishop.customer_service_notice");
		List<Map<String, Object>> list_event = (List<Map<String, Object>>) SampleService.selectBoardList(map,
				"selvishop.customer_service_event");
		List<Map<String, Object>> list_qna = (List<Map<String, Object>>) SampleService.selectBoardList(map,
				"selvishop.customer_service_qna");
		List<Map<String, Object>> list_review = (List<Map<String, Object>>) SampleService.selectBoardList(map,
				"selvishop.customer_service_review");

		mv.addObject("list_notice", list_notice);
		mv.addObject("list_notice", list_event);
		mv.addObject("list_notice", list_qna);
		mv.addObject("list_notice", list_review);

		return mv;
	}
}
