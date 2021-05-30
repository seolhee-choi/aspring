package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Room;import site.itwill.mapper.RoomMapper;

@Repository
public class RoomDAOImpl implements RoomDAO{
	@Autowired
	private SqlSession sqlSession;


	
	@Override
	public int insertRoom(Room room) {
		return sqlSession.getMapper(RoomMapper.class).insertRoom(room);
	}

	@Override
	public int deleteRoom(int rmNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(RoomMapper.class).deleteRoom(rmNo);
	}

	@Override
	public int updateRoom(Room room) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(RoomMapper.class).updateRoom(room);
	}

	@Override
	public Room selectRoom(int rmNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(RoomMapper.class).selectRoom(rmNo);
	}

	@Override
	public List<Room> selectRoomList() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(RoomMapper.class).selectRoomList();
	}
	
	
	
	
}
