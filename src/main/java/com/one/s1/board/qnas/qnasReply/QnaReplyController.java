package com.one.s1.board.qnas.qnasReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import oracle.jdbc.proxy.annotation.GetCreator;

@Controller
@RequestMapping("/qnasReply/**")
public class QnaReplyController {
	@Autowired
	private QnaReplyService qnaReplyService;
	
	//@RequestMapping(value="add", method=RequestMethod.POST)
	//@GetMapping("")
	@PostMapping("add")
	public ModelAndView add(QnaReplyDTO qnaReplyDTO)throws Exception{
		int result = qnaReplyService.add(qnaReplyDTO);
		System.out.println("add!!!!");
		System.out.println(result);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv; //"redirect:../qna/list";
	}
	
	@GetMapping("list")
	public ModelAndView list(QnaReplyDTO qnaReplyDTO)throws Exception{
		System.out.println("List!!!");
		System.out.println(qnaReplyDTO.getNum());
		List<QnaReplyDTO> ar = qnaReplyService.list(qnaReplyDTO);
		
		System.out.println(ar);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("qnaReply", ar);
		mv.setViewName("common/qnaReply");
		
		return mv;
				
	}
	
	@PostMapping("delete")
	public ModelAndView delete(QnaReplyDTO qnaReplyDTO)throws Exception{
		System.out.println(qnaReplyDTO.getReplyNum());
		int result = qnaReplyService.delete(qnaReplyDTO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		return mv;
		
	}
	
	@PostMapping("update")
	public ModelAndView update(QnaReplyDTO qnaReplyDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(qnaReplyDTO.getContents());
		System.out.println(qnaReplyDTO.getReplyNum());
		int resut = qnaReplyService.update(qnaReplyDTO);
		
		System.out.println(resut);
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", resut);
		
		return mv;
	}
	
	

}