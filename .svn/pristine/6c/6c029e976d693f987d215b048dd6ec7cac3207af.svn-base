package site.itwill.service;

import java.util.List;

import site.itwill.dto.Member;
import site.itwill.exception.LoginAuthFailException;
import site.itwill.exception.MemberExistsException;
import site.itwill.exception.MemberNotFoundException;

public interface MemberService {
	void insertMember(Member member) throws MemberExistsException;
	void updateMember(Member member) throws MemberNotFoundException;
	void deleteMember(String mId) throws MemberNotFoundException;
	Member selectId(Member member) throws MemberNotFoundException;
	int updatePw(Member member) throws MemberNotFoundException;
	Member selectMember(String mId) throws MemberNotFoundException;
	List<Member> selectMemberList();
	void loginAuth(Member member) throws LoginAuthFailException;
	
}
