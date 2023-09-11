package com.himedia.springboot;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

   @Autowired
   private RoomDAO rdao;
   @Autowired
   private productDAO pdao;
   
   @GetMapping("/")
   public String home(HttpServletRequest req,Model model) {

      HttpSession session = req.getSession();
      String userid =(String) session.getAttribute("userid");
      if(userid == null || userid.equals("")) {
         // 홈페이지 처음 접속경우 or 로그인 실패하고 홈으로 돌아온 경우
         model.addAttribute("name","");
      } else {
         // 로그인 성공한 경우
         model.addAttribute("name",(String) session.getAttribute("name"));
      }
      	// 데이터베이스에서 받아서 mainhome 페이지에서 사용하기위해
      	ArrayList<productDTO> alemp = pdao.get_sapceNew();
      	model.addAttribute("rooms",alemp);
      	ArrayList<productDTO> alReview = pdao.reviewProd();
      	model.addAttribute("review",alReview);
      
      
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
   @PostMapping("/dosignup")      // ajax 링크
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
   
   @PostMapping("/doLogin")      // 로그인 화면 변경. 잘모르겠음   로그인버튼 눌렀을때   
   public String doLogin(HttpServletRequest req, HttpServletResponse response, Model model) {
      String userid = req.getParameter("loginid");      //인풋의 name써야함
      String passcode = req.getParameter("loginpw");// 마찬가지
      int n = rdao.login(userid, passcode);      // xml에서 int로 받아오기때문에
      if(n == 1) {                        // 받아온값이 1이면 (갯수가 1개라서)
      	ArrayList<RoomDTO> member = rdao.getListOne(userid);
      	String name = "";
//      			model.addAttribute("member",member);

      	if(!member.isEmpty()) {
      		name = member.get(0).getName();
      	} 
      	HttpSession session = req.getSession();
        session.setAttribute("userid", userid);   // 유저아이디에 로그인아이디
        session.setAttribute("passcode", passcode);
        session.setAttribute("name", name);
        
        // 쿠키 설정
        Cookie useridCookie = new Cookie("userid", userid);
        Cookie passcodeCookie = new Cookie("passcode", passcode);
        // 쿠키 유효기간 설정
        useridCookie.setMaxAge(15768000); //6개월 
        passcodeCookie.setMaxAge(15768000); 
        // 쿠키를 응답에 추가
        response.addCookie(useridCookie);
        response.addCookie(passcodeCookie);
        
        return "redirect:/";      // /url로 가서 메소드까지 실행하고 리턴
      } else {
    	  model.addAttribute("loginFailed", true);      
    	  return "login";
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
   
 
 
 @GetMapping("/manager")            // ..승환님이 만든 버튼으로 링크
 public String manaager() {
       return "manager";
 }

@GetMapping("/event")
public String goEventPage() {
   return "/event";
}
@GetMapping("/event1")
public String goEvent1Page() {
	return "/event1";
}


@GetMapping("/event2")
public String goEvent2Page() {
	return "/event2";
}


}


   