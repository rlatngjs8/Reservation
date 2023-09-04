package com.himedia.springboot;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class YoonController {
	
	@Autowired
	private productDAO pdao;
	
	@Autowired
	private RoomDAO rdao;
	
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

	
	//213123
}
