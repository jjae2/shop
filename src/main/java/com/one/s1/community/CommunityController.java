package com.one.s1.community;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/community")
public class CommunityController {

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Model model) {

		model.addAttribute("community", "community");

		return "home2";
	}
}
