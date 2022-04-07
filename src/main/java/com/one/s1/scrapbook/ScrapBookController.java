package com.one.s1.scrapbook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.product.ProductDTO;

@Controller
@RequestMapping(value = "/scrap/**")
public class ScrapBookController {
@Autowired
private ScrapBookService scrapBookService;

@GetMapping("listScrap")
public ModelAndView listScrap(ProductDTO productDTO) throws Exception {
	ModelAndView mv = new ModelAndView();
	List<ScrapBookDTO> ar = scrapBookService.listScrap(productDTO);
	mv.addObject("scrap",ar);
	mv.setViewName("member/listScrap");
	return mv;
}
@PostMapping("addScrap")
public ModelAndView addScrap(ScrapBookDTO scrapBookDTO) throws Exception {
	ModelAndView mv = new ModelAndView();
	int result = scrapBookService.addScrap(scrapBookDTO);
	mv.addObject("result",result);
	mv.setViewName("common/ajaxResult");
	return mv;
}

@GetMapping("deleteScrap")
public ModelAndView deleteScrap(ScrapBookDTO scrapBookDTO) throws Exception {
	int result = scrapBookService.deleteScrap(scrapBookDTO);
	ModelAndView mv = new ModelAndView();
	mv.addObject("result",result);
	mv.setViewName("common/ajaxResult");
	return mv;
}

}
