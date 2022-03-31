package com.one.s1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.board.BoardDTO;
import com.one.s1.util.Pager;

@Controller
@RequestMapping("/product/**")
public class ProductController {

	@Autowired
	private ProductService productService;

	@ModelAttribute("board")
	public String board() {
		return "product";
	}
	
	//상품 수정
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ModelAndView update(ProductDTO productDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = productService.update(productDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}

	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String update(ProductDTO productDTO, Model model) throws Exception {
		productDTO = productService.detail(productDTO);
		model.addAttribute("dto", productDTO);
		return "product/update";
	}

	//상품 삭제
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public ModelAndView delete(ProductDTO productDTO) throws Exception {
		int result = productService.delete(productDTO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:./list");
		return mv;
	}

	//상품 등록
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public ModelAndView add(ProductDTO productDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = productService.add(productDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public ModelAndView add() throws Exception {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("product/add");
		return mv;
	}

	
	//상품 상세
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public ModelAndView detail(ProductDTO productDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		productDTO = productService.detail(productDTO);
		mv.addObject("dto", productDTO);
		mv.setViewName("product/detail");

		return mv;
	}

	//상품 리스트
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public ModelAndView list(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductDTO> ar = productService.list(pager);

		mv.addObject("list", ar);
		mv.setViewName("product/list");
		return mv;
	}

}
