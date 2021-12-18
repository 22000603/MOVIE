package com.project.movie.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String boardlist(Model model) {
		model.addAttribute("list",
				boardService.getBoardList());
		return "board/list";
	}
	
	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public String viewPost(@PathVariable("id") int id, Model model) {
		int i = boardService.updateRatings(id);
		if (i == 0)
			System.out.println("평점 업데이트 실패");
		else
			System.out.println("평점 업데이트 성공");
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("boardVO", boardVO);
		
		return "board/view";
		
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost() {
		return "board/addpostform";
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addOK(BoardVO vo) {
		int i = boardService.insertBoard(vo);
		if (i == 0)
			System.out.println("Insert 실패");
		else
			System.out.println("Insert 성공");
		return "redirect:/list";
	}
	@RequestMapping(value = "/movie/edit/{id}", method = RequestMethod.GET)
		public String editPost(@PathVariable("id") int id, Model model) {
			BoardVO boardVO = boardService.getBoard(id);
			model.addAttribute("boardVO", boardVO);
			return "editform";
	}
	@RequestMapping(value = "/movie/editok", method = RequestMethod.POST)
	public String editOK(BoardVO vo) {
		int i = boardService.updateBoard(vo);
		if (i==0)
			System.out.println("수정 실패");
		else
			System.out.println("수정 성공");
		
		return "redirect:/movie/list";
	}
	@RequestMapping(value = "/movie/delete/{id}", method = RequestMethod.GET)
	public String delPost(@PathVariable("id") int id) {
		int i = boardService.deleteBoard(id);
		if (i==0)
			System.out.println("삭제 실패");
		else
			System.out.println("삭제 성공");
		
		
		return "redirect:/list";
	}
	
	

}