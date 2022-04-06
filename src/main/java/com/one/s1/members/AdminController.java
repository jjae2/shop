package com.one.s1.members;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.board.BoardDTO;
import com.one.s1.board.house.HouseDTO;



@Controller
@RequestMapping(value = "/admin/*")
public class AdminController {
	
	@Autowired
	private MemberService memberService;

	// list
	@GetMapping("list")
	public ModelAndView admindetail() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<MemberDTO> ar = memberService.list();
		mv.addObject("list", ar);
		mv.setViewName("admin/list");
		return mv;
	}
	@GetMapping("detail")
	public ModelAndView listA(MemberDTO memberDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		memberDTO = memberService.detail(memberDTO);
		mv.addObject("detail", memberDTO);
		return mv;
	}
	
	@GetMapping("updateA")
	public void updateA(MemberDTO memberDTO, Model model) throws Exception {
		memberDTO = memberService.detail(memberDTO);
		model.addAttribute("dto", memberDTO);
	}
	@PostMapping("updateA")
	public String updateA(MemberDTO memberDTO) throws Exception {
		int result = memberService.updateA(memberDTO);
		return "redirect:./list";
	}

}