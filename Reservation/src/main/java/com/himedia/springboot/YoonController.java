package com.himedia.springboot;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	
	//213123
}
