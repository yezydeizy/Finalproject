package yong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import yong.memo.model.MemoDAO;
import yong.memo.model.MemoDTO;

@Controller
@RequestMapping("/memoWrite.do")	//�������� ����
public class MemoController {
	
	@Autowired
	private MemoDAO memoDao;
	
	@RequestMapping(/*value = "/memoWrite.do",*/method = RequestMethod.GET)
	public ModelAndView memoWriteForm() {
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("memo/memoWrite");//�޸��ۼ�������
		return mav;
	}
	
	@RequestMapping(/*value = "/memoWrite.do",*/method = RequestMethod.POST)//���Ը޼ҵ� ���� ��ɾ����� ����Ʈ�϶��� ����
	public ModelAndView memoWriteSubmit(MemoDTO dto) {
		
		int result=memoDao.memoWrite(dto);
		
		System.out.println("안녕:"+result);
		System.out.println("안녕:"+dto.getIdx());
		System.out.println("아녕:"+dto.getWriter());
		System.out.println("안녕:");
		System.out.println(dto.getContent());
		ModelAndView mav=new ModelAndView();
		mav.setViewName("memo/memoOk");//�޸��ۼ��Ϸ�������
		return mav;
	}
}
