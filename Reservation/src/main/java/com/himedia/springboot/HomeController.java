package com.himedia.springboot;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	private RoomDAO rdao;
	
	@GetMapping("/")
	public String home(HttpServletRequest req,Model model) {

		HttpSession session = req.getSession();
		String userid =(String) session.getAttribute("userid");
		if(userid == null || userid.equals("")) {
			// 홈페이지 처음 접속경우 or 로그인 실패하고 홈으로 돌아온 경우
			model.addAttribute("name","");
		} else {
			// 로그인 성공한 경우
			model.addAttribute("name",(String) session.getAttribute("username"));
		}
		
		return "mainhome";
	}
	@GetMapping("/login")
	public String login(Model model) {
			model.addAttribute("loginFailed", false);
		return "login";
	}
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}

	// 회원가입, 로그인, 로그아웃
	@PostMapping("/dosignup")		// ajax 링크
	@ResponseBody
	public String dojoin(HttpServletRequest req, Model model) {
		String userid = req.getParameter("userid");
		String passcode = req.getParameter("passcode");
		String name = req.getParameter("name");
		String birthday = req.getParameter("birthday");
		String address = req.getParameter("address");
		String email = req.getParameter("email");
		String mobile = req.getParameter("mobile");
		
		int cnt = rdao.signup(userid,passcode,name,birthday,address,email,mobile);
		
		return ""+cnt;
	}
	
	@PostMapping("/doLogin")		// 로그인 화면 변경. 잘모르겠음	로그인버튼 눌렀을때	
	public String doLogin(HttpServletRequest req, Model model) {
		String loginid = req.getParameter("loginid");		//인풋의 name써야함
		String pwd = req.getParameter("loginpw");			// 마찬가지
		int n = rdao.login(loginid, pwd);		// xml에서 int로 받아오기때문에
		if(n == 1) {								// 받아온값이 1이면 (갯수가 1개라서)
			HttpSession session = req.getSession();
			session.setAttribute("userid", loginid);	// 유저아이디에 로그인아이디
			session.setAttribute("username", loginid);
			return "redirect:/";		// /url로 가서 메소드까지 실행하고 리턴
		} else {
				model.addAttribute("loginFailed", true);
			return "redirect:/login";
		}
	}
	@GetMapping("/logout")
	public String doLogout(HttpServletRequest req) {
		HttpSession s = req.getSession();
		s.invalidate();
		return "redirect:/";
	}
	// ----------------------
	// 관리자 페이지
	// 회원관리창 (회원목록, 페이지)
	@GetMapping("/showMembers")
	public String showMembers(HttpServletRequest req, Model model) {
		int start,psize;
		String page = req.getParameter("pageno");
		if(page == null || page.equals("")) {
			page="1";
		}
		int pno = Integer.parseInt(page);
		start = (pno -1) * 10;
		psize = 10;
		ArrayList<RoomDTO> alBoard = rdao.getList(start, psize);
		
		int cnt=rdao.getTotal();
		System.out.println("cnt="+cnt);
		int pagecount = (int) Math.ceil(cnt/10.0);
		System.out.println("pagecount="+pagecount);
		
		String pagestr="";
		for(int i=1; i<=pagecount; i++) {
			if(pno == i) {
				pagestr += i+"&nbsp;";
			} else {
				pagestr+="<a href='/showMembers?pageno="+i+"'>"+i+"</a>&nbsp;";				
			}
			System.out.println(pagestr);
		}
		model.addAttribute("pagestr",pagestr);
		model.addAttribute("blist",alBoard);
	
		return "showMembers";
	}
	// 회원삭제
 @PostMapping("/memberDelete")
 public String deleteMember(HttpServletRequest req, Model model) {
    	int num = Integer.parseInt(req.getParameter("num"));
 				rdao.deleteMember(num);
     return "showMembers"; // 클라이언트로 응답 전송
 }
	
 
 
 @GetMapping("/manager")				// ..승환님이 만든 버튼으로 링크
 public String manaager() {
 		return "manager";
 }
	// 게시판 - 승환
 @GetMapping("/board") 
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
				pagestr += "<a href='/board?pageno=" + i + "'>" + i + "</a>&nbsp;";
			}
		}
		model.addAttribute("pagestr",pagestr);
		model.addAttribute("blist",alBoard);
		return "/board";
	}
	
	@PostMapping("/insert")
	public String insert(HttpServletRequest req) {
		HttpSession session= req.getSession();
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String writer = (String)session.getAttribute("userid");
		rdao.insert(title, content, writer);
		return "redirect:/board";	
	}
	
	@GetMapping("/write")
	public String write() {
		return "write";
	}
	
	@GetMapping("/view")
	public String view(HttpServletRequest req, Model model) {
		int seqno = Integer.parseInt(req.getParameter("seqno"));
		BoardDTO bdto = rdao.view(seqno);
		rdao.hitup(seqno);
		model.addAttribute("bpost", bdto);
		return "view";
	}
	
//	@GetMapping("/mainhome")
//	public String mainhome(HttpServletRequest req,Model model) {
////		int seqno = Integer.parseInt(req.getParameter("seqno"));
////		RDTO bdto=bdao.view(seqno);
////		bdao.hitup(seqno);
////		model.addAttribute("bpost",bdto);
//		return "mainhome";
//	}
	
	@GetMapping("/reservation_page")
	public String reservationPage() {
	    return "reservation_page"; 
	}

	@PostMapping("/payment")
	public String processPayment(HttpServletRequest req, Model model) {
	    // reservation_page에서 전달된 파라미터 읽기
	    String room = req.getParameter("room");
	    String date = req.getParameter("date");
	    String time = req.getParameter("time");
	    String title = req.getParameter("title");
	    String founder = req.getParameter("founder");
	    String participants = req.getParameter("participants");
	    String content = req.getParameter("content");
	    
	    // 모델에 파라미터 값을 설정하여 payment.jsp로 전달
	    model.addAttribute("room", room);
	    model.addAttribute("date", date);
	    model.addAttribute("time", time);
	    model.addAttribute("title", title);
	    model.addAttribute("founder", founder);
	    model.addAttribute("participants", participants);
	    model.addAttribute("content", content);
	    
	    return "payment"; // payment.jsp로 이동
	}
	@PostMapping("/payment_complete")
	public String CompletePayment() {
	    return "payment_complete"; 
	}
 @GetMapping("/delete")
 public String delete(HttpServletRequest req) {
    int seqno = Integer.parseInt(req.getParameter("seqno"));
    rdao.delete(seqno);
    return "redirect:/";
 }
 // 추가 !@#!@#@!#@!#@!3
 @GetMapping("/update")
 public String update(HttpServletRequest req, Model model) {
    int seqno = Integer.parseInt(req.getParameter("seqno"));
    BoardDTO bdto = rdao.view(seqno);
    model.addAttribute("bpost",bdto);
    return "update";
 }
 // 추가
 @PostMapping("/modify")
 public String modify(HttpServletRequest req) {
    int seqno = Integer.parseInt(req.getParameter("seqno"));
    String title = req.getParameter("title");
    String content = req.getParameter("content");
    rdao.update(seqno, title, content);
    return "redirect:/";
 }
// 예약관리(수헌)
// 예약조회
 
@Autowired
private ReservationDAO redao;
@GetMapping("/showReservation")
public String reservaiton(HttpServletRequest req, Model model) {
		int start,psize;
		String page = req.getParameter("pageno");
		if(page == null || page.equals("")) {
			page="1";
		}
		int pno = Integer.parseInt(page);
		start = (pno -1) * 10;
		psize = 10;
		ArrayList<ReservationDTO> alReservation = redao.getList2(start, psize);
		
		int cnt=redao.getTotal2();
		int pagecount = (int) Math.ceil(cnt/10.0);
		
		String pagestr="";
		for(int i=1; i<=pagecount; i++) {
			if(pno == i) {
				pagestr += i+"&nbsp;";
			} else {
				pagestr+="<a href='/ReservationManage/showReservation?pageno="+i+"'>"+i+"</a>&nbsp;";				
				// 안되면 주소 수정
			}
			System.out.println(pagestr);
		}
		System.out.println(alReservation.size());
		System.out.println("cnt=" + cnt);
		model.addAttribute("pagestr",pagestr);
		model.addAttribute("rlist",alReservation);
	
	return "/ReservationManage/showReservation";
}

@GetMapping("/event")
public String goEventPage() {
	return "/event";
}

<<<<<<< HEAD
@GetMapping("/event1")
public String goEvent1Page() {
	return "/event1";
}

@GetMapping("/event2")
public String goEvent2Page() {
	return "/event2";
}

=======
>>>>>>> branch 'master' of https://github.com/rlatngjs8/Reservation.git
}
	