package site.itwill.dto;

/*
CREATE TABLE member(m_id VARCHAR2(50) PRIMARY KEY,m_pw VARCHAR2(100),m_name VARCHAR2(20),m_phone VARCHAR2(20),m_email VARCHAR2(50),
                    m_mileage NUMBER,m_status NUMBER(2));
 */
public class Member {
	private String mId;
	private String mPw;
	private String mName;
	private String mPhone;
	private String mEmail;
	private int mMileage;
	private int mStatus;//0일반회원, 1탈퇴회원, 9관리자
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmPw() {
		return mPw;
	}

	public void setmPw(String mPw) {
		this.mPw = mPw;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmPhone() {
		return mPhone;
	}

	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public int getmMileage() {
		return mMileage;
	}

	public void setmMileage(int mMileage) {
		this.mMileage = mMileage;
	}

	public int getmStatus() {
		return mStatus;
	}

	public void setmStatus(int mStatus) {
		this.mStatus = mStatus;
	}

}
