package com.mbs.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mbs.board.dto.BoardDto;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertBoard(BoardDto boardDto) throws Exception {
		sqlSession.insert("board.insert", boardDto);
	}

	@Override
	public List<BoardDto> selectBoardList() throws Exception {
		
		List<BoardDto> boardList = sqlSession.selectList("board.selectAll");
		
		return boardList;
	}

	@Override
	public Map<String, Object> selectBoardInfo(int boardNumber) throws Exception {

		Map<String, Object> boardInfo = sqlSession.selectOne("board.selectBoardInfo", boardNumber);
		
		return boardInfo;
	}

	@Override
	public void updateViews(int boardNumber) throws Exception {
		sqlSession.update("board.updateViews", boardNumber);
	}

	@Override
	public void updateInterest(Map<String, Object> pair) throws Exception {
		sqlSession.update("board.updateInterest", pair);
	}
	@Override
	public void updateInterestList(Map<String, Object> pair) throws Exception {
		sqlSession.update("member.updateInterestList", pair);
	}

	@Override
	public int getInterest(Map<String, Object> pair) throws Exception {
		return sqlSession.selectOne("board.selectInterest", pair);
	}

	@Override
	public String getInterestList(Map<String, Object> pair) throws Exception {
		return sqlSession.selectOne("member.selectInterestList", pair);
	}

	
	
}
