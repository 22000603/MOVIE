package com.project.movie.review;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.movie.review.ReviewVO;

@Controller
public class ReviewController {

	@Autowired
	ReviewService reviewService;
	
	@RequestMapping(value = "/movie/review/{id}", method = RequestMethod.GET)
	public String reviewList(@PathVariable("id") int id, Model model) {
		
		List<ReviewVO> movielist = null;
		for(ReviewVO r : reviewService.getReviewList()) {
			if(r.getCategory() == id)
				movielist.add(r);
		}
		
		model.addAttribute("list",movielist);
		return "board/review/review";
	}


	@RequestMapping(value = "/movie/review/{id}/add", method = RequestMethod.GET)
	public String addReview(Model model) {
		return "board/review/addreviewform";
	}
	
	@RequestMapping(value = "/movie/review/{id}/addok", method = RequestMethod.POST)
	public String addReviewOK(@PathVariable("id") int id, ReviewVO vo) {
		vo.setCategory(id);
		int i = reviewService.insertReview(vo);
		if (i == 0)
			System.out.println("Insert 실패");
		else
			System.out.println("Insert 성공");
		return "redirect:/movie/reivew/{id}";
	}
	
	@RequestMapping(value = "/movie/review/edit/{id}", method = RequestMethod.GET)
		public String editReview(@PathVariable("id") int id, Model model) {
			ReviewVO reviewVO = reviewService.getReview(id);
			model.addAttribute("ReviewVO", reviewVO);
			return "board/review/editreviewform";
	}
	@RequestMapping(value = "/movie/review/editok", method = RequestMethod.POST)
	public String editReviewOK(ReviewVO vo) {
		int i = reviewService.updateReview(vo);
		if (i==0)
			System.out.println("수정 실패");
		else
			System.out.println("수정 성공");
		
		return "redirect:/movie/list";
	}
	@RequestMapping(value = "/movie/review/delete/{id}", method = RequestMethod.GET)
	public String delReview(@PathVariable("id") int id) {
		int i = reviewService.deleteReview(id);
		if (i==0)
			System.out.println("삭제 실패");
		else
			System.out.println("삭제 성공");
		
		
		return "redirect:/movie/review";
	}
	

}