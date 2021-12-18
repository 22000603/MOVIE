package com.project.movie.review;

import java.util.List;

import com.project.movie.board.BoardVO;


public interface ReviewService {
	
	public int insertReview(ReviewVO vo);
	public int updateReview(ReviewVO vo) ;
	public int deleteReview(int id);
	public ReviewVO getReview(int id);
	public List<ReviewVO> getReviewList();

}
