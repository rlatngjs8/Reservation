package com.himedia.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

@Mapper
public interface productDAO {
		//상품 목록불러오기
		ArrayList<productDTO> getList(int start, int psize);
		int getTotal();
		//상품 추가
//		void prodInsert(String p1, String p2, String p3,int p4, int p5, int p6, 
//												String p7, String p8, String p9, String p10, String p11, String p12, String p13);
		void prodInsert(String space_name, String space_type, String location, String extent, String capacity, String price,
						String mobile, String img1, String img2, String img3, String img4, String img5, String description);
		
		productDTO prodview(int space_id);
		
		void deleteProd(int space_id);
		
		void prodUpdate(int p0, String p1, String p2, String p3, int p4, int p5, int p6, String p7, String p8, String p9,
														String p10, String p11, String p12, String p13);
		
		// 승환
		ArrayList<productDTO> get_space();
		ArrayList<productDTO> getSpaceKey(String ketword);
		
		productDTO get_one_space(int space_id);
		void review_insert(int rating, String review_content, String userid, int space_id);
		ArrayList<ReviewDTO> select_review(int space_id);
		ArrayList<ReviewDTO> get_one_review_page(int start, int psize ,int space_id);
		ArrayList<productDTO> searchProducts(String keyword, int start, int psize);
		void review_insert(String writer, String content, String title, String userid, int space_id);
		ArrayList<memberDTO> get_member_info(String userid);
		void qa_insert(String content, String writer, String title , int space_id);
		ArrayList<BoardDTO> qa_get(int space_id);
}
