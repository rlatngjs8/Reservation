package com.himedia.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FAQDAO {
		ArrayList<FAQDTO> typeMember();
		ArrayList<FAQDTO> typeReservation();
		ArrayList<FAQDTO> typePay();
		ArrayList<FAQDTO> typeReceipt();
		ArrayList<FAQDTO> typeCancel();
		ArrayList<FAQDTO> typeUse();
}
