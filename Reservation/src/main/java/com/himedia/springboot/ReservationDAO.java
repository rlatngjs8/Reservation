package com.himedia.springboot;

import java.time.LocalDateTime;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReservationDAO {
		ArrayList<ReservationDTO> getList2(int start, int psize);
		int getTotal2();
		
		void reDelete(int seqno);
		
		ArrayList<ReservationDTO> selectList(String userid);
	
		ArrayList<ReservationDTO> payCom(int seqno);
		
		ArrayList<ReservationDTO> sales(String start, String end);
		// 추가부분
		ArrayList<temp_reservationDTO> select_temp_reservation(String userid);
		void insert_temp_reservation(int start_time, int end_time, String reservation_date, int total_price, int space_id, String userid);
		int delete_temp_reservation(String userid);
		ArrayList<ReservationDTO> get_reinfo(int space_id);
		
		
}
