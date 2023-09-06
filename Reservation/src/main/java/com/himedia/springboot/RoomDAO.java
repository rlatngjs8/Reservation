package com.himedia.springboot;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RoomDAO {
	// 회원가입
	int signup(String userid,String passcode,String name,String birthday,String address,String email, String mobile);
	// 로그인
	int login(String loginid, String loingpw);
	// 회원리스트(페이지)
	ArrayList<RoomDTO> getList(int start, int psize);
	int getTotal();
	// 회원리스트 삭제
	void deleteMember(int num);
	boolean deleteMember1(String userid);
	// 회원정보 뽑기
	ArrayList<RoomDTO> getListOne(String userid);
	// 회원정보 수정
	void userUpdate(String passcode, String email, String address, String mobile, String userid);
	// 게시판 DAO -승환
	void hitup(int seqno);
	void insert(String p1, String p2, String p3);
	BoardDTO view(int seqno);
	void delete(int seqno);
	void update(int seqno, String p1, String p2);
	ArrayList<BoardDTO> getList1(int start, int psize);
	int getTotal1();
	void comment(int seqno, String comment);
	
	void reservaion(String p1, String p2,String p3);
	
	void savePaymentInfo(String p1, String p2);

	
// 결제 상태 변경 메서드 (미결제 -> 결제완료, 결제취소 등)
	void updatePaymentStatus(String roomId, String paymentStatus);

	ArrayList<RoomDTO> get_space();
	
	void insertComment(String userid, String comment);

	
	serviceDTO viewService(int num);
	serviceDTO viewPersonal(int num);
}
