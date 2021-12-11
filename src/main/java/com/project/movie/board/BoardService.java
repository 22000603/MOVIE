package com.project.movie.board;

import java.util.List;

public interface BoardService {
	public int insertBoard(BoardVO vo);
	public int updateBoard(BoardVO vo);
	public int deleteBoard(int id);
	public BoardVO getBoard(int seq);
	public List<BoardVO> getBoardList();

}
