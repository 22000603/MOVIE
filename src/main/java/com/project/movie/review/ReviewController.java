package com.project.movie.review;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.movie.board.BoardService;
import com.project.movie.board.BoardVO;


@Controller
public class ReviewController {

	@Autowired
	ReviewService reviewService;
	
	@Autowired
	BoardService boardService;
	
	
	@RequestMapping(value = "/review/{category}", method = RequestMethod.GET)
	public String reviewList(@PathVariable("category") int category, Model model) {
		
		List<ReviewVO> movielist = new ArrayList<ReviewVO>();
		for(ReviewVO r : reviewService.getReviewList()) {
			if(r.getCategory() == category)
				movielist.add(r);
		}
		int i = boardService.updateRatings(category);
		if (i == 0)
			System.out.println("평점 업데이트 실패");
		else
			System.out.println("평점 업데이트 성공");
		BoardVO boardVO = boardService.getBoard(category);
		model.addAttribute("list",movielist);
		return "board/review/review";
	}


	@RequestMapping(value = "/review/{category}/add", method = RequestMethod.GET)
	public String addReview(@PathVariable("category") int category, Model model) {
		return "board/review/addreviewform";
	}
	
	@RequestMapping(value = "/review/{category}/addreviewok", method = RequestMethod.POST)
	public String addReviewOK(@PathVariable("category") int category, ReviewVO vo) {
		vo.setCategory(category);
		int i = reviewService.insertReview(vo);
		if (i == 0)
			System.out.println("Insert 실패");
		else
			System.out.println("Insert 성공");
		return "redirect:/review/{category}";
	}
	
	@RequestMapping(value = "/review/{category}/edit/{id}", method = RequestMethod.GET)
		public String editReview(@PathVariable("id") int id, Model model) {
			ReviewVO reviewVO = reviewService.getReview(id);
			model.addAttribute("ReviewVO", reviewVO);
			return "board/review/editreviewform";
	}
	@RequestMapping(value = "/review/{category}/editreviewok", method = RequestMethod.GET)
	public String editReviewOK(@PathVariable("category") int category, ReviewVO vo) {
		int i = reviewService.updateReview(vo);
		if (i==0)
			System.out.println("수정 실패");
		else
			System.out.println("수정 성공");
		
		return "redirect:/review/{category}";
	}

	@RequestMapping(value = "/review/{category}/delete/{id}", method = RequestMethod.GET)
	public String delReview(@PathVariable("category") int category, @PathVariable("id") int id) {
		int i = reviewService.deleteReview(id);
		if (i==0)
			System.out.println("삭제 실패");
		else
			System.out.println("삭제 성공");
		
		
		return "redirect:/review/{category}";
	}
	

}