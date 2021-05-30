package site.itwill.mapper;

import java.util.List;
import java.util.Map;

import site.itwill.dto.ReservationJoin;
import site.itwill.dto.Review;

public interface ReviewMapper {
	int insertReview(Review review);
	int deleteReview(int rvNo);
	int updateReview(Review review);
	int updateHitsReview(int rvNo);
	Review selectReview(int rvNo);
	
	int selectReviewCount();
	int selectCount();
	List<Review> selectRmNoReviewList(Map<String, Object> map);
	List<ReservationJoin> selectRmNameReviewWrite(String mId);
	List<Review> selectSearchReviewList(Map<String, Object> map);//페이징처리처럼 startRow, endRow dto는 없는데  전달값 여러 개=map 쓰기 + keyword는 쿼리스트링/url 넘긱는걸루..
	
}
