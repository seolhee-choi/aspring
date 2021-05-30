package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.ReservationJoin;
import site.itwill.dto.Review;
import site.itwill.mapper.ReviewMapper;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertReview(Review review) {
		return sqlSession.getMapper(ReviewMapper.class).insertReview(review);
	}

	@Override
	public int deleteReview(int rvNo) {
		return sqlSession.getMapper(ReviewMapper.class).deleteReview(rvNo);
	}

	@Override
	public int updateReview(Review review) {
		return sqlSession.getMapper(ReviewMapper.class).updateReview(review);
	}

	@Override
	public int updateHitsReview(int rvNo) {
		return sqlSession.getMapper(ReviewMapper.class).updateHitsReview(rvNo);
	}

	@Override
	public Review selectReview(int rvNo) {
		return sqlSession.getMapper(ReviewMapper.class).selectReview(rvNo);
	}

	@Override
	public List<Review> selectRmNoReviewList(Map<String, Object> map) {
		return sqlSession.getMapper(ReviewMapper.class).selectRmNoReviewList(map);
	}

	@Override
	public List<ReservationJoin> selectRmNameReviewWrite(String mId) {
		return sqlSession.getMapper(ReviewMapper.class).selectRmNameReviewWrite(mId);
	}

	@Override
	public List<Review> selectSearchReviewList(Map<String, Object> map) {
		return sqlSession.getMapper(ReviewMapper.class).selectSearchReviewList(map);
	}

	@Override
	public int selectReviewCount() {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCount();
	}

	@Override
	public int selectCount() {
		return sqlSession.getMapper(ReviewMapper.class).selectCount();
	}
	
	
}
