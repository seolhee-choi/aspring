package site.itwill.mapper;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Member;
import site.itwill.dto.Reservation;
import site.itwill.dto.ReservationJoin;
import site.itwill.dto.ReservationSearch;
import site.itwill.dto.ReservationTwo;
import site.itwill.dto.Room;
import site.itwill.dto.RoomCheck;

public interface ReservationMapper {
	List<RoomCheck> selectRoomCheck(ReservationTwo reservationTwo);
	List<Room> selectAllRoomL();
	List<Room> selectAvailableRoom(ReservationTwo reservationTwo);
	int selectCheckAvailable(ReservationTwo reservationTwo);
	Room selectRoomOne(int rmNo);
	int insertRsv(Reservation reservation);
	
	List<ReservationJoin> selectRsvList();
	List<ReservationJoin> selectDynamicRsvList(ReservationSearch rsvSearch);
	
	int selectMyRsvCount(String mId);
	int selectMyRsvCount2(String mId);
	List<ReservationJoin> selectMyRsvList(Map<String, Object> map);
	List<ReservationJoin> selectMyRsvList2(Map<String, Object> map);
	ReservationJoin selectRsvOne(int rsvNo);
	
	int updateRsvPayment(int rsvNo);
	int updateRsvCancel1(int rsvNo);
	int updateRsvCancel2(int rsvNo);
	int updateRsvRefundOk(int rsvNo);
	//------------------------------------------------------------------------------
	
	Member selectTestMember(String mId);
	int updateMileageMinus(Map<String, Object> minusMileage);
	int updateMileagePlus(Map<String, Object> plusMileage);
}
