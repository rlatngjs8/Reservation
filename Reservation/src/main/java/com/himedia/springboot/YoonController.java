package com.himedia.springboot;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class YoonController {
	
	@Autowired
	private productDAO pdao;
	
	@Autowired
	private RoomDAO rdao;
	
	@Autowired
	private ReservationDAO resdao; 
	
//	@GetMapping("/review")
//	public String review (HttpServletRequest req,Model model) {
//		HttpSession session = req.getSession();
//		int space_id = Integer.parseInt(req.getParameter("space_id"));
//		productDTO pdto = pdao.get_one_space(space_id);
//		model.addAttribute("space", pdto);
//		String userid = (String) session.getAttribute("userid");
//		model.addAttribute("a", userid);
//		return "review";
//	}
	
	
	@PostMapping("review_insert")
	@ResponseBody
	public String review_insert(HttpServletRequest req, Model model) {
		int rating = Integer.parseInt(req.getParameter("rating"));
		String review_content = req.getParameter("review_content");
		String userid = req.getParameter("userid");
		int space_id = Integer.parseInt(req.getParameter("space_id"));
		pdao.review_insert(rating, review_content, userid, space_id);
		return "";
	}
	
	@GetMapping("/test")
	public String test() {
		return "test";
	}
	
	@PostMapping("/review_get")
	@ResponseBody
	public String review_get(HttpServletRequest req, Model model) {
		int space_id = Integer.parseInt(req.getParameter("space_id"));
	    ArrayList<ReviewDTO> review_get = pdao.select_review(space_id);
	    JSONArray ja = new JSONArray();
	    for (int i = 0; i < review_get.size(); i++) {
	        JSONObject jo = new JSONObject();
	        jo.put("review_id", review_get.get(i).getReview_id());
	        jo.put("space_id", review_get.get(i).getSpace_id());
	        jo.put("userid", review_get.get(i).getUserid());
	        jo.put("rating", review_get.get(i).getRating());
	        jo.put("review_content", review_get.get(i).getReview_content());
	        jo.put("created", review_get.get(i).getCreated());
	        ja.add(jo);
	    }
	    return ja.toJSONString();
	}
	
	@PostMapping("/insert_temp_reservation")
	@ResponseBody
	public String insert_temp_reservation(HttpServletRequest req, Model model) {
		int start_time = Integer.parseInt(req.getParameter("start_time"));
		int end_time = Integer.parseInt(req.getParameter("end_time"));
		String reservation_date = req.getParameter("reservation_date");
		int total_price = Integer.parseInt(req.getParameter("total_price"));
		int space_id = Integer.parseInt(req.getParameter("space_id"));
		String userid = req.getParameter("userid");
		resdao.insert_temp_reservation(start_time, end_time, reservation_date, total_price, space_id, userid);
		return "redirect:/space";
	}
	
	@PostMapping("/get_temp_reservation")
	@ResponseBody
	public String get_temp_reservation(HttpServletRequest req, Model model){
		HttpSession session = req.getSession();		
		String userid = (String)session.getAttribute("userid");
		model.addAttribute("userid",userid);
		System.out.println(userid);
		ArrayList<temp_reservationDTO> temp_reservation = resdao.select_temp_reservation(userid);
		System.out.println("size ["+ temp_reservation.size()+"]");
		JSONArray ja = new JSONArray();
		for( int i = 0 ; i < temp_reservation.size(); i++ ) {
			JSONObject jo = new JSONObject();
			jo.put("reservation_id", temp_reservation.get(i).getReservation_id());
			jo.put("start_time", temp_reservation.get(i).getStart_time());
			jo.put("end_time", temp_reservation.get(i).getEnd_time());
			jo.put("reservation_date", temp_reservation.get(i).getReservation_date());
			jo.put("total_price", temp_reservation.get(i).getTotal_price());
			jo.put("space_id", temp_reservation.get(i).getSpace_id());
			jo.put("userid", temp_reservation.get(i).getUserid());
			jo.put("space_name", temp_reservation.get(i).getSpace_name());
			jo.put("space_type", temp_reservation.get(i).getSpace_type());
			jo.put("price", temp_reservation.get(i).getPrice());
			jo.put("img1", temp_reservation.get(i).getImg1());
			jo.put("mobile", temp_reservation.get(i).getMobile());
			jo.put("description", temp_reservation.get(i).getDescription());
			jo.put("capacity", temp_reservation.get(i).getCapacity());
			jo.put("email", temp_reservation.get(i).getEmail());
			jo.put("name", temp_reservation.get(i).getName());
			
			ja.add(jo);
		}  
		return ja.toJSONString();
	} 
	
//	@PostMapping("delete_temp_reservation")
//	public String delete_temp_reservation(HttpServletRequest req, Model model) {
//		int reservation_id = Integer.parseInt(req.getParameter("data[i]['reservation_id']"));
//		resdao.delete_temp_reservation(reservation_id);
//		return "redirect:/paytest";
//	}
	
	@PostMapping("/delete_temp_reservation")
	@ResponseBody
	public String delete_temp_reservation(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();		
		String userid = (String)session.getAttribute("userid");
		model.addAttribute("userid",userid);
	    resdao.delete_temp_reservation(userid);
	    return "";
	}
	
	
	
	@GetMapping("/cart")
	public String cart(Model model) {
		return "cart";
	}

	@PostMapping("/get_reinfo")
	@ResponseBody
	public String get_reinfo(HttpServletRequest req, Model model) {
		int space_id = Integer.parseInt(req.getParameter("space_id"));
	    ArrayList<ReservationDTO> get_reinfo = resdao.get_reinfo(space_id);
	    JSONArray ja = new JSONArray();
	    for (int i = 0; i < get_reinfo.size(); i++) {
	        JSONObject jo = new JSONObject();
	        jo.put("seqno", get_reinfo.get(i).getSeqno());
	        jo.put("userid", get_reinfo.get(i).getUserid());
	        jo.put("name", get_reinfo.get(i).getName());
	        jo.put("mobile",get_reinfo.get(i).getMobile());
	        jo.put("useday", get_reinfo.get(i).getUseday());
	        jo.put("space_name", get_reinfo.get(i).getSpace_name());
	        jo.put("startTime", get_reinfo.get(i).getStartTime());
	        jo.put("endTime", get_reinfo.get(i).getEndTime());
	        jo.put("totalPrice",get_reinfo.get(i).getTotalPrice());
	        jo.put("purchaseTime", get_reinfo.get(i).getPurchaseTime());
	        ja.add(jo);
	    }
	    return ja.toJSONString();
	 
	}
	
	@PostMapping("/qa_insert")
	@ResponseBody
	public String qa_insert(HttpServletRequest req, Model model) {
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		String title = req.getParameter("title");
		int space_id = Integer.parseInt(req.getParameter("space_id"));
		pdao.qa_insert(content, writer, title , space_id);
		return "";
	}
	
//	@PostMapping("/delete_temp_reservation")
//	@ResponseBody
////	public String delete_temp_reservation(HttpServletRequest req, Model model) {
//		HttpSession session = req.getSession();		
//		String userid = (String)session.getAttribute("userid");
//		model.addAttribute("userid",userid);
//	    resdao.delete_temp_reservation(userid);
//	    return "";
//	}
	
	
	@PostMapping("/get_member_info")
	@ResponseBody
	public String get_member_info(HttpServletRequest req, Model model) {
		String userid = req.getParameter("userid");
		ArrayList<memberDTO> get_member_info = pdao.get_member_info(userid);
		JSONArray ja = new JSONArray();
	    for (int i = 0; i < get_member_info.size(); i++) {
	        JSONObject jo = new JSONObject();
	        jo.put("num", get_member_info.get(i).getNum());
	        jo.put("userid",get_member_info.get(i).getUserid());
	        jo.put("passcode", get_member_info.get(i).getPasscode());
	        jo.put("name",get_member_info.get(i).getName());
	        jo.put("birthday", get_member_info.get(i).getBirthday());
	        jo.put("address", get_member_info.get(i).getAddress());
	        jo.put("email", get_member_info.get(i).getEmail());
	        jo.put("mobile", get_member_info.get(i).getMobile());
	        jo.put("created",get_member_info.get(i).getCreated());
	        ja.add(jo);
	    }
	    return ja.toJSONString();
	}
	
	
	@PostMapping("/qa_get")
	@ResponseBody
	public String qa_get(HttpServletRequest req, Model model) {
		int space_id = Integer.parseInt(req.getParameter("space_id"));
		ArrayList<BoardDTO> qa_get= pdao.qa_get(space_id);
		JSONArray ja = new JSONArray();
	    for (int i = 0; i < qa_get.size(); i++) {
	        JSONObject jo = new JSONObject();
	        jo.put("seqno", qa_get.get(i).getSeqno());
	        jo.put("title",qa_get.get(i).getTitle());
	        jo.put("content", qa_get.get(i).getContent());
	        jo.put("writer",qa_get.get(i).getWriter());
	        jo.put("hit", qa_get.get(i).getHit());
	        jo.put("crated", qa_get.get(i).getCreated());
	        jo.put("updated", qa_get.get(i).getUpdated());
	        jo.put("space_id", qa_get.get(i).getSpace_id());
	        jo.put("created", qa_get.get(i).getCreated());
	        ja.add(jo);
	    }
	    return ja.toJSONString();
	}
	
	@PostMapping("/get_terms_of_use")
	@ResponseBody
	public String get_terms_of_use(HttpServletRequest req, Model model) {
		ArrayList<serviceDTO> terms_of_use = resdao.get_terms_of_use();
		JSONArray ja = new JSONArray();
	    for (int i = 0; i < terms_of_use.size(); i++) {
	        JSONObject jo = new JSONObject();
	        jo.put("num", terms_of_use.get(i).getNum());
	        jo.put("terms_of_use",terms_of_use.get(i).getTerms_of_use());
	        jo.put("personal_information", terms_of_use.get(i).getPersonal_information());
	        ja.add(jo);
	    }
	    return ja.toJSONString();
	}
	
	
	@GetMapping("/ttest")
	public String ttest() {
		return "ttest";
				
	}
	
	@PostMapping("/re_insert")
	@ResponseBody
	public String re_insert(HttpServletRequest req, Model model) {
		 // 현재 날짜와 시간을 얻습니다.
        Date currentDate = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String purchaseTime = dateFormat.format(currentDate);
		int totalPrice = Integer.parseInt(req.getParameter("total_price"));
		
		String email = req.getParameter("email");
		String name = req.getParameter("name");
		String space_name = req.getParameter("space_name");
		String useday = req.getParameter("useday");
		int startTime = Integer.parseInt(req.getParameter("startTime"));
		int endTime = Integer.parseInt(req.getParameter("endTime"));
		String userid = req.getParameter("userid");
		System.out.println("asdasd="+purchaseTime);
		model.addAttribute("purchaseTime", purchaseTime);
		resdao.re_insert (useday, startTime, endTime, totalPrice, userid, space_name, purchaseTime );
		//HttpSession session= req.getSession();
		//String userid = (String) session.getAttribute("userid");
		//String purchaseTime = req.getParameter("purchaseTime"); 
      //System.out.println("Time " + purchaseTime);
//		ArrayList<ReservationDTO> alReser = resdao.payCom(totalPrice, userid);
//		if (!alReser.isEmpty()) {
//		    // 리스트가 비어있지 않으면 값이 들어왔음을 확인할 수 있습니다.
//		    // 예를 들어, 리스트 크기 출력
//		    System.out.println("예약 정보 개수: " + alReser.size()); //size 1개 잘나옴
//		} else {
//		    // 리스트가 비어있을 때의 처리
//		    System.out.println("예약 정보가 없습니다.");
//		}
//
//		model.addAttribute("pay", alReser);
//		
		return "";
		}
//        
		
		@PostMapping("/get_re_info")
		@ResponseBody
		public String get_re_info(HttpServletRequest req) {
		    String userid = req.getParameter("userid");
		    int totalPrice = Integer.parseInt(req.getParameter("totalPrice"));
		    ArrayList<ReservationDTO> alReser = resdao.payCom(totalPrice, userid);
		    JSONArray ja = new JSONArray();
		    for (int i = 0; i < alReser.size(); i++) {
		        JSONObject jo = new JSONObject();
		        jo.put("seqno", alReser.get(i).getSeqno()); // 수정된 부분
		        jo.put("userid", alReser.get(i).getUserid());
		        jo.put("name", alReser.get(i).getName());
		        jo.put("mobile", alReser.get(i).getMobile());
		        jo.put("space_name", alReser.get(i).getSpace_name());
		        jo.put("useday", alReser.get(i).getUseday());
		        jo.put("startTime", alReser.get(i).getStartTime());
		        jo.put("endTime", alReser.get(i).getEndTime());
		        jo.put("totalPrice", alReser.get(i).getTotalPrice());
		        jo.put("purchaseTime", alReser.get(i).getPurchaseTime());
		        ja.add(jo);
		    }
		    return ja.toJSONString();
		}

}
