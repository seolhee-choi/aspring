package site.itwill.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.ReservationDAO;
import site.itwill.dto.Member;
import site.itwill.dto.Reservation;
import site.itwill.dto.ReservationJoin;
import site.itwill.dto.ReservationSearch;
import site.itwill.dto.ReservationTwo;
import site.itwill.dto.Room;
import site.itwill.dto.RoomCheck;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private ReservationDAO reservationDAO;

	@Override
	public List<RoomCheck> getRoomCheckList(ReservationTwo reservationTwo) {
		return reservationDAO.selectRoomCheck(reservationTwo);
	}
	
	@Override
	public List<Room> getAllRoomL() {
		return reservationDAO.selectAllRoomL();
	}

	@Override
	public List<Room> getAvailableRoom(ReservationTwo reservationTwo) {
		return reservationDAO.selectAvailableRoom(reservationTwo);
	}

	@Override
	public int getCheckAvailable(ReservationTwo reservationTwo) {
		return reservationDAO.selectCheckAvailable(reservationTwo);
	}

	@Override
	public Room getRoomOne(int rmNo) {
		return reservationDAO.selectRoomOne(rmNo);
	}
	
	@Transactional
	@Override
	public Member addRsv(Reservation reservation) {
		reservationDAO.insertRsv(reservation);
		
		Map<String, Object> minusMileage=new HashMap<String, Object>();
		minusMileage.put("minusM", reservation.getRsvMuse());
		minusMileage.put("mId", reservation.getmId());
		
		reservationDAO.updateMileageMinus(minusMileage);
		
		return reservationDAO.selectTestMember(reservation.getmId());
	}
	
	@Override
	public List<ReservationJoin> getRsvList() {
		return reservationDAO.selectRsvList();
	}

	@Override
	public List<ReservationJoin> getDynamicRsvList(ReservationSearch rsvSearch) {
		return reservationDAO.selectDynamicRsvList(rsvSearch);
	}
	
	@Override
	public int getMyRsvCount(String mId) {
		return reservationDAO.selectMyRsvCount(mId);
	}
	
	@Override
	public int getMyRsvCount2(String mId) {
		return reservationDAO.selectMyRsvCount2(mId);
	}

	@Override
	public List<ReservationJoin> getMyRsvList(Map<String, Object> map) {
		return reservationDAO.selectMyRsvList(map);
	}
	
	@Override
	public List<ReservationJoin> getMyRsvList2(Map<String, Object> map) {
		return reservationDAO.selectMyRsvList2(map);
	}
	
	@Override
	public ReservationJoin getRsvOne(int rsvNo) {
		return reservationDAO.selectRsvOne(rsvNo);
	}
	
	
	@Transactional
	@Override
	public int modifyRsvPayment(int rsvNo) throws Exception {
		ReservationJoin rsv=reservationDAO.selectRsvOne(rsvNo);
		if(rsv.getRsvStatus()!=1) {
			throw new Exception("입금대기 상태의 예약만 입금완료 상태로 변경가능");
		}
		Map<String, Object> plusMileage=new HashMap<String, Object>();
		plusMileage.put("plusM", rsv.getRsvMsave());
		plusMileage.put("mId", rsv.getmId());
		
		reservationDAO.updateRsvPayment(rsvNo);
		return reservationDAO.updateMileagePlus(plusMileage);
	}
	
	@Transactional
	@Override
	public int modifyRsvCancel1(int rsvNo) {
		ReservationJoin rsv=reservationDAO.selectRsvOne(rsvNo);
		Map<String, Object> mileage=new HashMap<String, Object>();
		mileage.put("plusM", rsv.getRsvMuse());
		mileage.put("minusM", rsv.getRsvMsave());
		mileage.put("mId", rsv.getmId());
		
		reservationDAO.updateRsvCancel1(rsvNo);
		return reservationDAO.updateMileagePlus(mileage);
	}
	
	@Transactional
	@Override
	public int modifyRsvCancel2(int rsvNo) {
		return reservationDAO.updateRsvCancel2(rsvNo);
	}
	
	@Transactional
	@Override
	public int modifyRsvRefundOk(int rsvNo) throws Exception {
		ReservationJoin rsv=reservationDAO.selectRsvOne(rsvNo);
		if(rsv.getRsvStatus()!=2 && rsv.getRsvStatus()!=4) {
			throw new Exception("입금완료 or 환불대기 상태의 예약만 환불완료 상태로 변경 가능");
		}
		Map<String, Object> mileage=new HashMap<String, Object>();
		mileage.put("plusM", rsv.getRsvMuse());
		mileage.put("minusM", rsv.getRsvMsave());
		mileage.put("mId", rsv.getmId());
		
		reservationDAO.updateRsvRefundOk(rsvNo);
		reservationDAO.updateMileagePlus(mileage);
		return reservationDAO.updateMileageMinus(mileage);
	}
	
	//------------------------------------------------------------------------------
	

	@Override
	public Member getTestMember(String mId) {
		return reservationDAO.selectTestMember(mId);
	}

	

	

	

	

	
	

	

	

	

	

}
