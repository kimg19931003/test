package com.selvi.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.servlet.ModelAndView;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import service.SampleService;

@Controller
public class Admin_MenuController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(Admin_MenuController.class);

	// mybatis 사용을 위한 클래스
	@Resource(name = "SampleService")
	private SampleService SampleService;

	// 어드민 페이지 홈
	@RequestMapping(value = "admin/home", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 홈 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/home");

		return mv;
	}

	// 어드민 페이지 고객
	@RequestMapping(value = "admin/customer", method = RequestMethod.GET)
	public ModelAndView customer(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 고객  페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/customer/customer");
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.customer_get");

		mv.addObject("list", list);

		return mv;
	}

	// 어드민 페이지 고객 정보 불러오기
	@RequestMapping(value = "/admin/customer_post", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String customer_post(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 고객  페이지 불러오기");

		JSONObject json;
		JSONArray json_arr = new JSONArray();

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mem_idx_pk", req.getParameter("mem_idx_pk"));
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.customer_post");

		if (list.size() > 0) {
			for (int i = 0; i < list.size(); i++) {

				json = new JSONObject();
				json.put("mem_id", list.get(i).get("mem_id"));
				json.put("mem_email", list.get(i).get("mem_email"));
				json.put("mem_name", list.get(i).get("mem_name"));
				json.put("mem_phone", list.get(i).get("mem_phone"));
				json.put("mem_join_date", String.valueOf(list.get(i).get("mem_join_date")).replaceAll("[^0-9]*", ""));
				json.put("mem_last_login", list.get(i).get("mem_last_login"));

				json_arr.add(json);
			}
		} else {

		}

		return json_arr.toString();
	}

	// 어드민 페이지 고객 -탈퇴리스트
	@RequestMapping(value = "admin/customer_leave", method = RequestMethod.GET)
	public ModelAndView customer_leave(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 고객  - 탈퇴리스트 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/customer/customer_leave");

		HashMap<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.customer_get");

		mv.addObject("list", list);

		return mv;
	}

	// 관리자 메뉴 - 상품 - 전체 상품 페이지
	@RequestMapping(value = "admin/total_product", method = RequestMethod.GET)
	public ModelAndView total_product(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 상품 - 전체 상품 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/product/total_product");

		return mv;
	}

	// 주문 -입금대기
	// =====================================================================================

	// 관리자 메뉴 - 주문 - 신규
	@RequestMapping(value = "admin/order", method = RequestMethod.GET)
	public ModelAndView order_new(HttpServletRequest req, HttpSession sessions) throws Exception {

		String state = "";
        String state_val = req.getParameter("state");
		
        List<Map<String, Object>> list  = new ArrayList<Map<String, Object>>();
        
		ModelAndView mv = new ModelAndView("/admin/order/order");
		

		if (req.getParameter("state").equals("order_new")) {
			state = "신규";
		} else if (req.getParameter("state").equals("deposit_wait")) {
			state = "입금대기";
		} else if (req.getParameter("state").equals("pay_complete")) {
			state = "결제완료";
		} else if (req.getParameter("state").equals("product_ready")) {
			state = "상품준비";
		} else if (req.getParameter("state").equals("delivery_ready")) {
			state = "배송준비";
		} else if (req.getParameter("state").equals("delivery_proceed")) {
			state = "배송 중";
		} else if (req.getParameter("state").equals("delivery_complete")) {
			state = "배송 완료";
		}
		
		
		if (req.getParameter("state").equals("order_new")) {
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("order_state", req.getParameter("state"));
			list = SampleService.selectBoardList(map, "selvishop.order_get_all");
			
		}
		else {
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("order_state", req.getParameter("state"));
			list = SampleService.selectBoardList(map, "selvishop.order_get");
			
		}
			
			
		mv.addObject("list", list);
		mv.addObject("state", state);
		mv.addObject("state_val", state_val);

		return mv;
	}
	
	
	
	
	
	// 관리자 메뉴 - 주문 - 신규
	@RequestMapping(value = "admin/cs", method = RequestMethod.GET)
	public ModelAndView cs(HttpServletRequest req, HttpSession sessions) throws Exception {

		String state = "";
		String state_val = req.getParameter("state");

		ModelAndView mv = new ModelAndView("/admin/cs/cs");
		

		if (req.getParameter("state").equals("cancel_req")) {
			state = "취소요청";
		} else if (req.getParameter("state").equals("refund_req")) {
			state = "반품요청";
		} else if (req.getParameter("state").equals("exchange_req")) {
			state = "교환요청";
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("order_state", req.getParameter("state"));
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.order_get");


		mv.addObject("list", list);

		mv.addObject("state", state);
		mv.addObject("state_val", state_val);

		return mv;
	}
		
		
		
		

	// 관리자 메뉴 - 주문 - 신규
	@RequestMapping(value = "admin/order/order_post", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String order_customer_post(HttpServletRequest req, HttpSession sessions, HttpServletResponse response)
			throws Exception {

		ModelAndView mv = new ModelAndView();
		req.setCharacterEncoding("utf-8");

		JSONObject json;
		JSONArray json_arr = new JSONArray();

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("order_idx_pk", req.getParameter("order_idx_pk"));
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.order_customer_post");

		if (list.size() > 0) {
			for (int i = 0; i < list.size(); i++) {
				json = new JSONObject();
				json.put("order_prdt_name", list.get(i).get("order_prdt_name"));
				json.put("order_prdt_price", list.get(i).get("order_prdt_price"));
				json.put("order_prdt_quantity", list.get(i).get("order_prdt_quantity"));
				json.put("order_pay_option", list.get(i).get("order_pay_option"));
				json.put("order_courier", list.get(i).get("order_courier"));
				json.put("order_invoice_num", list.get(i).get("order_invoice_num"));
				json.put("order_buy_time", list.get(i).get("order_buy_time"));
				json.put("order_pay_email", list.get(i).get("order_pay_email"));
				json.put("order_device", list.get(i).get("order_device"));
				json.put("order_prdt_option_name", list.get(i).get("order_prdt_option_name"));
				json.put("order_prdt_price_arr", list.get(i).get("order_prdt_price_arr"));
				json.put("order_prdt_thumbnail", list.get(i).get("order_prdt_thumbnail"));

				json_arr.add(json);
			}
		} else {

		}

		return json_arr.toString();
	}

	// 관리자 메뉴 - 주문 - 신규
	@RequestMapping(value = "admin/order/invoice", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String invoice(HttpServletRequest req, HttpSession sessions, HttpServletResponse response) throws Exception {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("order_invoice_num", req.getParameter("invoice_num"));
		map.put("order_courier", req.getParameter("courier"));
		map.put("order_idx_pk", req.getParameter("idx"));
		SampleService.selectBoardList(map, "selvishop.order_customer_invoice");

		JSONObject json = new JSONObject(); 
		json.put("order_invoice_num", req.getParameter("invoice_num"));
		json.put("order_courier", req.getParameter("courier"));
		
		return json.toString();

	}

	// 주문 -입금대기
	// =====================================================================================

	// 관리자 메뉴 - 주문 - 환불실패
	@RequestMapping(value = "admin/order_return_fail", method = RequestMethod.GET)
	public ModelAndView order_return_fail(HttpServletRequest order_return_fail, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 주문 - 환불실패 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/order/order_return_fail");

		return mv;
	}

	// 관리자 메뉴 - 상품 - 전체 상품 페이지
	@RequestMapping(value = "admin/product", method = RequestMethod.GET)
	public ModelAndView product_total(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 상품 - 전체 상품 페이지 불러오기");
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.product_all");

		ModelAndView mv = new ModelAndView("admin/product/all");
		mv.addObject("list", list);

		return mv;
	}

	// 관리자 메뉴 - 상품 - 상품 추가 페이지
	@RequestMapping(value = "admin/product/add", method = RequestMethod.GET)
	public ModelAndView product_add(HttpServletRequest order_return_fail, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 상품 - 상품 추가 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/product/add");

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("admin_mem_id", sessions.getAttribute("admin_mem_id"));

		List<Map<String, Object>> list = SampleService.selectBoardList(map,
				"selvishop.product_add_admin_member_category");

		mv.addObject("list", list);

		return mv;
	}
	

	// 관리자 메뉴 - 상품 - 집 안 카테고리 페이지
	@RequestMapping(value = "admin/product/home", method = RequestMethod.GET)
	public ModelAndView product_home(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 상품 - 집 안 카테고리 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/product/home");

		return mv;
	}

	// 관리자 메뉴 - 상품 - 집 밖 카테고리 페이지
	@RequestMapping(value = "admin/product/out", method = RequestMethod.GET)
	public ModelAndView product_out(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 상품 - 집 밖 카테고리 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/product/out");

		return mv;
	}

	// 관리자 메뉴 - 상품 - 뷰 페이지
	@RequestMapping(value = "admin/product/view", method = RequestMethod.GET)
	public ModelAndView product_view(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 상품 - 뷰 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/product/view");

		return mv;
	}

	// 관리자 메뉴 - 게시판 - 전체 게시판 페이지
	@RequestMapping(value = "admin/board/all", method = RequestMethod.GET)
	public ModelAndView board_all(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 게시판 - 전체 게시판 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/board/all");

		HashMap<String, Object> map = new HashMap<String, Object>();

		List<Map<String, Object>> list = (List<Map<String, Object>>) SampleService.selectBoardList(map,
				"selvishop.board_list_all");

		mv.addObject("list", list);

		return mv;
	}

	// 관리자 메뉴 - 게시판 - 공지사항 게시판 페이지
	@RequestMapping(value = "admin/board/notice", method = RequestMethod.GET)
	public ModelAndView board_notice(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 게시판 - 공지사항 게시판 페이지 불러오기");
	
		ModelAndView mv = new ModelAndView("/admin/board/notice");

		HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("board_name", "notice");
		
		List<Map<String, Object>> list = (List<Map<String, Object>>) SampleService.selectBoardList(map,
				"selvishop.board_list");

		mv.addObject("list", list);
		
		return mv;
	}

	// 관리자 메뉴 - 게시판 - 문의하기 게시판 페이지
	@RequestMapping(value = "admin/board/inquire", method = RequestMethod.GET)
	public ModelAndView board_inquire(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 게시판 - 문의하기 게시판 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/board/inquire");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("board_name", "QnA");
		
		List<Map<String, Object>> list = (List<Map<String, Object>>) SampleService.selectBoardList(map,
				"selvishop.board_list");

		mv.addObject("list", list);

		return mv;
	}

	// 관리자 메뉴 - 게시판 - 이벤트 게시판 페이지
	@RequestMapping(value = "admin/board/event", method = RequestMethod.GET)
	public ModelAndView board_event(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 게시판 - 이벤트 게시판 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/board/event");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("board_name", "event");
		
		List<Map<String, Object>> list = (List<Map<String, Object>>) SampleService.selectBoardList(map,
				"selvishop.board_list");

		mv.addObject("list", list);

		return mv;
	}

	// 관리자 메뉴 - 게시판 - 리뷰 게시판 페이지
	@RequestMapping(value = "admin/board/review", method = RequestMethod.GET)
	public ModelAndView board_review(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 게시판 - 리뷰 게시판 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/board/review");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("board_name", "review");
		
		List<Map<String, Object>> list = (List<Map<String, Object>>) SampleService.selectBoardList(map,
				"selvishop.board_list");

		mv.addObject("list", list);

		return mv;
	}

	// 관리자 메뉴 - 게시판 - 글쓰기 페이지
	@RequestMapping(value = "admin/board/write", method = RequestMethod.GET)
	public ModelAndView board_write(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 게시판 - 글쓰기 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/board/write");

		return mv;
	}

	// 관리자 메뉴 - 게시판 - 글 수정 페이지
	@RequestMapping(value = "admin/board/edit", method = RequestMethod.GET)
	public ModelAndView board_edit(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 게시판 - 글 수정  페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/board/edit");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("board_idx_pk", req.getParameter("id"));
		
		System.out.println("파라미터 값 : "+req.getParameter("id"));
		
		List<Map<String, Object>> list = SampleService.selectBoardList(map,"selvishop.admin_board_edit");

		System.out.println("파라미터 값 : "+ list.size());
		
		mv.addObject("list", list);

		return mv;
	}

	// 관리자 메뉴 - 상품 - 에디터 글 전송 테스트 페이지
	@RequestMapping(value = "admin/product/send", method = RequestMethod.GET)
	public ModelAndView product_send(HttpServletRequest req, HttpSession sessions) throws Exception {
		logger.info("관리자 메뉴 - 상품 - 에디터 글 전송 테스트 페이지 불러오기");

		ModelAndView mv = new ModelAndView("/admin/product/send");

		return mv;
	}

	// 상품 정보 수정
	// ---------------------------------------------------------------------------------
	@RequestMapping(value = "admin/product/repair", method = RequestMethod.GET)
	public ModelAndView product_repair(HttpServletRequest req, HttpSession sessions, HttpServletResponse response)
			throws Exception {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("prdt_idx_pk", req.getParameter("id"));
		List<Map<String, Object>> list = SampleService.selectBoardList(map, "selvishop.product_repair_get");

		ModelAndView mv = new ModelAndView("admin/product/repair");
		mv.addObject("list", list);
		return mv;
	}

}
