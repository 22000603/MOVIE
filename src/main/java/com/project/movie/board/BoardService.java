package com.project.movie.board;

import java.util.List;

public interface BoardService {
	public int insertBoard(BoardVO vo);
	public BoardVO getBoard(int seq);
	public List<BoardVO> getBoardList();

}
