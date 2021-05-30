package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.RoomDAO;
import site.itwill.dto.Room;
import site.itwill.exception.RoomNotFoundException;

@Service
public class RoomServiceImpl implements RoomService{
	@Autowired
	private RoomDAO roomDAO;

	
	
	@Transactional
	@Override
	public void modifyRoom(Room room) throws RoomNotFoundException {
		if(roomDAO.selectRoom(room.getRmNo())==null) {
			throw new RoomNotFoundException("존재하지 않는 객실입니다.");
		}
		roomDAO.updateRoom(room);
		
	}

	
	
	@Override
	public Room getRoom(int rmNo) throws RoomNotFoundException {
		if(roomDAO.selectRoom(rmNo)==null) {
			throw new RoomNotFoundException("존재하지 않는 객실입니다.");
		}
		return roomDAO.selectRoom(rmNo);
	}

	
	
	@Override
	public List<Room> getRoomList() {
		// TODO Auto-generated method stub
		return roomDAO.selectRoomList();
	}
	
	
}
