package com.project.movie.review;

import java.util.List;


public interface ReviewService {
	
	public int insertReview(ReviewVO vo);
	public int updateReview(ReviewVO vo) ;
	public int deleteReview(int id);
	public List<ReviewVO> getReviewList();

}
