package com.mbs.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mbs.board.dto.BoardDto;
import com.mbs.board.service.BoardService;

@Controller
public class MainController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="/" , method=RequestMethod.GET)
	public ModelAndView home() throws Exception{
		return new ModelAndView("redirect:/main");
	}
	
	@RequestMapping(value="/main" , method=RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/main/main");
		
		HttpSession session = request.getSession();
		String member = (String) session.getAttribute("memberInfo");
		if(member != null) {
			mv.addObject("member", member);
		}
		
		List<BoardDto> boardList = boardService.getBoardList();
		mv.addObject("boardList", boardList);
		
		return mv;
		
	}
	
}
