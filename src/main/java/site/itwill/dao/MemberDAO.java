package site.itwill.dao;

import java.util.List;

import site.itwill.dto.Member;

public interface MemberDAO {
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String mId);
	Member selectId(Member member);
	int updatePw(Member member);
	Member selectMember(String mId);
	List<Member> selectMemberList();

}
