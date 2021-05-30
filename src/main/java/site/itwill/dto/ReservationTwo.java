package site.itwill.dto;

public class ReservationTwo {
	private int rmNo;
	private String checkin;
	private String checkout;
	private String checkinTime;
	private String checkoutTime;
	private int adult;
	private int children;
	private int mileage;
	
	public ReservationTwo() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public String getCheckinTime() {
		return checkinTime;
	}



	public void setCheckinTime(String checkinTime) {
		this.checkinTime = checkinTime;
	}



	public String getCheckoutTime() {
		return checkoutTime;
	}



	public void setCheckoutTime(String checkoutTime) {
		this.checkoutTime = checkoutTime;
	}



	public int getRmNo() {
		return rmNo;
	}


	public void setRmNo(int rmNo) {
		this.rmNo = rmNo;
	}


	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkinTime = checkin+" 14:00:00";
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkoutTime = checkout+" 11:00:00";
		this.checkout = checkout;
	}

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getChildren() {
		return children;
	}

	public void setChildren(int children) {
		this.children = children;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	
	
}
