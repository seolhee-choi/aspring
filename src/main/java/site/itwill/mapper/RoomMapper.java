package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.Room;

public interface RoomMapper {
	int insertRoom(Room room);
	int deleteRoom(int rmNo);
	int updateRoom(Room room);
	Room selectRoom(int rmNo);
	List<Room> selectRoomList();
}
