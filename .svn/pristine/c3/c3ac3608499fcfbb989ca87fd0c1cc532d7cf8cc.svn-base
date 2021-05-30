package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.ReservationJoin;
import site.itwill.dto.Review;

public interface ReviewService {
	void addReview(Review review);
	void removeReview(int rvNo);
	void modifyReview(Review review);
	void modifyHitsReview(int rvNo);
	Review getReview(int rvNo);
	
	int getReviewCount();
	int selectCount();
	List<Review> getRmNoReviewList(Map<String, Object> map);
	List<ReservationJoin> selectRmNameReviewWrite(String mId);
	List<Review> getSearchReviewList(Map<String, Object> map);
	
}
