package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Member;
import site.itwill.mapper.MemberMapper;
//DAO클래스를 Spring Bean으로 등록하기 위한 어노테이션
//servlet-context.xml에서 component-scan 엘리먼트로 DAO클래스가 작성된 패키지 작성
@Repository
public class MemberDAOImpl implements MemberDAO {
	//SqlSession 관련 클래스로 등록된 Spring Bean을 필드에 인젝션 처리함
	//필드마다 어노테이션 기재 필수!
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).insertMember(member);
	}

	@Override
	public int updateMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateMember(member);
	}

	@Override
	public int deleteMember(String mId) {
		return sqlSession.getMapper(MemberMapper.class).deleteMember(mId);
	}

	@Override
	public Member selectId(Member member) {
		return sqlSession.getMapper(MemberMapper.class).selectId(member);
	}
	
	@Override
	public int updatePw(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updatePw(member);
	}
	
	@Override
	public Member selectMember(String mId) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(mId);
	}

	@Override
	public List<Member> selectMemberList() {
		return sqlSession.getMapper(MemberMapper.class).selectMemberList();
	}

}
	

	

	








	

	


