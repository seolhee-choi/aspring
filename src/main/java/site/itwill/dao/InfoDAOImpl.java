package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Info;
import site.itwill.mapper.InfoMapper;

@Repository
public class InfoDAOImpl implements InfoDAO{
	// 의존성 주입
	@Autowired
	private SqlSession sqlSession;
	@Override
	public int insertInfo(Info info) {
		return sqlSession.getMapper(InfoMapper.class).insertInfo(info);
	}

	@Override
	public int deleteInfo(int infoNo) {
		return sqlSession.getMapper(InfoMapper.class).deleteInfo(infoNo);
	}

	@Override
	public int updateInfo(Info info) {
		return sqlSession.getMapper(InfoMapper.class).updateInfo(info);
	}

	@Override
	public int updateCountInfo(int infoNo) {
		return sqlSession.getMapper(InfoMapper.class).updateCountInfo(infoNo);
	}

	@Override
	public Info selectInfo(int infoNo) {
		return sqlSession.getMapper(InfoMapper.class).selectInfo(infoNo);
	}

	@Override
	public int selectInfoCount() {
		return sqlSession.getMapper(InfoMapper.class).selectInfoCount();
	}

	@Override
	public List<Info> selectInfoTitleInfoList(Map<String, Object> map) {
		return sqlSession.getMapper(InfoMapper.class).selectInfoTitleInfoList(map);
	}

	@Override
	public List<Info> selectSearchInfoList(Map<String, Object> map) {
		return sqlSession.getMapper(InfoMapper.class).selectSearchInfoList(map);
	}

}
