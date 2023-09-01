package com.himedia.springboot;

public class ReviewDTO {
	String userid;
	int rating;
	String review_content;
	int space_id;
	
	public int getSpace_id() {
		return space_id;
	}
	public void setSpace_id(int space_id) {
		this.space_id = space_id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

}
