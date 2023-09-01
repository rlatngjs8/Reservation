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
		
		productDTO get_one_space(int space_id);
}
