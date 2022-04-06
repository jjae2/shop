package com.one.s1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.board.house.houseReply.HouseReplyDTO;
import com.one.s1.review.ReviewDTO;

@Controller
@RequestMapping("/product/**")
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping("list")
	public ModelAndView admindetail() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductDTO> ar = productService.list();
		mv.addObject("list", ar);
		mv.setViewName("product/list");
		return mv;
	}

	@GetMapping("detail")
	public ModelAndView detail(ProductDTO productDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		productDTO = productService.detail(productDTO);
		mv.addObject("detail", productDTO);
		mv.setViewName("product/detail");
		return mv;
	}
	@GetMapping("listReview")
	public ModelAndView list(ProductDTO productDTO) throws Exception{
		List<ReviewDTO> ar = productService.listReview(productDTO);
		ModelAndView mv =new ModelAndView();
		mv.addObject("review",ar);
		mv.setViewName("common/review");
		return mv;
	}
	
	@PostMapping("addReview")
	public ModelAndView addReview(ReviewDTO reviewDTO) throws Exception{
		System.out.println(reviewDTO.getId());
		System.out.println(reviewDTO.getProduct_num());
		System.out.println(reviewDTO.getContents());
		int result=productService.addReview(reviewDTO);
		ModelAndView mv=new ModelAndView();
		mv.addObject("result",result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	@PostMapping("updateReview")
	public ModelAndView updateReview(ReviewDTO reviewDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result =  productService.updateReview(reviewDTO);
		mv.setViewName("common/ajaxResult");
		mv.addObject("result",result);
		return mv;
	}
	@PostMapping("deleteReview")
	public ModelAndView delete(ReviewDTO reviewDTO) throws Exception{
		int result=productService.deleteReview(reviewDTO);
		ModelAndView mv =new ModelAndView();
		mv.addObject("result",result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
}
