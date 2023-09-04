package com.himedia.springboot;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface reviewDAO {
		ArrayList<ReviewDTO> getReview(int start, int psize);
		int getTotal4();
		
		ReviewDTO getReviewById(int id);
  List<ReviewDTO> getAllReviews();
  void insertReview(ReviewDTO review);
  void updateReview(ReviewDTO review);
  void deleteReview(int id);
}
