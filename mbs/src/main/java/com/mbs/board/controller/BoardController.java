package com.mbs.board.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mbs.board.dto.BoardDto;
import com.mbs.board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public ModelAndView writeGet(@RequestParam("memberInfo") String memberInfo) throws Exception{

		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/board/write");
		mv.addObject("memberInfo", memberInfo);
		
		return mv;
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public ResponseEntity<String> writePost(BoardDto boardDto, HttpServletRequest request) throws Exception{
		
		if(boardDto.getMeetTime() == "") boardDto.setMeetTime("undefined");
		if(boardDto.getDetailAdd() == "") boardDto.setDetailAdd("undefined");
		if(boardDto.getDateNego() != null) boardDto.setDateNego("Y");
		else boardDto.setDateNego("N");
		if(boardDto.getTimeNego() != null) boardDto.setTimeNego("Y");
		else boardDto.setTimeNego("N");
		if(boardDto.getPlaceNego() != null) boardDto.setPlaceNego("Y");
		else boardDto.setPlaceNego("N");
		
		boardService.uploadBoard(boardDto);
	
		String message = "<script>";
		   	   message += "alert('등록되었습니다.');";
		   	   message += "location.href='" + request.getContextPath() + "/main';";
		   	   message += "</script>";
		   
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
 
		return new ResponseEntity<String>(message, responseHeaders, HttpStatus.OK);
	}
	
	@RequestMapping(value="/boardInfo", method=RequestMethod.GET)
	public ModelAndView boardInfo(@RequestParam("boardNumber") int boardNumber, @RequestParam("loginMember") String loginMember) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/board/boardInfo");
		boardService.updateViews(boardNumber);
		Map<String, Object> boardInfo = boardService.getBoardInfo(boardNumber);
		mv.addObject("boardInfo", boardInfo);
		mv.addObject("loginMember", loginMember);
		
		if(boardService.isInterest(loginMember, boardNumber)) {
			mv.addObject("operator", "minus");			
		}
		else {
			mv.addObject("operator", "plus");
		}
		
		return mv;
	}
	
	@RequestMapping(value="/interest", method=RequestMethod.GET)
	public ModelAndView interest(@RequestParam("boardNumber") int boardNumber, @RequestParam("loginMember") String loginMember, @RequestParam("operator") String operator) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/board/boardInfo");
		boardService.updateInterest(boardNumber, loginMember, operator);
		Map<String, Object> boardInfo = boardService.getBoardInfo(boardNumber);
		mv.addObject("boardInfo", boardInfo);
		mv.addObject("loginMember", loginMember);
		
		if(boardService.isInterest(loginMember, boardNumber)) {
			mv.addObject("operator", "minus");			
		}
		else {
			mv.addObject("operator", "plus");
		}
		
		return mv;
	}
	
	
}
