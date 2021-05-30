package site.itwill.exception;

//로그인 실패시 발생되는 예외클래스
public class LoginAuthFailException extends Exception{
	private static final long serialVersionUID = 1L;

	private String mId;
	
	public LoginAuthFailException() {
		// TODO Auto-generated constructor stub
	}

	public LoginAuthFailException(String message, String mId) {
		super(message);
		this.mId = mId;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}
	
	
	
}
