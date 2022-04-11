package com.one.s1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.members.MemberDTO;
import com.one.s1.product.CategoryDTO;
import com.one.s1.review.ReviewDTO;
import com.one.s1.util.Pager;
import com.one.s1.util.PassingNum;


@Controller
@RequestMapping("/product/**")
public class ProductController {

	@Autowired
	private ProductService productService;
//리뷰부분
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
//리뷰 끝
	@ModelAttribute("board")
	public String board() {
		return "product";
	}


	
	
	
	//상품 수정
	@RequestMapping(value = "cart", method = RequestMethod.POST)
	public ModelAndView update(ProductDTO productDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
			
//		int result = productService.cart(productDTO);
		mv.setViewName("");
		return mv;
	}
	
	
	
	
	//카테고리 리스트
	@RequestMapping(value = "category", method = RequestMethod.GET)
	public ModelAndView categoryList(PassingNum passingNum, Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();

		System.out.println("category 지나감");
		System.out.println(passingNum.getProductArray());
		
		
		List<ProductDTO> ar = productService.categoryList(passingNum, pager);
		int result = productService.categoryListTotal(passingNum, pager);

//		mv.addObject("pager", pager);	
//		mv.addObject("category", ar1);		
		mv.addObject("list", ar);
		
		mv.addObject("result", result);
		mv.setViewName("common/categoryProductList");
		return mv;
	}
	
/*	
	//카테고리 필터 리스트
	@RequestMapping(value = "filter", method = RequestMethod.GET)
	public ModelAndView filter(PassingNum num, Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductDTO> ar = productService.filter(pager);
		int result = productService.filterTotal(pager);

//		mv.addObject("pager", pager);	
//		mv.addObject("category", ar1);		
		mv.addObject("list", ar);
		
		mv.addObject("result", result);
		mv.setViewName("common/categoryProductList");
		return mv;
	}
*/	
	
	//파일 삭제
	@PostMapping("fileDelete")
	public ModelAndView fileDelete(ProductFileDTO productFileDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
//		System.out.println(productFileDTO.getFileNum());
		int result = productService.fileDelete(productFileDTO);
		
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}	
	
	
	//상품 수정
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ModelAndView update(ProductDTO productDTO, MultipartFile [] files, MultipartFile [] filesInfo) throws Exception {
		ModelAndView mv = new ModelAndView();
//		for(int i=0;i<df.length;i++) {
//			System.out.println(df[i].getFileName());
//		}
		
		
		
		
		int result = productService.update(productDTO, files, filesInfo);
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
	public ModelAndView add(ProductDTO productDTO, MultipartFile [] files, MultipartFile [] filesInfo) throws Exception {
		for(int i=0;i<files.length;i++) {	
			System.out.println("OriginalFilename : "+files[i].getOriginalFilename());
			System.out.println("size : "+files[i].getSize());
		}
		ModelAndView mv = new ModelAndView();
		
		int result = productService.add(productDTO, files, filesInfo);
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
		MemberDTO memberDTO = productService.sellerInfo(productDTO);
		CategoryDTO categoryDTO = new CategoryDTO();
		categoryDTO.setCategory_num(productDTO.getCategory_num());
		categoryDTO = productService.category_name(categoryDTO);
		mv.addObject("memberDTO", memberDTO);
		mv.addObject("categoryDTO", categoryDTO);
		mv.addObject("dto", productDTO);
		mv.setViewName("product/detail");

		return mv;
	}

	//상품 리스트
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public ModelAndView list(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductDTO> ar = productService.list(pager);

		if(ar.isEmpty()) {
			System.out.println("null");
		}
		
		mv.addObject("list", ar);
		mv.setViewName("product/list");
		return mv;
	}

	
	
	
}
