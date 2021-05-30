package site.itwill.exception;

import site.itwill.dto.Member;
//회원등록시 사용자가 입력한 아이디가 이미 존재하는 경우 발생되는 예외 클래스
public class MemberExistsException extends Exception {
	private static final long serialVersionUID = 1L;
	
	private Member member;
	
	public MemberExistsException() {
		// TODO Auto-generated constructor stub
	}

	public MemberExistsException(Member member, String message) {
		super(message);
		this.member = member;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

}
