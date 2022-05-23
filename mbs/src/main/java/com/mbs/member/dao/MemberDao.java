package com.mbs.member.dao;

import java.util.Map;

import com.mbs.member.dto.MemberDto;

public interface MemberDao {
	public void insertMember(MemberDto memberDto) throws Exception;
	public MemberDto selectOneMember(Map<String, String> loginMap) throws Exception;
	public MemberDto selectOneMember(String checkItem) throws Exception;
}