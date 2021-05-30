package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dto.Board;
import site.itwill.dto.Info;
import site.itwill.dto.qnaReply;
import site.itwill.mapper.BoardMapper;

@Service
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertBoard(Board board) {
		return sqlSession.getMapper(BoardMapper.class).insertBoard(board);
	}

	@Override
	public int updateBoard(Board board) {
		return sqlSession.getMapper(BoardMapper.class).updateBoard(board);
	}

	@Override
	public int deleteBoard(int num) {
		return sqlSession.getMapper(BoardMapper.class).deleteBoard(num);
	}

	@Override
	public Board selectBoard(int num) {
		return sqlSession.getMapper(BoardMapper.class).selectBoard(num);
	}

	@Override
	public int selectBoardCount() {
		return sqlSession.getMapper(BoardMapper.class).selectBoardCount();
	}

	@Override
	public List<Board> selectBoardList(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectBoardList(map);
	}
	
	@Override
	public int insertInfoBoard(Info infoBoard) {
		return sqlSession.getMapper(BoardMapper.class).insertInfoBoard(infoBoard); 
	}

	@Override
	public List<Info> selectInfoBoardList(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectInfoBoardList(map);
	}

	@Override
	public int selectInfoBoardCount(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectInfoBoardCount(map);
	}

	@Override
	public Info selectInfoBoard(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectInfoBoard(map);
	}

	@Override
	public int updateInfoBoard(Info infoBoard) {
		return sqlSession.getMapper(BoardMapper.class).updateInfoBoard(infoBoard);
	}

	

	
}
