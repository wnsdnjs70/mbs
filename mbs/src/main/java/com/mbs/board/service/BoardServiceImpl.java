package com.mbs.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mbs.board.dao.BoardDao;
import com.mbs.board.dto.BoardDto;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDao boardDao;

	@Override
	public void uploadBoard(BoardDto boardDto) throws Exception {
		boardDao.insertBoard(boardDto);
	}

	@Override
	public List<BoardDto> getBoardList() throws Exception {
		
		List<BoardDto> boardList = boardDao.selectBoardList();
		
		return boardList;
	}

	@Override
	public Map<String, Object> getBoardInfo(int boardNumber) throws Exception {
		
		Map<String, Object> boardInfo = boardDao.selectBoardInfo(boardNumber);
		
		return boardInfo;
	}

	@Override
	public void updateViews(int boardNumber) throws Exception {
		boardDao.updateViews(boardNumber);		
	}

	@Override
	public void updateInterest(int boardNumber, String loginMember, String operator) throws Exception {
		
		String query = "";
		
		Map<String, Object> pair = new HashMap<String, Object>();
		
		pair.put("boardNumber", boardNumber);
		int interest = boardDao.getInterest(pair);
		pair.put("interest", interest);
		pair.put("operator", operator);
		pair.put("loginMember", loginMember);
		
		if(operator.equals("plus")) {
			String plusQuery = boardNumber + "#";
			query = plusQuery;
		}
		else {
			String interestList = boardDao.getInterestList(pair);
			
			String[] temp = interestList.split("#");
			String minusQuery = "";
			int idx = 0;
			
			for(int i = 0; i < temp.length; i++) {
				if(temp[i].equals(Integer.toString(boardNumber))) idx = i;
			}
			
			for(int i = 1; i <= temp.length - 1; i++) {
				if(i != idx) {
					minusQuery = minusQuery + "#" + temp[i] ;				
				}
			}
			minusQuery += "#";
			query = minusQuery;
		}
		pair.put("query", query);
		boardDao.updateInterestList(pair);
		boardDao.updateInterest(pair);
		
	}

	@Override
	public boolean isInterest(String loginMember, int boardNumber) throws Exception {
		
		boolean isInterest = false;
		
		Map<String, Object> pair = new HashMap<String, Object>();
		pair.put("loginMember", loginMember);
		pair.put("boardNumber", boardNumber);
		
		String interestList = boardDao.getInterestList(pair);
		
		String[] temp = interestList.split("#");

		for(int i = 0; i < temp.length; i++) {
			if(temp[i].equals(Integer.toString(boardNumber))) isInterest = true;
		}
		
		return isInterest;
	}

	
}
