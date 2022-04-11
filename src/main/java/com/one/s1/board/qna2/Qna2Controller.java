package com.one.s1.board.qna2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.board.BoardDTO;
import com.one.s1.board.notices.NoticeDTO;
import com.one.s1.util.Pager;

@Controller
@RequestMapping("/qna2/**")
public class Qna2Controller {

	@Autowired
	private Qna2Service qna2Service;
	
	@ModelAttribute("board")
	public String board() {
		return "qna2";
	}
	@GetMapping("list")
	public String list(Pager pager, Model model) throws Exception{
		List<BoardDTO> ar = qna2Service.list(pager);
		model.addAttribute("list", ar);
		return "board/list";
	}
	
	@GetMapping("detail")
	public String detail(Qna2DTO qna2dto, Model model)throws Exception{
		BoardDTO boardDTO = qna2Service.detail(qna2dto);
		model.addAttribute("dto", boardDTO);
		return "board/detail";
	}
	
	@GetMapping("add")
	public ModelAndView add()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/add");
		return mv;
	}
	@PostMapping("add")
	public ModelAndView add(Qna2DTO qna2dto)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qna2Service.add(qna2dto);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@GetMapping("update")
	public String update(Qna2DTO qna2dto, Model model)throws Exception{
		BoardDTO boardDTO = qna2Service.detail(qna2dto);
		model.addAttribute("dto", boardDTO);
		return "board/update";
	}
	@PostMapping("update")
	public ModelAndView update(Qna2DTO qna2dto)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qna2Service.update(qna2dto);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@GetMapping("delete")
	public String delete(Qna2DTO qna2dto) throws Exception{
		int result = qna2Service.delete(qna2dto);
		return "redirect:./list";
	}
	
	@GetMapping("reply")
	public ModelAndView reply(Qna2DTO qna2dto, ModelAndView mv) throws Exception{
		mv.addObject("dto", qna2dto);
		mv.setViewName("board/reply");
		return mv;
	}
	
	@PostMapping("reply")
	public ModelAndView reply(Qna2DTO qna2dto)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qna2Service.reply(qna2dto);
		mv.setViewName("redirect:./list");
		return mv;
	}
}
