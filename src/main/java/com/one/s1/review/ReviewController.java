package com.one.s1.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/review/**")
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	@GetMapping("list")
	public ModelAndView list(ReviewDTO reviewDTO) throws Exception{
		List<ReviewDTO> ar = reviewService.list(reviewDTO);
		ModelAndView mv =new ModelAndView();
		mv.addObject("review",ar);
		mv.setViewName("common/review");
		return mv;
	}
	@PostMapping("addReview")
	public ModelAndView addReview(ReviewDTO reviewDTO) throws Exception{
		int result=reviewService.add(reviewDTO);
		ModelAndView mv=new ModelAndView();
		mv.addObject("result",result);
		mv.setViewName("common/review");
		
		return mv;
	}
	@PostMapping("update")
	public ModelAndView update(ReviewDTO reviewDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result =  reviewService.update(reviewDTO);
		mv.setViewName("common/review");
		mv.addObject("result",result);
		return mv;
	}
	@PostMapping("delete")
	public ModelAndView delete(ReviewDTO reviewDTO) throws Exception{
		int result=reviewService.delete(reviewDTO);
		ModelAndView mv =new ModelAndView();
		mv.addObject("result",result);
		mv.setViewName("common/review");
		return mv;
	}
	
}
