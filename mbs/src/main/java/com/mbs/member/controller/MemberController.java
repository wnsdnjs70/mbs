package com.mbs.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mbs.member.dto.MemberDto;
import com.mbs.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping(value="/agree", method=RequestMethod.GET)
	public ModelAndView agreeGet() throws Exception{
		return new ModelAndView("/member/agree");
	}
	
	@RequestMapping(value="/agree", method=RequestMethod.POST)
	public ModelAndView agreePost(MemberDto memberDto) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/member/join");
		
		mv.addObject(memberDto);
		
		return mv;
	}
	
	@RequestMapping(value="/idDupleCheck", method=RequestMethod.GET)
	public ResponseEntity<String> idDupleCheck(@RequestParam("checkItem") String checkItem) throws Exception{
		return new ResponseEntity<String>(memberService.dupleCheck(checkItem), HttpStatus.OK);
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public ResponseEntity<String> join(MemberDto memberDto, HttpServletRequest request) throws Exception{
		
		if(memberDto.getEmailYn() == null)		memberDto.setEmailYn("N");
		if(memberDto.getSmsYn() == null)		memberDto.setSmsYn("N");
		if(memberDto.getExpirAgree() == null)	memberDto.setExpirAgree("N");
		if(memberDto.getPromAgree() == null)	memberDto.setPromAgree("N");
		
		memberDto.setMemberPw(passwordEncoder.encode(memberDto.getMemberPw()));
		
		memberService.addMember(memberDto);
		
		String message = "<script>";
			   message += "alert('회원가입되었습니다.');";
			   message += " location.href='" + request.getContextPath() + "/member/login';";
			   message += " </script>";
			   
		HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	    
		return new ResponseEntity<String>(message, responseHeaders, HttpStatus.OK);
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView loginGet() throws Exception{
		return new ModelAndView("/member/login");
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView loginPost(@RequestParam Map<String, String> loginMap, HttpServletRequest request) throws Exception{
	
		ModelAndView mv = new ModelAndView();
		
		MemberDto memberDto = memberService.loginMember(loginMap);
		
		if(memberDto != null) {
			String email = memberDto.getEmail1() + "@" + memberDto.getEmail2();
			
			HttpSession session = request.getSession();
			session.setAttribute("isLogOn", true);
			session.setAttribute("memberInfo", memberDto.getNickName());
			session.setAttribute("email", email);
			session.setMaxInactiveInterval(60 * 30);
			
			mv.setViewName("redirect:/main");
		}
		else {
			mv.addObject("invalidMember", true);
			mv.setViewName("/member/login");
		}
		
		return mv;
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		session.setAttribute("isLogOn", false);
		session.invalidate();
		
		mv.setViewName("redirect:/main");
		
		return mv;
	}
	
	
	
	
	
	
}
