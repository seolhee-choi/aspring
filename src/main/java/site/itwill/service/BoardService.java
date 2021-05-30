package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Board;
import site.itwill.dto.Info;
import site.itwill.dto.qnaReply;

public interface BoardService {
	void addBoard(Board board);
	void modifyBoard(Board board);
	void removeBoard(int num);
	Board getBoard(int num);
	int getBoardCount();
	List<Board> getBoardList(Map<String, Object> map);
	
	
	void addInfoBoard(Info infoBoard);
	int findInfoBoardCount(Map<String, Object>map);
	List<Info> findInfoBoardList(Map<String, Object>map);
	Info findInfoBoard(Map<String, Object>map);
	void modifyInfoBoard(Info infoBoard);



}
