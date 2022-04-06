package com.one.s1.board.house.houseReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/houseReply/**")
public class HouseReplyController {

	@Autowired
	private HouseReplyService houseReplyService;
	
	@GetMapping("list")
	public ModelAndView list(HouseReplyDTO houseReplyDTO) throws Exception{
		System.out.println(houseReplyDTO.getNum());
		List<HouseReplyDTO> ar = houseReplyService.list(houseReplyDTO);
		ModelAndView mv =new ModelAndView();
		mv.addObject("houseReply",ar);
		mv.setViewName("common/houseReply");
		return mv;
	}
	@PostMapping("add")
	public ModelAndView add(HouseReplyDTO houseReplyDTO) throws Exception{
		int result=houseReplyService.add(houseReplyDTO);
		System.out.println(result);
		ModelAndView mv=new ModelAndView();
		mv.addObject("result",result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	@PostMapping("update")
	public ModelAndView update(HouseReplyDTO houseReplyDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result =  houseReplyService.update(houseReplyDTO);
		mv.setViewName("common/ajaxResult");
		mv.addObject("result",result);
		return mv;
	}
	@PostMapping("delete")
	public ModelAndView delete(HouseReplyDTO houseReplyDTO) throws Exception{
		System.out.println(houseReplyDTO.getNum());
		int result=houseReplyService.delete(houseReplyDTO);
		ModelAndView mv =new ModelAndView();
		mv.addObject("result",result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
}
