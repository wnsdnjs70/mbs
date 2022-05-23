package com.mbs.member.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.mbs.member.dao.MemberDao;
import com.mbs.member.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public void addMember(MemberDto memberDto) throws Exception {
		memberDao.insertMember(memberDto);
	}

	@Override
	public MemberDto loginMember(Map<String, String> loginMap) throws Exception {
		
		MemberDto memberDto = memberDao.selectOneMember(loginMap);
		
		if(memberDto != null) {
			if(passwordEncoder.matches(loginMap.get("memberPw"), memberDto.getMemberPw())) {
				return memberDto;
			}
		}
	
		return null;			
		
		
	}

	@Override
	public String dupleCheck(String checkItem) throws Exception {

		MemberDto memberDto = memberDao.selectOneMember(checkItem);
		
		if(memberDto != null) {
			return "true";
		}
		
		return "false";
	}
	
}
