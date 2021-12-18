package com.project.movie.board;

import java.util.List;

public interface BoardService {
	public int insertBoard(BoardVO vo);
	public int updateBoard(BoardVO vo);
	public int deleteBoard(int id);
	public BoardVO getBoard(int id);
	public List<BoardVO> getBoardList();
	public String getRatings(int id);
	public int updateRatings(int id);

}