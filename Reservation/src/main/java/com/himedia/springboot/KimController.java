package com.himedia.springboot;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.cj.xdevapi.JsonArray;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class KimController {
//예약관리(수헌)
//예약조회
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
		@Autowired
		private ReservationDAO redao;
		@Autowired
		private RoomDAO rdao;
		@Autowired
		private BoardDAO bdao;
		
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
				model.addAttribute("name",(String) session.getAttribute("userid"));
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
	 @GetMapping("/myPage")
	 public String changeUser(HttpServletRequest req, Model model) {
	 			HttpSession session= req.getSession();
	 			String userid = (String) session.getAttribute("userid");
	    String passcode = (String) session.getAttribute("passcode");
	    ArrayList<RoomDTO> member = rdao.getListOne(userid);
	    
	    
	
	    // 모델에 사용자 ID와 비밀번호 추가
	    model.addAttribute("userid", userid);
	    model.addAttribute("passcode", passcode);
	    // 나머지 추가
	    model.addAttribute("member",member);
	    
		
		ArrayList<BoardDTO> alBoard = bdao.getBoard(userid);
		model.addAttribute("blist",alBoard);
		
		ArrayList<ReservationDTO> alRe = redao.selectList(userid);
		model.addAttribute("relist",alRe);
			
	    
		return "myPage";
	}
	 @PostMapping("/userEdit")
	 public String userEdit(HttpServletRequest req, Model model) {
	 		String userid = req.getParameter("userid");
	 		String passcode = req.getParameter("passcode");
	 		String email = req.getParameter("email");
	 		String address = req.getParameter("address");
	 		String mobile = req.getParameter("mobile");
	 		
	 	System.out.println(passcode);   
    rdao.userUpdate(passcode,email,address,mobile,userid);
	 		return "redirect:/myPage";
	 }
	 @PostMapping("/checkPasscode")
	 @ResponseBody
	 public String checkPasscode(HttpServletRequest req, Model model) {
		 String userid = req.getParameter("userid");
		 System.out.println(userid);
		 String passcode = req.getParameter("passcode");
		 System.out.println(passcode);
		 int n = rdao.login(userid, passcode);
		 System.out.println("n="+ n);
		 if(n == 1) {
//			model.addAttribute("passcodeMatched",true);
			 return "true";
		 } else {
//			model.addAttribute("passcodeMatched",false);
			 return "false";
		 }
	 }
	 @PostMapping("/deleteCheck")
	 @ResponseBody
	 public String delMember(HttpServletRequest req, Model model) {
		 String userid = req.getParameter("userid");
		 String passcode = req.getParameter("passcode");
		 int n = rdao.login(userid, passcode);
		 if(n == 1) {
//			model.addAttribute("passcodeMatched",true);
			 return "true";
		 } else {
//			model.addAttribute("passcodeMatched",false);
			 return "false";
		 }
	 }
	 @PostMapping("/delMember")
	 @ResponseBody
	 public String delMember1(HttpServletRequest req) {
		 String userid= req.getParameter("userid");
		 System.out.println("userid=" + userid);
		 boolean success =rdao.deleteMember1(userid);
		 System.out.println("success="+success);
		 
		 if(success) {
			 HttpSession s = req.getSession();
			 s.invalidate();
			 return "success";
		 } else {
			 return "fail";
		 }
	 }
	 @GetMapping("/Q&Aview")
	 public String qnaview(HttpServletRequest req, Model model){
		 HttpSession session= req.getSession();
		 String userid = (String) session.getAttribute("userid");
		 
		 BoardDTO bdto = bdao.viewBoardDTO(userid);
			bdao.hitup(userid);
			model.addAttribute("bpost", bdto);
		 
		 return"Q&Aview";
	 }
	 
	 @Autowired
	 private reviewDAO revDAO;
	 @GetMapping("/review")
	 public String review(HttpServletRequest req, Model model) {
	 		int start, psize;
				String page = req.getParameter("pageno");
				if (page == null || page.equals("")) {
						page = "1";
				}
				int pno = Integer.parseInt(page);
				start = (pno - 1) * 10;
				psize = 10;
				ArrayList<ReviewDTO> alReview = revDAO.getReview(start, psize);

				int cnt = revDAO.getTotal4();
				int pagecount = (int) Math.ceil(cnt / 10.0);

				String pagestr = "";
				for (int i = 1; i <= pagecount; i++) {
						if (pno == i) {
								pagestr += i + "&nbsp;";
						} else {
								pagestr += "<a href='/review?pageno=" + i + "'>" + i + "</a>&nbsp;";
								// 안되면 주소 수정
						}
						System.out.println(pagestr);
				}
				model.addAttribute("pagestr", pagestr);
				model.addAttribute("rlist", alReview);
				System.out.println(alReview.size());

	 		return "reviewManage/review";
	 }
	@GetMapping("/paymentCompleted")
	public String payCom(HttpServletRequest req, Model model) {
			HttpSession session= req.getSession();
//			int seqno = (int) session.getAttribute("seqno");
			int seqno = 4;
			ArrayList<ReservationDTO> alReser = redao.payCom(seqno);
			
			model.addAttribute("seqno",seqno);
			model.addAttribute("pay", alReser);
			
			return "paymentCompleted";
	}
	@GetMapping("/sales")
	public String sales() {	
			return "sales";
	}
	
	@PostMapping("/getSalesData")
	@ResponseBody
	public String salesData(HttpServletRequest req) {
			String start = req.getParameter("start");
			String end = req.getParameter("end");
			System.out.println("start="+start);
			System.out.println("end="+end);
			
			ArrayList<ReservationDTO> sales = redao.sales(start, end);
			System.out.println(sales.size());
			JSONArray ja = new JSONArray();
			for(int i = 0; i<sales.size();i++) {
					JSONObject jo = new JSONObject();
					jo.put("purchaseTime", sales.get(i).getPurchaseTime());
					jo.put("totalPrice", sales.get(i).getTotalPrice());
					ja.add(jo);
			}
			return ja.toJSONString();
	}
}

