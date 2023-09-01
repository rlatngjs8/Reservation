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
public class KimController {
//예약관리(수헌)
//예약조회

		@Autowired
		private ReservationDAO redao;
		@Autowired
		private RoomDAO rdao;
		
		@GetMapping("/showReservation")
		public String reservaiton(HttpServletRequest req, Model model) {
				int start, psize;
				String page = req.getParameter("pageno");
				if (page == null || page.equals("")) {
						page = "1";
				}
				int pno = Integer.parseInt(page);
				start = (pno - 1) * 10;
				psize = 10;
				ArrayList<ReservationDTO> alReservation = redao.getList2(start, psize);

				int cnt = redao.getTotal2();
				int pagecount = (int) Math.ceil(cnt / 10.0);

				String pagestr = "";
				for (int i = 1; i <= pagecount; i++) {
						if (pno == i) {
								pagestr += i + "&nbsp;";
						} else {
								pagestr += "<a href='/ReservationManage/showReservation?pageno=" + i + "'>" + i + "</a>&nbsp;";
								// 안되면 주소 수정
						}
						System.out.println(pagestr);
				}
				System.out.println(alReservation.size());
				System.out.println("cnt=" + cnt);
				model.addAttribute("pagestr", pagestr);
				model.addAttribute("rlist", alReservation);

				return "/ReservationManage/showReservation";
		}

//예약삭제
		@PostMapping("/reDelete")
		public String reDelete(HttpServletRequest req, Model model) {
				int seqno = Integer.parseInt(req.getParameter("seqno"));
				redao.reDelete(seqno);
				return "/ReservationManage/showReservation"; // 클라이언트로 응답 전송
		}

		
		// Q&A
		
	 @GetMapping("/Q&A") 
		public String Board(HttpServletRequest req, Model model) {
			int start,psize,pno;
			HttpSession session= req.getSession();
			String userid=(String)session.getAttribute("userid");
			
			if(userid==null || userid.equals("")) {
				// 홈페이지 처음 들어간 경우.
				model.addAttribute("name","");
			} else {
				//로그인 성공한 경우
				model.addAttribute("name",(String) session.getAttribute("username"));
			}
			
			String page = req.getParameter("pageno");
			
			if(page == null || page.equals("")) {
				pno=1;
			} else {
				pno = Integer.parseInt(page);
			}
			
			start = (pno - 1) * 10;
			psize = 10;
			ArrayList<BoardDTO> alBoard = rdao.getList1(start, psize);

			int cnt = rdao.getTotal1();
			int pagecount = (int) Math.ceil(cnt/10.0);
			System.out.println("pagecount=" + pagecount);
			
			String pagestr = "";
			for(int i = 1; i <= pagecount; i++ ) {
				if(pno == i) {
					pagestr += i + "&nbsp";
				} else {
					pagestr += "<a href='/Q&A?pageno=" + i + "'>" + i + "</a>&nbsp;";
				}
			}
			model.addAttribute("pagestr",pagestr);
			model.addAttribute("blist",alBoard);
			return "Q&A/Q&A";
		}
		
		@PostMapping("/insert")
		public String insert(HttpServletRequest req) {
			HttpSession session= req.getSession();
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			String writer = (String)session.getAttribute("userid");
			rdao.insert(title, content, writer);
			return "redirect:Q&A/Q&A";	
		}
		
		@GetMapping("/write")
		public String write() {
			return "Q&A/write";
		}
		
		@GetMapping("/view")
		public String view(HttpServletRequest req, Model model) {
			int seqno = Integer.parseInt(req.getParameter("seqno"));
			BoardDTO bdto = rdao.view(seqno);
			rdao.hitup(seqno);
			model.addAttribute("bpost", bdto);
			return "Q&A/view";
		}
	 @GetMapping("/delete")
	 public String delete(HttpServletRequest req) {
	    int seqno = Integer.parseInt(req.getParameter("seqno"));
	    rdao.delete(seqno);
	    return "redirect:/Q&A";
	 }
	 // 추가 !@#!@#@!#@!#@!3
	 @GetMapping("/update")
	 public String update(HttpServletRequest req, Model model) {
	    int seqno = Integer.parseInt(req.getParameter("seqno"));
	    BoardDTO bdto = rdao.view(seqno);
	    model.addAttribute("bpost",bdto);
	    return "Q&A/update";
	 }
	 // 추가
	 @PostMapping("/modify")
	 public String modify(HttpServletRequest req) {
	    int seqno = Integer.parseInt(req.getParameter("seqno"));
	    String title = req.getParameter("title");
	    String content = req.getParameter("content");
	    rdao.update(seqno, title, content);
	    return "redirect:/Q&A";
	 }

	 @PostMapping("/addComment")
	 public String comment(HttpServletRequest req) {
	     int seqno = Integer.parseInt(req.getParameter("seqno"));
	     String comment = req.getParameter("comment");
	     
	     System.out.println("seqno=" + seqno);
	     System.out.println("comment= " + comment);

	     rdao.comment(seqno, comment);
	     
//	     String redirectUrl = String.format("redirect:/Q&A/view?seqno=%d", seqno);
//	     return redirectUrl; // 리다이렉트 URL을 직접 리턴
	     return "redirect:/Q&A";
	 }
	 //밈ㄴ암넝
}
