package com.mbs.member.service;

import java.util.Map;

import com.mbs.member.dto.MemberDto;

public interface MemberService {

	public void addMember(MemberDto memberDto) throws Exception;
	public MemberDto loginMember(Map<String,String> loginMap) throws Exception; 
	public String dupleCheck(String checkItem) throws Exception;
}
