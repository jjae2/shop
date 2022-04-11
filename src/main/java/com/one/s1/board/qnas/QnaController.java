package com.one.s1.board.qnas;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.board.BoardDTO;
import com.one.s1.members.MemberDTO;
import com.one.s1.product.ProductDTO;
import com.one.s1.util.Pager;
import com.one.s1.util.Pager2;

@Controller
@RequestMapping("/qnas/**")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	MemberDTO memberDTO;
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
	public ModelAndView update(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.update(qnaDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@RequestMapping(value="update", method=RequestMethod.GET)
	public String update(QnaDTO qnaDTO, Model model)throws Exception{
		BoardDTO boardDTO = qnaService.detail(qnaDTO);
		model.addAttribute("dto", boardDTO);
		return "board/update";
	}
	
	@RequestMapping(value = "delete", method=RequestMethod.GET)
	public String delete(QnaDTO qnaDTO)throws Exception{
		int result = qnaService.delete(qnaDTO);
		return "redirect:./list";
	}
//완료
	@RequestMapping(value = "add", method=RequestMethod.GET)
	public ModelAndView add(QnaDTO qnaDTO, ProductDTO productDTO)throws Exception{
		ModelAndView mv = new ModelAndView();

		mv.addObject("qnaDTO", qnaDTO);
		mv.addObject("ProductDTO", productDTO);
		mv.setViewName("common/qnaAdd");
		return mv;
	}
//완료	
	@RequestMapping(value = "add", method=RequestMethod.POST)
	public ModelAndView add1(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.add(qnaDTO);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@RequestMapping(value = "detail", method=RequestMethod.GET)
	public String detail(QnaDTO qnaDTO, Model model)throws Exception{
		BoardDTO boardDTO = qnaService.detail(qnaDTO);
		//BoardDTO boardDTO=boardDTO;
		model.addAttribute("dto", boardDTO);
		
		return "board/detail";
	}
	
//완료
	//list
	@RequestMapping(value="list", method=RequestMethod.GET)
	public String list(Pager2 pager, Model model)throws Exception{
		
		Long total = qnaService.total(pager);
		
		if(total != 0) {		
		ArrayList<Long> ar2 = new ArrayList<Long>();		
		List<BoardDTO> ar = qnaService.list(pager);
//		Long [] arr = new Long[ar.size()];
//		for(BoardDTO boardDTO:ar) {

		for(int i=0; i<ar.size();i++) {
			ar2.add(i, ar.get(i).getNum());
		}
		pager.setNumArr(ar2);	
		List<BoardDTO> ar1 =qnaService.replyList(pager);
		
		model.addAttribute("list", ar);
		model.addAttribute("list1", ar1);			
		}
		model.addAttribute("total", total);
		model.addAttribute("pager", pager);
		
		return "common/qnaList";
	}
}
