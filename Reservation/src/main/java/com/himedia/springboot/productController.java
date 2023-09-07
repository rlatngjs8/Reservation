package com.himedia.springboot;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class productController {
		
		@Autowired
		private productDAO pdao;
		
		@GetMapping("/productList")
		public String productList() {
				return "/productManage/productList";
		}

		
		// 상품관리 열리자마자 리스트
		@GetMapping("/productList1")
  public String searchProducts(HttpServletRequest req, Model model) {
      String keyword = req.getParameter("keyword");
      System.out.println("keyword="+keyword);
      int start, psize;
      String page = req.getParameter("pageno1");
      if (page == null || page.equals("")) {
          page = "1";
      }
      int pno = Integer.parseInt(page);
      start = (pno - 1) * 10;
      psize = 10;

      ArrayList<productDTO> alBoard;

      if (keyword != null && !keyword.isEmpty()) {
          // 키워드 검색을 수행하고 검색 결과를 가져옵니다.
          alBoard = pdao.searchProducts(keyword, start, psize);
      } else {
          // 키워드가 없으면 모든 상품을 가져옵니다.
          alBoard = pdao.getList(start, psize);
      }

      int cnt = pdao.getTotal();
      int pagecount = (int) Math.ceil(cnt / 10.0);

      String pagestr = "";
      for (int i = 1; i <= pagecount; i++) {
          if (pno == i) {
              pagestr += i + "&nbsp;";
          } else {
              pagestr += "<a href='/productList?pageno1=" + i + "'>" + i + "</a>&nbsp;";
          }
      }

      model.addAttribute("pagestr", pagestr);
      model.addAttribute("plist", alBoard);

      return "/productManage/productList";
  }

		
		// 상품추가버튼 링크
		@GetMapping("/addProduct")
		public String addProduct() {
				return "/productManage/addProduct";
		}

		// 상품삭제 버튼
		@PostMapping("/prodDelete")
		@ResponseBody
		public String prodDelete(HttpServletRequest req) {
				int space_id = Integer.parseInt(req.getParameter("space_id"));
				pdao.deleteProd(space_id);
				return "productList";
		}
		// 상품수정
		@GetMapping("/prodEdit")
		public String prodEdit(HttpServletRequest req, Model model) {
				int space_id = Integer.parseInt(req.getParameter("space_id"));
				productDTO pdto = pdao.prodview(space_id);
				model.addAttribute("ppost",pdto);
				return "/productManage/prodEdit";
		}
		
		@PostMapping("/prodModify")
		public String prodModify(HttpServletRequest req,
             						@RequestParam(name = "image1") MultipartFile image1,
                   @RequestParam(name = "image2") MultipartFile image2,
                   @RequestParam(name = "image3") MultipartFile image3,
                   @RequestParam(name = "image4") MultipartFile image4,
                   @RequestParam(name = "image5") MultipartFile image5) {
				int space_id = Integer.parseInt(req.getParameter("space_id"));
//				int space_id = 1;
				String space_name = req.getParameter("space_name");
				String space_type = req.getParameter("space_type");
				String location = req.getParameter("location");
				int extent = Integer.parseInt(req.getParameter("extent"));
				int capacity = Integer.parseInt(req.getParameter("capacity"));
				int price = Integer.parseInt(req.getParameter("price"));
				String mobile = req.getParameter("mobile");
				
				
				String img1 = (image1.isEmpty()) ? req.getParameter("prev_image1") : saveImage(image1, space_name, 1);
				String img2 = (image2.isEmpty()) ? req.getParameter("prev_image2") : saveImage(image2, space_name, 2);
    String img3 = (image3.isEmpty()) ? req.getParameter("prev_image3") : saveImage(image3, space_name, 3);
    String img4 = (image4.isEmpty()) ? req.getParameter("prev_image4") : saveImage(image4, space_name, 4);
    String img5 = (image5.isEmpty()) ? req.getParameter("prev_image5") : saveImage(image5, space_name, 5);
				
				String description = req.getParameter("description");
				pdao.prodUpdate(space_id, space_name, space_type, location, extent, capacity, price, mobile,
												img1, img2, img3, img4, img5, description);
				
				return "redirect:/productList";
		}
		
		
//		@PostMapping("/prodInsert")
//		public String prodInsert(HttpServletRequest req) {
//				String space_name = req.getParameter("space_name");
//				String space_type = req.getParameter("space_type");
//				String location = req.getParameter("location");
//				String extent = req.getParameter("extent");
//				String capacity = req.getParameter("capacity");
//				String price = req.getParameter("price");
//				String mobile = req.getParameter("mobile");
//				String img1 = req.getParameter("image1");
//				String img2 = req.getParameter("image2");
//				String img3 = req.getParameter("image3");
//				String img4 = req.getParameter("image4");
//				String img5 = req.getParameter("image5");
//				String description = req.getParameter("description");
//				
//				pdao.prodInsert(space_name, space_type, location, extent, capacity, price,
//								mobile, img1, img2, img3, img4, img5, description);
//				return "/productManage/addProduct";
//		}
		
		// db에 인서트 (이미지 업로드도)
		@PostMapping("/prodInsert")
		public String prodInsert(HttpServletRequest req,
		                         @RequestParam(name = "image1") MultipartFile image1,
		                         @RequestParam(name = "image2") MultipartFile image2,
		                         @RequestParam(name = "image3") MultipartFile image3,
		                         @RequestParam(name = "image4") MultipartFile image4,
		                         @RequestParam(name = "image5") MultipartFile image5) {

		    String space_name = req.getParameter("space_name");
		    String space_type = req.getParameter("space_type");
		    String location = req.getParameter("location");
		    String extent = req.getParameter("extent");
		    String capacity = req.getParameter("capacity");
		    String price = req.getParameter("price");
		    String mobile = req.getParameter("mobile");
		    String description = req.getParameter("description");

//		    String spath=req.getServletContext().getRealPath("classpath:/static");
//		    System.out.println("spath="+spath);
		    
		    
		    String img1 = saveImage(image1, space_name, 1);
		    String img2 = saveImage(image2, space_name, 2);
		    String img3 = saveImage(image3, space_name, 3);
		    String img4 = saveImage(image4, space_name, 4);
		    String img5 = saveImage(image5, space_name, 5);
		    
		    System.out.println(img1);

		    // 데이터베이스에 저장
		    pdao.prodInsert(space_name, space_type, location, extent, capacity, price,
		                    mobile, img1, img2, img3, img4, img5, description);

		    return "redirect:/productList";
		}

		private String saveImage(MultipartFile imageFile, String fileName, int imageNumber) {
		    if (imageFile != null && !imageFile.isEmpty()) {
		        String extension = getExtension(imageFile.getOriginalFilename());
		        String filePath = "C:/Users/1234/git/Reservation/Reservation/src/main/resources/static/img/" + fileName + imageNumber + extension;
		        try {
		            imageFile.transferTo(new File(filePath));
		        } catch (IOException e) {
		            e.printStackTrace();
		        }
		        return fileName + imageNumber + extension;
		    }
		    return null;
		}

		private String getExtension(String filename) {
		    int dotIndex = filename.lastIndexOf(".");
		    if (dotIndex > 0 && dotIndex < filename.length() - 1) {
		        return filename.substring(dotIndex);
		    }
		    return "";
		}
	// 공백있으면 언더바로 변경
	private String sanitizeFileName(String fileName) {
	    // 파일명에서 유효하지 않은 문자 제거 및 공백을 언더스코어로 대체
	    return fileName.replaceAll("[^a-zA-Z0-9]", "").replace(" ", "_");
		}

// 리스트 더블클릭 view로 링크
	@GetMapping("/productView")
	public String prodView(HttpServletRequest req, Model model) {
			int space_id = Integer.parseInt(req.getParameter("id"));
			productDTO prodview = pdao.prodview(space_id);
			model.addAttribute("product",prodview);
			return "/productManage/productView";
			}

// 승환 (상세페이지)
	@GetMapping("/space")
	public String space(HttpServletRequest req, Model model) {
		HttpSession session= req.getSession();
		
	    int space_id = 13;
	    productDTO pdto = pdao.get_one_space(space_id);
	    model.addAttribute("space", pdto);
	    String userid = (String) session.getAttribute("userid");
	    model.addAttribute("a", userid);
	    return "space";
	}

//@GetMapping("/check_login")	
//   @ResponseBody
//   public Map<String, Object> checkLoginStatus(HttpServletRequest request) {
//       Map<String, Object> response = new HashMap<>();
//       
//       // 세션에서 로그인 상태 확인
//       HttpSession session = request.getSession(false);
//       boolean loggedIn = session != null && session.getAttribute("user") != null;
//       
//       response.put("loggedIn", loggedIn);
//       return response;
//   }

@PostMapping("/get_space")
@ResponseBody
public String get_space(){
	ArrayList<productDTO> get_space = pdao.get_space();
	System.out.println("size ["+get_space.size()+"]");
	JSONArray ja = new JSONArray();
	for( int i = 0 ; i < get_space.size(); i++ ) {
		JSONObject jo = new JSONObject();
		jo.put("space_id", get_space.get(i).getSpace_id());
		jo.put("space_name", get_space.get(i).getSpace_name());
		jo.put("space_type", get_space.get(i).getSpace_type());
		jo.put("capacity", get_space.get(i).getCapacity());
		jo.put("location", get_space.get(i).getLocation());
		jo.put("DESCRIPTION", get_space.get(i).getDescription());
		jo.put("price", get_space.get(i).getPrice());
		jo.put("mobile", get_space.get(i).getMobile());
		jo.put("extent", get_space.get(i).getExtent());
		jo.put("img1", get_space.get(i).getImg1());
		jo.put("img2", get_space.get(i).getImg2());
		jo.put("img3", get_space.get(i).getImg3());
		jo.put("img4", get_space.get(i).getImg4());
		jo.put("img5", get_space.get(i).getImg5());
		ja.add(jo);
	}
	return ja.toJSONString();
}

//@PostMapping("/ReInsert")
//@ResponseBody
//public String processReservation(@RequestBody ReservationData reservationData, Model model) {
//    List<String> arrayDate = reservationData.getArrayDate();
//    List<String> arrayStartTime = reservationData.getArrayStartTime();
//    List<String> arrayEndTime = reservationData.getArrayEndTime();
//    List<Integer> arrayAddedPrice = reservationData.getArrayAddedPrice();
//    System.out.println("arrayDate :" + arrayDate);
//    System.out.println("arrayStartTime :" + arrayStartTime);
//    System.out.println("arrayEndTime :" + arrayEndTime);
//    System.out.println("arrayAddedPrice :" + arrayAddedPrice );
//    
//    
//
//    // Model에 데이터 추가
//    model.addAttribute("arrayDate", arrayDate);
//    model.addAttribute("arrayStartTime", arrayStartTime);
//    model.addAttribute("arrayEndTime", arrayEndTime);
//    model.addAttribute("arrayAddedPrice", arrayAddedPrice);
//
//    // 처리한 데이터를 보여줄 페이지로 이동
//    return "paytest"; // 보여줄 페이지 이름으로 변경하세요
//}

@PostMapping("/ReInsert")
@ResponseBody
public String processReservation(@RequestBody ReservationData reservationData, Model model) {
    List<String> arrayDate = reservationData.getArrayDate();
    List<String> arrayStartTime = reservationData.getArrayStartTime();
    List<String> arrayEndTime = reservationData.getArrayEndTime();
    List<Integer> arrayAddedPrice = reservationData.getArrayAddedPrice();
    System.out.println("arrayDate :" + arrayDate);
    System.out.println("arrayStartTime :" + arrayStartTime);
    System.out.println("arrayEndTime :" + arrayEndTime);
    System.out.println("arrayAddedPrice :" + arrayAddedPrice );
    JSONArray ja = new JSONArray();
    for( int i = 0 ; i < arrayDate.size(); i++ ) {
		JSONObject jo = new JSONObject();
		jo.put("arrayDate", arrayDate);
		jo.put("arrayStartTime", arrayStartTime);
		jo.put("arrayEndTime", arrayEndTime);
		jo.put("arrayAddedPrice", arrayAddedPrice);
		ja.add(jo);
	}
    return ja.toJSONString();
}


@GetMapping("/paytest")			// jsp 이름변경하면 이거 바꿔줘야함. 위에도 마찬가지
public String pay(Model model) {
//  List<String> arrayDate = (List<String>) model.getAttribute("arrayDate");
//  List<String> arrayStartTime = (List<String>) model.getAttribute("arrayStartTime");
//  List<String> arrayEndTime = (List<String>) model.getAttribute("arrayEndTime");
//  List<Integer> arrayAddedPrice = (List<Integer>) model.getAttribute("arrayAddedPrice");
//  System.out.println(arrayAddedPrice);
//  if (arrayDate != null && arrayStartTime != null && arrayEndTime != null && arrayAddedPrice != null) {
//    model.addAttribute("arrayDate", arrayDate);
//    model.addAttribute("arrayStartTime", arrayStartTime);
//    model.addAttribute("arrayEndTime", arrayEndTime);
//    model.addAttribute("arrayAddedPrice", arrayAddedPrice);
//}
		return "paytest";
}





	
//	@PostMapping("/ReInsert")
//	public String processReservation(@RequestBody ReservationData reservationData, Model model) {
//	    int totalAddedPrice = reservationData.getAddedPrice();
//	    String selectedDate = reservationData.getSelectedDate();
//	    String selectedStartTime = reservationData.getSelectedStartTime();
//	    String selectedEndTime = reservationData.getSelectedEndTime();
//	
//	    // Model에 데이터 추가
//	    model.addAttribute("totalAddedPrice", totalAddedPrice);
//	    model.addAttribute("selectedDate", selectedDate);
//	    model.addAttribute("selectedStartTime", selectedStartTime);
//	    model.addAttribute("selectedEndTime", selectedEndTime);
//	
//	    // 처리한 데이터를 보여줄 페이지로 이동
//	    return "payment"; // 보여줄 페이지 이름으로 변경하세요
//	}

	
@GetMapping("/PartyRoom")
public String showPartyRooms(Model model) {
	ArrayList<productDTO> alemp =pdao.get_space();
		
	model.addAttribute("rooms",alemp);
			
	return "/PartyRoom";
}
	
@GetMapping("/RecordingStudio")
public String showRecordingStudios(Model model) {
	ArrayList<productDTO> alemp = pdao.get_space();
	model.addAttribute("rooms",alemp);
	
	return "/RecordingStudio";
}

@GetMapping("/seminarRoom")
public String showSeminarRooms(Model model) {
	ArrayList<productDTO> alemp = pdao.get_space();
	model.addAttribute("rooms",alemp);
	
	return "/seminarRoom";
}

@GetMapping("/studyRoom")
public String showStudyRooms(Model model) {
	ArrayList<productDTO> alemp = pdao.get_space();
	model.addAttribute("rooms",alemp);
	
	return "/studyRoom";
	
}

@GetMapping("/allRooms")
public String showAllRooms(Model model) {
	ArrayList<productDTO> alemp = pdao.get_space();
	model.addAttribute("rooms",alemp);
	
	return "/allRooms";
}

@GetMapping("/newrooms")
public String shownewRooms(Model model) {
	ArrayList<productDTO> alemp = pdao.get_space();
	model.addAttribute("rooms",alemp);
	
	return "/newrooms";
}

}