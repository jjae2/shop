package com.one.s1.members;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/member/*")
public class MemberController {

	@Autowired
	private MemberService memberService;

	

	@RequestMapping(value = "update", method = RequestMethod.GET)
	public 	String update(MemberDTO memberDTO, ModelAndView mv) throws Exception {
		return "./member/update";
	}
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(MemberDTO memberDTO,HttpSession session) throws Exception {
		int result = memberService.update(memberDTO);
		if(result==1) {
			session.setAttribute("member", memberDTO);
		}
		return "./member/mypage";
	}


	@RequestMapping(value = "updatePw", method = RequestMethod.GET)
	public String updatePw(MemberDTO memberDTO,ModelAndView mv) throws Exception {
		return "./member/updatePw";
	}	
	@RequestMapping(value = "updatePw", method = RequestMethod.POST)
	public String updatePw(MemberDTO memberDTO) throws Exception {
		int result = memberService.updatePw(memberDTO);
		return "./member/mypage";
	}

	// mypage
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public String mypage() throws Exception {
//		ModelAndView mv = new ModelAndView();
//		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
//		memberDTO = memberService.mypage(memberDTO);
//		mv.setViewName("member/mypage");
//		mv.addObject("dto", memberDTO);
		return "./member/mypage";
	}

	// logout
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:../";
	}

	// insert
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(MemberDTO memberDTO,MultipartFile photo) throws Exception {
		int result = memberService.join(memberDTO, photo);
		System.out.println(photo.getOriginalFilename());
		System.out.println(photo.getSize());
		return "redirect:../";

	}

	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void join() throws Exception {
	}

	@RequestMapping(value = "joinCheck", method = RequestMethod.GET)
	public void joinCheck() throws Exception {

	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(HttpSession session, MemberDTO memberDTO, String remember, Model model,
			HttpServletResponse response) throws Exception {

		System.out.println("Remember : " + remember);
		if (remember != null && remember.equals("1")) {
			// cookie 생성
			Cookie cookie = new Cookie("remember", memberDTO.getId());
			cookie.setPath("/");
			cookie.setMaxAge(-1);
			// 응답
			response.addCookie(cookie);
		} else {
			Cookie cookie = new Cookie("remember", "");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}

		memberDTO = memberService.login(memberDTO);

		String message = "로그인 실패";
		String p = "./login";

		if (memberDTO != null) {

			session.setAttribute("member", memberDTO);
			message = "로그인 성공";
			p = "../";
			
		}

		model.addAttribute("message", message);
		model.addAttribute("path", p);
		String path = "common/result";
		return path;
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void login(Model model, @CookieValue(value = "remember", defaultValue = "") String rememberId)
			throws Exception {

	}

}