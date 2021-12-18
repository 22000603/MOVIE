package com.project.movie.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertReview(ReviewVO vo) {
		int result = sqlSession.insert("Review.insertReview", vo);
		return result;
	}
	public int updateReview(ReviewVO vo) {
		int result = sqlSession.update("Review.updateReview", vo);
		return result;
	}
	public int deleteReview(int id) {
		int result = sqlSession.delete("Review.deleteReview", id);
		return result;
	}
	public List<ReviewVO> getReviewList(){
		List<ReviewVO> list = sqlSession.selectList("Review.getReviewList");
		return list;
	}
}