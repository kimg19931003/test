package com.selvi.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.inicis.std.util.HttpUtil;
import com.inicis.std.util.ParseUtil;
import com.inicis.std.util.SignatureUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import service.SampleService;

@Controller
public class orderController {


	
	// mybatis �궗�슜�쓣 �쐞�븳 �겢�옒�뒪
	@Resource(name = "SampleService")
	private SampleService SampleService;
	
	// �궡 紐몄쓣 遺��긽�빐
	@RequestMapping(value = "order")
	public ModelAndView order(HttpServletResponse response, HttpServletRequest req, HttpSession sessions, ModelMap model) throws Exception {

		req.setCharacterEncoding("utf-8");
		
		
		
		ModelAndView mv_return = new ModelAndView();
		
		if(req.getParameter("option_total_num_arr_input") == null || req.getParameter("option_total_price_arr_input")==null || req.getParameter("arr_option_input") == null) {
			response.sendRedirect("/");
			mv_return.addObject("state", "product_info_null");
			return mv_return;
		}
		
		
		
		JSONObject json;
		JSONArray json_option_total_num_arr = new JSONArray();
		JSONArray json_option_total_price_arr = new JSONArray();
		JSONArray json_arr_option = new JSONArray();
		
		
		System.out.println(req.getParameter("option_total_num_arr_input"));
		System.out.println(req.getParameter("option_total_price_arr_input"));
		System.out.println(req.getParameter("arr_option_input"));
		
		
		String[] option_total_num_arr = String.valueOf(req.getParameter("option_total_num_arr_input")).split("§");
		String[] option_total_price_arr =  String.valueOf(req.getParameter("option_total_price_arr_input")).split("§");
		String[] arr_option = String.valueOf(req.getParameter("arr_option_input")).split("§");
		String prdt_name = req.getParameter("prdt_name_input");
		
			
		// �긽�뭹 珥� 媛�寃�
		int total_price = 0;
		
		// �긽�뭹 珥앷갗�닔 諛곗뿴
		for(int i=0; i<option_total_num_arr.length;i++) {
			
			if(i>=1) {
				System.out.println("�긽�뭹媛쒖닔 : " + option_total_num_arr[i]);
			
				json = new JSONObject();
				json.put("option_total_num_arr", option_total_num_arr[i]);
			
				json_option_total_num_arr.add(json);
			}
			
		}
		
		
		// �긽�뭹 珥� 媛�寃� 諛곗뿴
		for(int l=0; l<option_total_price_arr.length; l++) {
			if (l >= 1) {
				System.out.println("媛�寃� : " + option_total_price_arr[l]);

				json = new JSONObject();
				json.put("option_total_price_arr", option_total_price_arr[l]);

				total_price = total_price + Integer.parseInt(option_total_price_arr[l]);

				json_option_total_price_arr.add(json);
			}
		}
		
		
		// �긽�뭹 珥� �샃�뀡 諛곗뿴
		for(int n=0; n<arr_option.length; n++) {
			if (n >= 1) {
				System.out.println("�샃�뀡�씠由� : " + arr_option[n]);

				json = new JSONObject();
				json.put("arr_option", arr_option[n]);

				json_arr_option.add(json);
			}
		}
		
		
		sessions.setAttribute("option_total_num_arr", req.getParameter("option_total_num_arr_input"));
		sessions.setAttribute("option_total_price_arr", req.getParameter("option_total_price_arr_input"));
		sessions.setAttribute("arr_option", req.getParameter("arr_option_input"));
		sessions.setAttribute("total_price", total_price);
		sessions.setAttribute("db_session_save_thumnail_image", req.getParameter("db_session_save_thumnail_image"));
		
		/**********************************************************************************************
         * INIpay 紐⑤뱢 �꽭�똿 �떆�옉
         **********************************************************************************************/
 
        /*
         * //*** �쐞蹂�議� 諛⑹�泥댄겕瑜� signature �깮�꽦 *** oid, price, timestamp 3媛쒖쓽 �궎�� 媛믪쓣
         * key=value �삎�떇�쑝濡� �븯�뿬 '&'濡� �뿰寃고븳 �븯�뿬 SHA-256 Hash濡� �깮�꽦 �맂媛�
         * 
         * ex) oid=INIpayTest_1432813606995&price=819000&timestamp=2012-02-01
         * 09:19:04.004
         * 
         * key湲곗� �븣�뙆踰� �젙�젹
         * 
         * timestamp�뒗 諛섎뱶�떆 signature�깮�꽦�뿉 �궗�슜�븳 timestamp 媛믪쓣 timestamp input�뿉 洹몃�濡�
         * �궗�슜�븯�뿬�빞�븿
         */
 
        // ############################################
        // 1.�쟾臾� �븘�뱶 媛� �꽕�젙(***媛�留뱀젏 媛쒕컻�닔�젙***)
        // ############################################
 
        // �뿬湲곗뿉 �꽕�젙�맂 媛믪� Form �븘�뱶�뿉 �룞�씪�븳 媛믪쑝濡� �꽕�젙
        String mid = "INIpayTest"; // 媛�留뱀젏 ID(媛�留뱀젏 �닔�젙�썑 怨좎젙)
   
    
        // �씤利�
        String signKey = "SU5JTElURV9UUklQTEVERVNfS0VZU1RS"; // 媛�留뱀젏�뿉 �젣怨듬맂 �쎒
                                                                // �몴以�
                                                                // �궗�씤�궎(媛�留뱀젏
                                                                // �닔�젙�썑 怨좎젙)
        String timestamp = SignatureUtil.getTimestamp(); // util�뿉 �쓽�빐�꽌 �옄�룞�깮�꽦
 
        String oid = mid + "_" + SignatureUtil.getTimestamp(); // 媛�留뱀젏
        sessions.setAttribute("moid", oid);                                    
 
        String price = String.valueOf(total_price); // �긽�뭹媛�寃�(�듅�닔湲고샇 �젣�쇅, 媛�留뱀젏�뿉�꽌 吏곸젒 �꽕�젙)
 
        String cardNoInterestQuota = "11-2:3:,34-5:12,14-6:12:24,12-12:36,06-9:12,01-3:4"; // 移대뱶
                                                                                            // 臾댁씠�옄
                                                                                            // �뿬遺�
                                                                                            // �꽕�젙(媛�留뱀젏�뿉�꽌
                                                                                            // 吏곸젒
                                                                                            // �꽕�젙)
        String cardQuotaBase = "2:3:4:5:6:11:12:24:36"; // 媛�留뱀젏�뿉�꽌 �궗�슜�븷 �븷遺� 媛쒖썡�닔
                                                        // �꽕�젙
 
        // ###############################################
        // 2. 媛�留뱀젏 �솗�씤�쓣 �쐞�븳 signKey瑜� �빐�떆媛믪쑝濡� 蹂�寃� (SHA-256諛⑹떇 �궗�슜)
        // ###############################################
        String mKey = SignatureUtil.hash(signKey, "SHA-256");
 
        // ###############################################
        // 2.signature �깮�꽦
        // ###############################################
        Map<String, String> signParam = new HashMap<String, String>();
 
        signParam.put("oid", oid); // �븘�닔
        signParam.put("price", price); // �븘�닔
        signParam.put("timestamp", timestamp); // �븘�닔
 
        // signature �뜲�씠�꽣 �깮�꽦 (紐⑤뱢�뿉�꽌 �옄�룞�쑝濡� signParam�쓣 �븣�뙆踰� �닚�쑝濡� �젙�젹�썑 NVP 諛⑹떇�쑝濡� �굹�뿴�빐
        // hash)
        String signature = SignatureUtil.makeSignature(signParam);
 
        /* 湲고� */
        // String siteDomain = "http://127.0.0.1:8080/service"; // 媛�留뱀젏
        // �룄硫붿씤
        // �엯�젰
        // �럹�씠吏� URL�뿉�꽌 怨좎젙�맂 遺�遺꾩쓣 �쟻�뒗�떎.
        // Ex) returnURL�씠
        // http://localhost:8080INIpayStdSample/INIStdPayReturn.jsp �씪硫�
        // http://localhost:8080/INIpayStdSample 源뚯�留� 湲곗엯�븳�떎.
 
        String siteDomain = req.getRequestURL().toString();
        String host = req.getServerName();
        
        model.addAttribute("mid", mid);
        model.addAttribute("oid", oid);
        model.addAttribute("price", price);
        model.addAttribute("prdt_name", prdt_name);
        model.addAttribute("timestamp", timestamp);
        model.addAttribute("signature", signature);
        model.addAttribute("mKey", mKey);
        model.addAttribute("cardQuotaBase", cardQuotaBase);
        model.addAttribute("cardNoInterestQuota", cardNoInterestQuota);
        model.addAttribute("siteDomain", siteDomain);
        model.addAttribute("json_option_total_num_arr",json_option_total_num_arr);
        model.addAttribute("json_option_total_price_arr",json_option_total_price_arr);
        model.addAttribute("json_arr_option",json_arr_option);
        /**********************************************************************************************
         * INIpay 紐⑤뱢 �꽭�똿 醫낅즺
         **********************************************************************************************/
		
		
		
		
		ModelAndView mv = new ModelAndView("/order/order");

		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// =========================================================================================

	@RequestMapping(value = "/order/inipay_return", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView order_pay_after(HttpSession sessions, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mv  = new ModelAndView(""); ;
		
		String retUrl = "";
		String state = "";
		String order_state ="";

		HttpSession session = request.getSession();

		/**********************************************************************************************
		 * INIpay 紐⑤뱢 �꽭�똿 �떆�옉
		 **********************************************************************************************/
		
		
		
	
		
		// #############################
		// �씤利앷껐怨� �뙆�씪誘명꽣 �씪愿� �닔�떊
		// #############################
		request.setCharacterEncoding("UTF-8");

		Map<String, String> paramMap = new Hashtable<String, String>();

		Enumeration elems = request.getParameterNames();

		String temp = "";

		while (elems.hasMoreElements()) {
			temp = (String) elems.nextElement();
			System.out.println(temp);
			paramMap.put(temp, request.getParameter(temp));

		}

		// #####################
		// �씤利앹씠 �꽦怨듭씪 寃쎌슦留�
		// #####################
		
		if ("0000".equals(paramMap.get("resultCode")) ) {

			// ############################################
			// 1.�쟾臾� �븘�뱶 媛� �꽕�젙(***媛�留뱀젏 媛쒕컻�닔�젙***)
			// ############################################

			String mid = paramMap.get("mid"); // 媛�留뱀젏 ID �닔�떊 諛쏆� �뜲�씠�꽣濡� �꽕�젙
			
			String signKey = "SU5JTElURV9UUklQTEVERVNfS0VZU1RS"; // 媛�留뱀젏�뿉 �젣怨듬맂
			// �궎(�씠�땲�씪�씠�듃�궎)
			// (媛�留뱀젏
			// �닔�젙�썑
			// 怨좎젙)
			// !!!�젅��!!
			// �쟾臾�
			// �뜲�씠�꽣濡�
			// �꽕�젙湲덉�

			String timestamp = SignatureUtil.getTimestamp(); // util�뿉 �쓽�빐�꽌
			// �옄�룞�깮�꽦

			String charset = "UTF-8"; // 由ы꽩�삎�떇[UTF-8,EUC-KR](媛�留뱀젏 �닔�젙�썑 怨좎젙)
			String format = "NVP"; // 由ы꽩�삎�떇[XML,JSON,NVP](媛�留뱀젏 �닔�젙�썑 怨좎젙)

			// 異붽��쟻 noti媛� �븘�슂�븳 寃쎌슦(�븘�닔�븘�떂, 怨듬갚�씪 寃쎌슦 誘몃컻�넚, �듅�씤�� �꽦怨듭떆, �떎�뙣�떆 紐⑤몢 Noti諛쒖넚�맖)
			// 誘몄궗�슜
			// String notiUrl = "";

			String authToken = paramMap.get("authToken"); // 痍⑥냼 �슂泥� tid�뿉 �뵲�씪�꽌
															// �쑀�룞�쟻(媛�留뱀젏 �닔�젙�썑 怨좎젙)

			String authUrl = paramMap.get("authUrl"); // �듅�씤�슂泥� API url(�닔�떊 諛쏆�媛믪쑝濡�
														// �꽕�젙, �엫�쓽 �꽭�똿 湲덉�)

			String netCancel = paramMap.get("netCancelUrl"); // 留앹랬�냼 API url (�닔�떊
																// 諛쏆�媛믪쑝濡� �꽕�젙, �엫�쓽
																// �꽭�똿 湲덉�)

			// #####################
			// 2.signature �깮�꽦
			// #####################
			Map<String, String> signParam = new HashMap<String, String>();

			signParam.put("authToken", authToken); // �븘�닔
			signParam.put("timestamp", timestamp); // �븘�닔

			// signature �뜲�씠�꽣 �깮�꽦 (紐⑤뱢�뿉�꽌 �옄�룞�쑝濡� signParam�쓣 �븣�뙆踰� �닚�쑝濡� �젙�젹�썑 NVP 諛⑹떇�쑝濡�
			// �굹�뿴�빐 hash)
			String signature = SignatureUtil.makeSignature(signParam);

			String price = paramMap.get("price"); // 媛�留뱀젏�뿉�꽌 理쒖쥌 寃곗젣 媛�寃� �몴湲� (�븘�닔�엯�젰)

			// 1. 媛�留뱀젏�뿉�꽌 �듅�씤�떆 二쇰Ц踰덊샇媛� 蹂�寃쎈맆 寃쎌슦 (�꽑�깮�엯�젰) �븯�쐞 �뿰寃�.
			// String oid = "";

			// #####################
			// 3.API �슂泥� �쟾臾� �깮�꽦
			// #####################
			Map<String, String> authMap = new Hashtable<String, String>();

			authMap.put("mid", mid); // �븘�닔d
			authMap.put("authToken", authToken); // �븘�닔
			authMap.put("signature", signature); // �븘�닔
			authMap.put("timestamp", timestamp); // �븘�닔
			authMap.put("charset", charset); // default=UTF-8
			authMap.put("format", format); // default=XML
			authMap.put("price", String.valueOf(session.getAttribute("total_price"))); // �븘�닔 (媛�寃⑹쐞蹂�議곗껜�겕湲곕뒫)
			// 2. 媛�留뱀젏�뿉�꽌 �듅�씤�떆 二쇰Ц踰덊샇媛� 蹂�寃쎈맆 寃쎌슦 (�꽑�깮�엯�젰) �븯�쐞 �뿰寃�.
			// authMap.put("oid", oid);

			// if(null != notiUrl && notiUrl.length() > 0){
			// authMap.put("notiUrl" ,notiUrl);
			// }

			HttpUtil httpUtil = new HttpUtil();

			// #####################
			// 4.API �넻�떊 �떆�옉
			// #####################

			String authResultString = "";

			authResultString = httpUtil.processHTTP(authMap, authUrl);

			System.out.println(authUrl);
			
			// ############################################################
			// 5.API �넻�떊寃곌낵 泥섎━(***媛�留뱀젏 媛쒕컻�닔�젙***)
			// ############################################################

			String test = authResultString.replace(",", "&").replace(":", "=").replace("\"", "").replace(" ", "")
					.replace("\n", "").replace("}", "").replace("{", "");

			Map<String, String> resultMap = new HashMap<String, String>();

			resultMap = ParseUtil.parseStringToMap(test); // 臾몄옄�뿴�쓣 MAP�삎�떇�쑝濡� �뙆�떛


			
			if ("0000".equals(resultMap.get("resultCode")) && resultMap.get("MOID").equals(sessions.getAttribute("moid"))) {
				/*****************************************************************************
				 * �뿬湲곗뿉 媛�留뱀젏 �궡遺� DB�뿉 寃곗젣 寃곌낵瑜� 諛섏쁺�븯�뒗 愿��젴 �봽濡쒓렇�옩 肄붾뱶瑜� 援ы쁽�븳�떎.
				 * 
				 * [以묒슂!] �듅�씤�궡�슜�뿉 �씠�긽�씠 �뾾�쓬�쓣 �솗�씤�븳 �뮘 媛�留뱀젏 DB�뿉 �빐�떦嫄댁씠 �젙�긽泥섎━ �릺�뿀�쓬�쓣 諛섏쁺�븿 泥섎━以� �뿉�윭 諛쒖깮�떆 留앹랬�냼瑜� �븳�떎.
				 ******************************************************************************/

				
				// 寃곗젣肄붾뱶 0000 �꽦怨� 肄붾뱶 �쑍 �긽�뭹 DB �뿉 ���옣
				HashMap<String, Object> map = new HashMap<String, Object>();
			    map.put("order_prdt_name", resultMap.get("goodName"));
			    map.put("order_prdt_price", resultMap.get("TotPrice"));
			    map.put("order_buy_time", resultMap.get("applDate")+resultMap.get("applTime"));
			    map.put("order_pay_msg", resultMap.get("resultMsg"));
			    
			    map.put("order_pay_option", resultMap.get("payMethod"));
			    map.put("order_pay_email", resultMap.get("custEmail"));
			    map.put("order_device", resultMap.get("payDevice"));
			    map.put("order_prdt_price_arr", session.getAttribute("option_total_price_arr"));
			    map.put("order_prdt_quantity", session.getAttribute("option_total_num_arr"));
			    map.put("order_prdt_option_name", session.getAttribute("arr_option"));
			    map.put("order_prdt_thumbnail", session.getAttribute("db_session_save_thumnail_image"));
			
			    
			    // 회원정보 저장
			    map.put("order_name", session.getAttribute("order_name"));
			    map.put("order_phone", session.getAttribute("order_phone"));
			    map.put("order_phone_add", session.getAttribute("order_phone_add"));
			    map.put("order_email", session.getAttribute("order_email"));
			    map.put("order_recipient", session.getAttribute("order_recipient"));
			    map.put("order_addr", session.getAttribute("order_addr"));
			    
			    
			    if(resultMap.get("payMethod").matches(".*(?i)bank.*")) {
			    	order_state = "deposit_wait";
			    }
			    else {
			    	order_state = "order_new";
			    }
			    
			    map.put("order_state", order_state);
			    
			    
			    map.put("order_recipient_phone", session.getAttribute("order_recipient_phone"));			    			 
			    map.put("order_recipient_phone_add", session.getAttribute("order_recipient_phone_add"));
			    map.put("order_delivery_message", session.getAttribute("order_delivery_message"));
			    map.put("order_delivery_message_add", session.getAttribute("order_delivery_message_add"));

				SampleService.selectBoardList(map, "selvishop.order_complete");
				
				// 寃곗젣肄붾뱶 0000 �꽦怨� 肄붾뱶 �쑍 �긽�뭹 DB �뿉 ���옣
				
				
				
				
				
				
				
				model.addAttribute("resultMap", resultMap);

				System.out.println("resultcode : " + resultMap.get("resultCode"));
				System.out.println("resultcode : " + resultMap.get("resultMsg"));
				System.out.println("resultcode : " + resultMap.get("tid"));
				System.out.println("resultcode : " + resultMap.get("payMethod"));
				System.out.println("resultcode : " + resultMap.get("TotPrice"));
				System.out.println("resultcode : " + resultMap.get("MOID"));
				System.out.println("resultcode : " + resultMap.get("applDate"));
				System.out.println("resultcode : " + resultMap.get("applTime"));
			
			    state = "success";
				System.out.println(state);
				
				response.sendRedirect("/");
				
				mv = new ModelAndView("/mypage/order_list"); 
			} else {

				// 寃곗젣�삤瑜�
				model.addAttribute("errorMsg", resultMap.get("resultMsg"));
			
				response.sendRedirect("/inipay");

			}
		}

		return mv;

	}
    
	
	
	
	
	
	
	
	@RequestMapping(value = "/order_prdt_info_session", method = RequestMethod.POST)
	@ResponseBody
	public void order_prdt_info_session(HttpSession sessions, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		sessions.setAttribute("order_name", request.getParameter("order_name"));
		sessions.setAttribute("order_phone", request.getParameter("order_phone"));
		sessions.setAttribute("order_phone_add", request.getParameter("order_phone_add"));
		sessions.setAttribute("order_email", request.getParameter("order_email"));
		sessions.setAttribute("order_recipient", request.getParameter("order_recipient"));
		sessions.setAttribute("order_addr", request.getParameter("order_addr"));
		sessions.setAttribute("order_recipient_phone", request.getParameter("order_recipient_phone"));
		sessions.setAttribute("order_recipient_phone_add", request.getParameter("order_recipient_phone_add"));
		sessions.setAttribute("order_delivery_message", request.getParameter("order_delivery_message"));
		sessions.setAttribute("order_delivery_message_add", request.getParameter("order_delivery_message_add"));

	}

		
		
	
	
	
}
