package yong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import yong.memo.model.MemoDAO;
import yong.memo.model.MemoDTO;

@Controller
@RequestMapping("/memoWrite.do")
public class MemoController {
	
	@Autowired
	private MemoDAO memoDao;
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView memoWriteFrom() {
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("memo/memoWrite");
		return mav;
		
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView memoWriteSubmit(@ModelAttribute ("mdt") MemoDTO dto) {
		
		int result=memoDao.memoWrite(dto);
		
		System.out.println("실행결과 값:"+result);
		System.out.println("번호:"+dto.getIdx());
		System.out.println("작성자:"+dto.getWriter());
		System.out.println("내용");
		System.out.println(dto.getContent());
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("memo/memoOk");
		return mav;
	}
}