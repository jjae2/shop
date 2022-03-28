package com.one.s1.board.qnas;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.board.BoardDTO;
import com.one.s1.util.Pager;

@Controller
@RequestMapping("/qnas/**")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@ModelAttribute("board")
	public String board() {
		return "qna";
	}
	
	
	@RequestMapping(value="reply", method=RequestMethod.POST)
	public ModelAndView reply(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.reply(qnaDTO);
		mv.setViewName("redirect:./list");
		
		return mv;
	}
	
	@RequestMapping(value = "reply", method=RequestMethod.GET)
	public ModelAndView reply(QnaDTO qnaDTO, ModelAndView mv)throws Exception{
		mv.addObject("dto", qnaDTO);//부모글번호
		mv.setViewName("board/reply");
		return mv;
	}
	
	@RequestMapping(value = "update", method=RequestMethod.POST)
	public ModelAndView update(QnaDTO qnasDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.update(qnasDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@RequestMapping(value="update", method=RequestMethod.GET)
	public String update(QnaDTO qnasDTO, Model model)throws Exception{
		BoardDTO boardDTO = qnaService.detail(qnasDTO);
		model.addAttribute("dto", boardDTO);
		return "board/update";
	}
	
	@RequestMapping(value = "delete", method=RequestMethod.GET)
	public String delete(QnaDTO qnasDTO)throws Exception{
		int result = qnaService.delete(qnasDTO);
		return "redirect:./list";
	}
	
	@RequestMapping(value = "add", method=RequestMethod.GET)
	public ModelAndView add()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("board/add");
		return mv;
	}
	
	@RequestMapping(value = "add", method=RequestMethod.POST)
	public ModelAndView add(QnaDTO qnasDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.add(qnasDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@RequestMapping(value = "detail", method=RequestMethod.GET)
	public String detail(QnaDTO qnaDTO, Model model)throws Exception{
		BoardDTO boardDTO = qnaService.detail(qnaDTO);
		//BoardDTO boardDTO=boardDTO;
		model.addAttribute("dto", boardDTO);
		
		return "board/detail";
	}
	
	//list
	@RequestMapping(value="list", method=RequestMethod.GET)
	public String list(Pager pager, Model model)throws Exception{
		
		List<BoardDTO> ar = qnaService.list(pager);
		model.addAttribute("list", ar);
		
		
		return "board/list";
	}
}