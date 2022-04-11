package com.one.s1.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
@RequestMapping("/store/**")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	
//	@RequestMapping(value = "category", method = RequestMethod.GET)
//	public String category(CategoryDTO categoryDTO, Model model) throws Exception {
//		
//		List<CategoryDTO> ar = categoryService.category();
// 
//		if(ar.isEmpty()) {
//			System.out.println("null");
//		}else {
//			System.out.println("not null");	
//		}
//		model.addAttribute("category", ar);
//		return "store/category";
//	}
	
	
	
}
