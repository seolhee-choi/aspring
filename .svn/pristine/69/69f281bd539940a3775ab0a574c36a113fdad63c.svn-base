package site.itwill.service;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.MemberDAO;
import site.itwill.dto.Member;
import site.itwill.exception.LoginAuthFailException;
import site.itwill.exception.MemberExistsException;
import site.itwill.exception.MemberNotFoundException;

//@Service : Service 클래스르 Spring Bean으로 등록하기 위한 어노테이션
//=>예외 처리 기능을 제공받아 사용
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Transactional
	@Override
	public void insertMember(Member member) throws MemberExistsException {
		//회원추가시 가입되있는 정보와 일치하는 정보가 검색됐다면
		if(memberDAO.selectMember(member.getmId())!=null) {
			throw new MemberExistsException(member, "이미 사용중인 아이디를 입력하였습니다.");
		}
		//그게 아니라면 회원등록 + 비밀번호 암호화처리 
		member.setmPw(BCrypt.hashpw(member.getmPw(), BCrypt.gensalt()));//기본값 10바이트
		memberDAO.insertMember(member);
	}
		

	@Transactional
	@Override
	public void updateMember(Member member) throws MemberNotFoundException {
		//회원수정시 가입되있는 정보가 없다면
		if(memberDAO.selectMember(member.getmId())==null) {
			throw new MemberNotFoundException("가입되지 않은 회원정보입니다.");
		}
		//회원수정시 가입되있는 정보가 있다면
		String pw=member.getmPw();
		if(pw!=null && !pw.equals("")) {
			member.setmPw(BCrypt.hashpw(pw, BCrypt.gensalt()));
		}
		memberDAO.updateMember(member);
		
	}

	@Transactional
	@Override
	public void deleteMember(String mId) throws MemberNotFoundException {
		if(memberDAO.selectMember(mId)==null) {
			throw new MemberNotFoundException("가입되지 않은 회원정보입니다.");
		}
		
		memberDAO.deleteMember(mId);
	}
	
	
	 @Override 
	 public Member selectId(Member member) throws MemberNotFoundException { 
		 Member member2=memberDAO.selectId(member);
		 if(member2==null) { 
			throw new MemberNotFoundException("가입되지 않은 회원정보입니다."); }
		 	return member2; 
	}
	
	
	@Transactional
	@Override
	public int updatePw(Member member) throws MemberNotFoundException {
		return memberDAO.updatePw(member);
	}
	
	@Override
	public Member selectMember(String mId) throws MemberNotFoundException {
		Member member=memberDAO.selectMember(mId);
		if(member==null) {
			throw new MemberNotFoundException("가입되지 않은 회원정보입니다.");
		}
		return member;
	}

	@Override
	public List<Member> selectMemberList() {
		return memberDAO.selectMemberList();
	}


	@Override
	public void loginAuth(Member member) throws LoginAuthFailException {
		Member authMember=memberDAO.selectMember(member.getmId());
		//아이디검사-인증실패 : 예외발생
		if(authMember==null) {
			throw new LoginAuthFailException("가입되지 않은 회원정보입니다.",member.getmId());
		}
		//탈퇴회원검사-인증실패 : 예외발생
		if(authMember.getmStatus()==1) {
			throw new LoginAuthFailException("탈퇴하였거나 가입되지 않은 회원정보입니다.",member.getmId());
		}
		
		//비밀번호검사-인증실패 : 예외발생
		if(!BCrypt.checkpw(member.getmPw(), authMember.getmPw())) {
			throw new LoginAuthFailException("아이디가 없거나 비밀번호가 일치하지 않습니다.",member.getmId());
		}
		
		//예외가 없으면 로그인 성공
	}


	


	


	




	


	


	


	


	


	




	


	





	




	
	
	
}
