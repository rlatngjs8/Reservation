package com.himedia.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardDAO {
	ArrayList<BoardDTO> getBoard(String userid);
	BoardDTO viewBoardDTO(String userid);
	void hitup(String userid);
}
