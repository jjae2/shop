package com.one.s1.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.members.MemberDTO;

@Controller
@RequestMapping("/cart/**")

public class CartController {

	@Autowired
	private CartService cartService;
	
	@GetMapping("list")
	public String list(String id , Model model)throws Exception{
//		return "cart/list";
//		model.addAttribute("cartList", cartService.list(id));
//		model.addAttribute("list", ar);
//		return "cart/list";
//	}
		model.addAttribute("cartList", cartService.list(id));
//		HttpSession session = request.getSession();
//		session.setAttribute("id", session);
//		String id = (String)session.getAttribute("id");
//		Map<String, Object>map = new HashMap<String, Object>();
//		List<CartDTO> ar = cartService.list(id);
//		CartDTO cartDTO = new CartDTO();
//		cartDTO.initSaleTotal();
//		map.put("list", ar);
//		map.put("count", ar.size());
//		mv.setViewName("cart/list");
//		mv.addObject("map", map);
//		return mv;
//		
		
//		
//		if(id!=null) {
//			List<CartDTO> list = cartService.list(id);
//			
//			mv.setViewName("list");
//			mv.addObject("mv", mv);
//			
//		
//		}
//		return mv;
		
		return "cart/list";
		
}
	

//	@ResponseBody
//	@PostMapping("add")
//	public String add(CartDTO cartDTO ,HttpServletRequest request) throws Exception{
//		//로그인 안되면 3 반환
//		HttpSession session = request.getSession();
//		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
//		if(memberDTO.getId() == null) {
//			return "redirect:../member/join.jsp";
//		}
//		
//		//등록
//		int result = cartService.add(cartDTO);
//		return result + "";
//		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
//	}
	
	@PostMapping("delete")
	public String delete(CartDTO cartDTO)throws Exception{
		int result = cartService.delete(cartDTO);
		return "redirect:./list";
	}
	
	@PostMapping("update")
	public String update(CartDTO cartDTO, Model model) throws Exception {
		cartService.update(cartDTO);
		model.addAttribute("dto", cartDTO);
		return "redirect:./list";
	}
	
	@PostMapping("add")
	public String cart(CartDTO cartDTO, Model model) throws Exception {
		 
		int result = cartService.add(cartDTO);
 

		model.addAttribute("result", result);
//		model.addAttribute("cart", ar);
		return "common/ajaxResult";
	}
	
	
	
}
