package com.himedia.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReservationDAO {
		ArrayList<ReservationDTO> getList2(int start, int psize);
		int getTotal2();
		
		void reDelete(int seqno);
		
		ArrayList<ReservationDTO> selectList(String userid);
		
		ArrayList<ReservationDTO> payCom(int seqno);
}
