package site.itwill.dao;

import java.util.List;
import java.util.Map;

import site.itwill.dto.ReservationJoin;
import site.itwill.dto.Review;

public interface ReviewDAO {
	int insertReview(Review review);
	int deleteReview(int rvNo);
	int updateReview(Review review);
	int updateHitsReview(int rvNo);
	Review selectReview(int rvNo);
	
	int selectReviewCount();
	int selectCount();
	List<Review> selectRmNoReviewList(Map<String, Object> map);
	List<ReservationJoin> selectRmNameReviewWrite(String mId);
	List<Review> selectSearchReviewList(Map<String, Object> map);
}
