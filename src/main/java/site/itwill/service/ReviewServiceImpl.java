package site.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.ReviewDAO;
import site.itwill.dto.ReservationJoin;
import site.itwill.dto.Review;
@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Transactional
	@Override
	public void addReview(Review review) {
		reviewDAO.insertReview(review);
		
	}
	
	@Transactional
	@Override
	public void removeReview(int rvNo) {
		reviewDAO.deleteReview(rvNo);
	}
	
	@Transactional
	@Override
	public void modifyReview(Review review) {
		reviewDAO.updateReview(review);
	}
	
	@Transactional
	@Override
	public void modifyHitsReview(int rvNo) {
		reviewDAO.updateHitsReview(rvNo);
	}

	@Override
	public Review getReview(int rvNo) {
		return reviewDAO.selectReview(rvNo);
	}

	@Override
	public List<Review> getRmNoReviewList(Map<String, Object> map) {
		return reviewDAO.selectRmNoReviewList(map);
	}

	@Override
	public List<ReservationJoin> selectRmNameReviewWrite(String mId) {
		return reviewDAO.selectRmNameReviewWrite(mId);
	}

	@Override
	public List<Review> getSearchReviewList(Map<String, Object> map) {
		return reviewDAO.selectSearchReviewList(map);
	}

	@Override
	public int getReviewCount() {
		return reviewDAO.selectReviewCount();
	}

	@Override
	public int selectCount() {
		return reviewDAO.selectCount();
	}

	

}
