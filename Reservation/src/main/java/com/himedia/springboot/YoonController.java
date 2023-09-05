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
	public String review_insert(HttpServletRequest req, Model model) {
		int rating = Integer.parseInt(req.getParameter("rating"));
		String review_content = req.getParameter("review_content");
		String userid = req.getParameter("userid");
		int space_id = Integer.parseInt(req.getParameter("space_id"));
		pdao.review_insert(rating, review_content, userid, space_id);
		return "redirect:/space";
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
	
	@PostMapping("insert_temp_reservation")
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
	
	@PostMapping("delete_temp_reservation")
	@ResponseBody
	public String delete_temp_reservation(HttpServletRequest req, Model model) {
	    String reservationIdParam = req.getParameter("reservation_id");
	    int cnt=0;
	    if (reservationIdParam != null && !reservationIdParam.isEmpty()) {
	        int reservation_id = Integer.parseInt(reservationIdParam);
	        cnt=resdao.delete_temp_reservation(reservation_id);
	    }
	    return ""+cnt;
	}


}
