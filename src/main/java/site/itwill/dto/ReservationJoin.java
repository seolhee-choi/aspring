package site.itwill.dto;

public class ReservationJoin {
	private int rsvNo;
	private int rmNo;
	private String mId;
	private int rsvPpl;
	private String rsvCheckin;
	private String rsvCheckout;
	private int rsvDatecount;
	private String rsvDate;
	private String rsvCancelDate;
	private int rsvPayment;
	private String rsvPaymentDate;
	private int rsvMuse;
	private int rsvMsave;
	private int rsvStatus;
	
	private Member member;
	private Room room;
	
	public ReservationJoin() {
		// TODO Auto-generated constructor stub
	}

	public int getRsvNo() {
		return rsvNo;
	}

	public void setRsvNo(int rsvNo) {
		this.rsvNo = rsvNo;
	}

	public int getRmNo() {
		return rmNo;
	}

	public void setRmNo(int rmNo) {
		this.rmNo = rmNo;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public int getRsvPpl() {
		return rsvPpl;
	}

	public void setRsvPpl(int rsvPpl) {
		this.rsvPpl = rsvPpl;
	}

	public String getRsvCheckin() {
		return rsvCheckin;
	}

	public void setRsvCheckin(String rsvCheckin) {
		this.rsvCheckin = rsvCheckin;
	}

	public String getRsvCheckout() {
		return rsvCheckout;
	}

	public void setRsvCheckout(String rsvCheckout) {
		this.rsvCheckout = rsvCheckout;
	}

	public int getRsvDatecount() {
		return rsvDatecount;
	}

	public void setRsvDatecount(int rsvDatecount) {
		this.rsvDatecount = rsvDatecount;
	}

	public String getRsvDate() {
		return rsvDate;
	}

	public void setRsvDate(String rsvDate) {
		this.rsvDate = rsvDate;
	}

	public String getRsvCancelDate() {
		return rsvCancelDate;
	}

	public void setRsvCancelDate(String rsvCancelDate) {
		this.rsvCancelDate = rsvCancelDate;
	}

	public int getRsvPayment() {
		return rsvPayment;
	}

	public void setRsvPayment(int rsvPayment) {
		this.rsvPayment = rsvPayment;
	}

	public String getRsvPaymentDate() {
		return rsvPaymentDate;
	}

	public void setRsvPaymentDate(String rsvPaymentDate) {
		this.rsvPaymentDate = rsvPaymentDate;
	}

	public int getRsvMuse() {
		return rsvMuse;
	}

	public void setRsvMuse(int rsvMuse) {
		this.rsvMuse = rsvMuse;
	}

	public int getRsvMsave() {
		return rsvMsave;
	}

	public void setRsvMsave(int rsvMsave) {
		this.rsvMsave = rsvMsave;
	}

	public int getRsvStatus() {
		return rsvStatus;
	}

	public void setRsvStatus(int rsvStatus) {
		this.rsvStatus = rsvStatus;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}
	
	
}
