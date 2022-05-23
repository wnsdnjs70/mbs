package com.mbs.member.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mbs.member.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertMember(MemberDto memberDto) throws Exception {
		sqlSession.insert("member.join", memberDto);
	}

	@Override
	public MemberDto selectOneMember(Map<String, String> loginMap) throws Exception {
		return sqlSession.selectOne("member.selectOne", loginMap.get("memberId"));
	}

	@Override
	public MemberDto selectOneMember(String checkItem) throws Exception {
		return sqlSession.selectOne("member.dupleCheck", checkItem);
	}

	
	
}
