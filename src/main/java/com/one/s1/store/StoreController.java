package com.one.s1.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.board.qnas.qnasReply.QnaReplyDTO;
import com.one.s1.product.CategoryDTO;
import com.one.s1.product.ProductDTO;
import com.one.s1.product.ProductService;
import com.one.s1.util.Pager;
import com.one.s1.util.Pager3;
import com.one.s1.util.PassingNum;


@Controller
@RequestMapping("/store/**")
public class StoreController {

	@Autowired
	private StoreService storeService;

	@ModelAttribute("board")
	public String board() {
		return "store";
	}

	
	// 카테고리 상품 정렬
	@RequestMapping(value = "array", method = RequestMethod.GET)
	public String array() throws Exception {
		return "common/productArray";
	}	
	
	
	
	// 카테고리 상품 필터 결과 뷰
	@RequestMapping(value = "filterView", method = RequestMethod.GET)
	public ModelAndView filterView(PassingNum passingNum) throws Exception {
		ModelAndView mv = new ModelAndView();
		//storeService.asd(pager);
		System.out.println(passingNum.getSale());
		System.out.println(passingNum.getBrand());
		System.out.println(passingNum.getFilterStartPrice());
		System.out.println(passingNum.getFilterLastPrice());
		mv.addObject("passingNum", passingNum);		
		mv.setViewName("common/categoryFilterView");
//		System.out.println("return");
		return mv;
	}	



	// 카테고리 상품 필터
	@RequestMapping(value = "categoryFilter", method = RequestMethod.GET)
	public ModelAndView categoryFilter(PassingNum num) throws Exception {
		ModelAndView mv = new ModelAndView();
		//storeService.asd(pager);
//		System.out.println(num.getCategoryFilter_num());
		mv.addObject("categoryFilter_num", num.getCategoryFilter_num());		
		mv.setViewName("common/categoryFilterResult");
//		System.out.println("return");
		return mv;
	}
	

	// 카테고리 리스트
	@RequestMapping(value = "category", method = RequestMethod.GET)
	public ModelAndView categoryList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<CategoryDTO> ar1 = storeService.category();

		mv.addObject("pager", pager);
		mv.addObject("category", ar1);

		mv.setViewName("store/category");
		return mv;
	}

}
