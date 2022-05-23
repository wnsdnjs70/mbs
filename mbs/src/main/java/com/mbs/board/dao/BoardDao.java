package com.mbs.board.dao;

import java.util.List;
import java.util.Map;

import com.mbs.board.dto.BoardDto;

public interface BoardDao {
	public void insertBoard(BoardDto boardDto) throws Exception;
	public List<BoardDto> selectBoardList() throws Exception;
	public Map<String, Object> selectBoardInfo(int boardNumber) throws Exception;
	public void updateViews(int boardNumber) throws Exception;
	public void updateInterest(Map<String, Object> pair) throws Exception;
	public void updateInterestList(Map<String, Object> pair) throws Exception;
	public int getInterest(Map<String, Object> pair) throws Exception;
	public String getInterestList(Map<String, Object> pair) throws Exception;
}
