package com.mbs.main.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/test")
public class TestController {

	@RequestMapping(value="/tiles", method=RequestMethod.GET)
	public ModelAndView tiles() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("test/tilesTest");
		return mv;
	}
	
	
}
