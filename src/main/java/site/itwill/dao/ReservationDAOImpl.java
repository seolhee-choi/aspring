package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Member;
import site.itwill.dto.Reservation;
import site.itwill.dto.ReservationJoin;
import site.itwill.dto.ReservationSearch;
import site.itwill.dto.ReservationTwo;
import site.itwill.dto.Room;
import site.itwill.dto.RoomCheck;
import site.itwill.mapper.ReservationMapper;

@Repository
public class ReservationDAOImpl implements ReservationDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<RoomCheck> selectRoomCheck(ReservationTwo reservationTwo) {
		return sqlSession.getMapper(ReservationMapper.class).selectRoomCheck(reservationTwo);
	}
	
	@Override
	public List<Room> selectAllRoomL() {
		return sqlSession.getMapper(ReservationMapper.class).selectAllRoomL();
	}

	@Override
	public List<Room> selectAvailableRoom(ReservationTwo reservationTwo) {
		return sqlSession.getMapper(ReservationMapper.class).selectAvailableRoom(reservationTwo);
	}

	@Override
	public int selectCheckAvailable(ReservationTwo reservationTwo) {
		return sqlSession.getMapper(ReservationMapper.class).selectCheckAvailable(reservationTwo);
	}

	@Override
	public Room selectRoomOne(int rmNo) {
		return sqlSession.getMapper(ReservationMapper.class).selectRoomOne(rmNo);
	}

	@Override
	public int insertRsv(Reservation reservation) {
		return sqlSession.getMapper(ReservationMapper.class).insertRsv(reservation);
	}

	@Override
	public List<ReservationJoin> selectRsvList() {
		return sqlSession.getMapper(ReservationMapper.class).selectRsvList();
	}

	@Override
	public List<ReservationJoin> selectDynamicRsvList(ReservationSearch rsvSearch) {
		return sqlSession.getMapper(ReservationMapper.class).selectDynamicRsvList(rsvSearch);
	}
	
	@Override
	public int selectMyRsvCount(String mId) {
		return sqlSession.getMapper(ReservationMapper.class).selectMyRsvCount(mId);
	}
	
	@Override
	public int selectMyRsvCount2(String mId) {
		return sqlSession.getMapper(ReservationMapper.class).selectMyRsvCount2(mId);
	}

	@Override
	public List<ReservationJoin> selectMyRsvList(Map<String, Object> map) {
		return sqlSession.getMapper(ReservationMapper.class).selectMyRsvList(map);
	}
	
	@Override
	public List<ReservationJoin> selectMyRsvList2(Map<String, Object> map) {
		return sqlSession.getMapper(ReservationMapper.class).selectMyRsvList2(map);
	}
	
	@Override
	public ReservationJoin selectRsvOne(int rsvNo) {
		return sqlSession.getMapper(ReservationMapper.class).selectRsvOne(rsvNo);
	}
	
	@Override
	public int updateRsvPayment(int rsvNo) {
		return sqlSession.getMapper(ReservationMapper.class).updateRsvPayment(rsvNo);
	}
	
	@Override
	public int updateRsvCancel1(int rsvNo) {
		return sqlSession.getMapper(ReservationMapper.class).updateRsvCancel1(rsvNo);
	}
	
	@Override
	public int updateRsvCancel2(int rsvNo) {
		return sqlSession.getMapper(ReservationMapper.class).updateRsvCancel2(rsvNo);
	}
	
	@Override
	public int updateRsvRefundOk(int rsvNo) {
		return sqlSession.getMapper(ReservationMapper.class).updateRsvRefundOk(rsvNo);
	}

	//------------------------------------------------------------------------------
	@Override
	public Member selectTestMember(String mId) {
		return sqlSession.getMapper(ReservationMapper.class).selectTestMember(mId);
	}

	@Override
	public int updateMileageMinus(Map<String, Object> minusMileage) {
		return sqlSession.getMapper(ReservationMapper.class).updateMileageMinus(minusMileage);
	}

	@Override
	public int updateMileagePlus(Map<String, Object> plusMileage) {
		return sqlSession.getMapper(ReservationMapper.class).updateMileagePlus(plusMileage);
	}

	

	

	

	

	

	

	
	
}
