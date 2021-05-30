package site.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.BoardDAO;
import site.itwill.dto.Board;
import site.itwill.dto.Info;
import site.itwill.dto.qnaReply;
import site.itwill.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	
	@Transactional
	@Override
	public void addBoard(Board board) {
		boardDAO.insertBoard(board);
		
	}
	
	@Transactional
	@Override
	public void modifyBoard(Board board) {
		boardDAO.updateBoard(board);
		
	}
	@Transactional
	@Override
	public void removeBoard(int num) {
		boardDAO.deleteBoard(num);
		
	}

	@Override
	public Board getBoard(int num) {
		return boardDAO.selectBoard(num);
	}

	@Override
	public int getBoardCount() {
		return boardDAO.selectBoardCount();
	}

	@Override
	public List<Board> getBoardList(Map<String, Object> map) {
		return boardDAO.selectBoardList(map);
	}
	

	@Override
	public void addInfoBoard(Info infoBoard) {
		boardDAO.insertInfoBoard(infoBoard);
	}

	@Override
	public List<Info> findInfoBoardList(Map<String, Object> map) {
		return boardDAO.selectInfoBoardList(map);
	}

	@Override
	public int findInfoBoardCount(Map<String, Object>map) {
		return boardDAO.selectInfoBoardCount(map);
	}

	@Override
	public Info findInfoBoard(Map<String, Object> map) {
		return boardDAO.selectInfoBoard(map);
	}

	@Override
	public void modifyInfoBoard(Info infoBoard) {
		boardDAO.updateInfoBoard(infoBoard);
	}




}
