package com.project.movie.board;

import java.util.List;

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
	public int updateBoard(BoardVO vo) {
	return boardDAO.updateBoard(vo);
	}
	public int deleteBoard(int id) {
	return boardDAO.deleteBoard(id);
	}
	@Override
	public BoardVO getBoard(int id) {
	return boardDAO.getBoard(id);
	}
	@Override
	public List<BoardVO> getBoardList(){
	return boardDAO.getBoardList();
	}
	@Override
	public String getRatings(int id) {
	return boardDAO.getRatings(id);
	}
	@Override 
	public int updateRatings(int id) {
		return boardDAO.updateRatings(id);
	}
}

