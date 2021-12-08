package com.project.movie.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardDAO boardDAO;
	@Override
	public int insertBoard(BoardVO vo) {
	return boardDAO.insertBoard(vo);
	}
	@Override
	public BoardVO getBoard(int seq) {
	return boardDAO.getBoard(seq);
	}
	@Override
	public List<BoardVO> getBoardList(){
	return boardDAO.getBoardList();
	}
	
}
