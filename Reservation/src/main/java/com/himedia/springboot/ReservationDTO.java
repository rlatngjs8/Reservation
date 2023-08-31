package com.himedia.springboot;

public class ReservationDTO {
		int	seqno;
		String userid;
		String name;
		String mobile;
		String space_name;
		String useday;
		int startTime;
		int endTime;
		int totalPrice;
		String purchaseTime;
		
		
		public int getSeqno() {
				return seqno;
		}
		public void setSeqno(int seqno) {
				this.seqno = seqno;
		}
		public String getUserid() {
				return userid;
		}
		public void setUserid(String userid) {
				this.userid = userid;
		}
		public String getName() {
				return name;
		}
		public void setName(String name) {
				this.name = name;
		}
		public String getMobile() {
				return mobile;
		}
		public void setMobile(String mobile) {
				this.mobile = mobile;
		}
		public String getSpace_name() {
				return space_name;
		}
		public void setSpace_name(String space_name) {
				this.space_name = space_name;
		}
		public String getUseday() {
				return useday;
		}
		public void setUseday(String useday) {
				this.useday = useday;
		}
		public int getStartTime() {
				return startTime;
		}
		public void setStartTime(int startTime) {
				this.startTime = startTime;
		}
		public int getEndTime() {
				return endTime;
		}
		public void setEndTime(int endTime) {
				this.endTime = endTime;
		}
		public int getTotalPrice() {
				return totalPrice;
		}
		public void setTotalPrice(int totalPrice) {
				this.totalPrice = totalPrice;
		}
		public String getPurchaseTime() {
				return purchaseTime;
		}
		public void setPurchaseTime(String purchaseTime) {
				this.purchaseTime = purchaseTime;
		}
		
}
