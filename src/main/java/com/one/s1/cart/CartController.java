package com.one.s1.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
@RequestMapping("/store/**")
public class CartController {

	@Autowired
	private CartService cartService;
	
	
	@RequestMapping(value = "cart", method = RequestMethod.POST)
	public String cart(CartDTO cartDTO, Model model) throws Exception {
		 
		int result = cartService.cartAdd(cartDTO);
 

		model.addAttribute("result", result);
//		model.addAttribute("cart", ar);
		return "common/ajaxResult";
	}
	
	
	
}
