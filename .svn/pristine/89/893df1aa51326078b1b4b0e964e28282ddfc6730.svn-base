package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Member;
import site.itwill.dto.Reservation;
import site.itwill.dto.ReservationJoin;
import site.itwill.dto.ReservationSearch;
import site.itwill.dto.ReservationTwo;
import site.itwill.dto.Room;
import site.itwill.dto.RoomCheck;

public interface ReservationService {
	List<RoomCheck> getRoomCheckList(ReservationTwo reservationTwo);
	List<Room> getAllRoomL();
	List<Room> getAvailableRoom(ReservationTwo reservationTwo);
	int getCheckAvailable(ReservationTwo reservationTwo);
	Member addRsv(Reservation reservation);
	
	List<ReservationJoin> getRsvList();
	List<ReservationJoin> getDynamicRsvList(ReservationSearch rsvSearch);
	
	int getMyRsvCount(String mId);
	int getMyRsvCount2(String mId);
	List<ReservationJoin> getMyRsvList(Map<String, Object> map);
	List<ReservationJoin> getMyRsvList2(Map<String, Object> map);
	ReservationJoin getRsvOne(int rsvNo);
	
	int modifyRsvPayment(int rsvNo) throws Exception;
	int modifyRsvCancel1(int rsvNo);
	int modifyRsvCancel2(int rsvNo);
	int modifyRsvRefundOk(int rsvNo) throws Exception;
	
	Room getRoomOne(int rmNo);
	
	//------------------------------------------------------------------------------
	
	Member getTestMember(String mId);
}
