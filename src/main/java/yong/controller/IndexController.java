package yong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	@RequestMapping("/index.do")
	public ModelAndView indexMain() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("indexMain");
		return mav;
	}
	
}
