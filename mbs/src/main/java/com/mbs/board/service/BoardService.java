package com.mbs.board.service;

import java.util.List;
import java.util.Map;

import com.mbs.board.dto.BoardDto;

public interface BoardService {
	public void uploadBoard(BoardDto boardDto) throws Exception;
	public List<BoardDto> getBoardList() throws Exception;
	public Map<String, Object> getBoardInfo(int boardNumber) throws Exception;
	public void updateViews(int boardNumber) throws Exception;
	public void updateInterest(int boardNumber, String loginMember, String operator) throws Exception;
	public boolean isInterest(String loginMember, int boardNumber) throws Exception;
}
