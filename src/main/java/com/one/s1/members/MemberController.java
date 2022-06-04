package com.one.s1.members;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.util.Pager;

@Controller
@RequestMapping(value = "/member/*")
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	BCryptPasswordEncoder pwdEncoder;

	@GetMapping("main")
	public String main() {

		return "member/sellmain";
	}

	@RequestMapping(value = "sellmain", method = RequestMethod.GET)
	public String sellmain(MemberDTO memberDTO, ModelAndView mv) throws Exception {

		return "./member/sellmain";
	}

	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String update(MemberDTO memberDTO, ModelAndView mv) throws Exception {
		return "./member/update";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(MemberDTO memberDTO, HttpSession session,MultipartFile photo) throws Exception {
		int result = memberService.update(memberDTO,photo);
		if (result == 1) {
			session.setAttribute("member", memberDTO);
		}
		return "./member/mypage";
	}

	@RequestMapping(value = "updatePw", method = RequestMethod.GET)
	public String updatePw(MemberDTO memberDTO, ModelAndView mv) throws Exception {
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
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void join() throws Exception {
	}
	
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public ModelAndView join(MemberDTO memberDTO, MultipartFile photo) throws Exception {
		ModelAndView mv = new ModelAndView();
		//스프링 시큐리티 암호화
		String inputPw= memberDTO.getPw();
		String pwd =pwdEncoder.encode(inputPw);
		memberDTO.setPw(pwd);
		int result = memberService.join(memberDTO,photo);
		//
		mv.setViewName("common/result");
		if(result == 1) {
			mv.addObject("message", "회원가입을 축하드립니다!");
			mv.addObject("path", "./login");
		}else {
			mv.addObject("message", "회원가입 실패");
			mv.addObject("path", "./join");
		}
		return mv;
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(HttpSession session, MemberDTO memberDTO, String remember, Model model,
			HttpServletResponse response) throws Exception {

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
		
		MemberDTO member = memberService.login(memberDTO);
		boolean pwdMatch =pwdEncoder.matches(memberDTO.getPw(), member.getPw());
		
		String message = "로그인을 실패했습니다.";
		String p = "./login";
		
		if(member != null && pwdMatch == true) {
			session.setAttribute("member", memberDTO);
			message = "로그인을 성공했습니다.";
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
	//아이디 중복
	@RequestMapping(value = "idCheck", method = RequestMethod.POST)
	public ModelAndView idCheck(MemberDTO memberDTO) throws Exception {
		int result = memberService.idCheck(memberDTO);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;	
	}
	@RequestMapping(value = "emailCheck", method = RequestMethod.POST)
	public ModelAndView emailCheck(MemberDTO memberDTO) throws Exception {
		int result = memberService.emailCheck(memberDTO);	
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	//회원탈퇴 페이지
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public void delete() throws Exception {	
	}
	
	//회원탈퇴
	@RequestMapping(value = "delete", method = RequestMethod.POST)
	public ModelAndView delete(MemberDTO memberDTO, HttpSession session) throws Exception {
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/result");
		
		if(memberDTO.getPw().equals(member.getPw())) {
			int result = memberService.delete(memberDTO);
			if(result == 1) {
				session.invalidate();
				mv.addObject("message", "탈퇴 되셨습니다.");
				mv.addObject("path", "../");
			}else {
				mv.addObject("message", "탈퇴 실패했습니다.");
				mv.addObject("path", "./delete");
			}
		}else {
			mv.addObject("message", "비밀번호가 일치하지 않습니다.");
			mv.addObject("path", "./delete");
		}
		
		return mv;
	}
	//아이디 찾기 페이지
	@RequestMapping(value = "idFind", method = RequestMethod.GET)
	public void idFind() throws Exception {
		
	}

	//아이디 찾기 폼 전송
	@RequestMapping(value = "idFind", method = RequestMethod.POST)
	public ModelAndView idFind(MemberDTO memberDTO) throws Exception {
		memberDTO = memberService.idFind(memberDTO);
		ModelAndView mv = new ModelAndView();
		if(memberDTO != null) {
			mv.setViewName("member/idFindResult");
			mv.addObject("dto", memberDTO);
		}else {
			mv.setViewName("common/result");
			mv.addObject("message", "입력하신 정보와 일치하는 가입 정보가 없습니다.");
			mv.addObject("path", "../");
		}
		
		return mv;
	}
	
	//비밀번호 찾기 페이지
	@RequestMapping(value = "pwFind", method = RequestMethod.GET)
	public void pwFind() throws Exception {
		
	}
	
	//비밀번호 찾기 폼 전송
	@RequestMapping(value = "pwFind", method = RequestMethod.POST)
	public ModelAndView pwFind(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		int result = memberService.pwFind(memberDTO);
		ModelAndView mv = new ModelAndView();
		if(result == 1) {
			String newPw = request.getParameter("newPw");
			memberDTO.setPw(newPw);
			memberService.updatePw(memberDTO);
			
			mv.addObject("message", "새로운 비밀번호가 설정되었습니다.");
			mv.addObject("path", "../");
			mv.setViewName("common/result");
		}else {
			mv.addObject("message", "입력하신 아이디, 이메일과 일치하는 가입정보가 없습니다.");
			mv.addObject("path", "../");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
}