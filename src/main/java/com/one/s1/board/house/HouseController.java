package com.one.s1.board.house;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.board.BoardDTO;
import com.one.s1.util.Pager;

@Controller
@RequestMapping("house/*")
public class HouseController {

	@Autowired
	private HouseService houseService;

	@GetMapping("list")
	public ModelAndView list(MultipartFile photo, Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<BoardDTO> ar = houseService.list(pager);
		List<HouseDTO> ar2 = houseService.photolist(photo);
		Long result = houseService.count();
		mv.addObject("count", result);
		mv.addObject("list", ar);
		mv.addObject("pl", ar2);
		mv.setViewName("house/list");
		return mv;
	}

	@GetMapping("detail")
	public String detail(HouseDTO houseDTO, Model model) throws Exception {

		BoardDTO boardDTO = houseService.detail(houseDTO);
		model.addAttribute("dto", boardDTO);
		houseService.hitCount(houseDTO);
		return "house/detail";
	}

	@GetMapping("add")
	public ModelAndView add() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("house/add");
		return mv;
	}

	@PostMapping("add")
	public ModelAndView add(HouseDTO houseDTO, MultipartFile photo) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = houseService.add(houseDTO, photo);
		mv.setViewName("redirect:./list");
		return mv;
	}

	@GetMapping("update")
	public String update(HouseDTO houseDTO, Model model) throws Exception {
		BoardDTO boardDTO = houseService.detail(houseDTO);
		model.addAttribute("dto", boardDTO);
		return "house/update";
	}

	@PostMapping("update")
	public ModelAndView update(HouseDTO houseDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = houseService.update(houseDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}

	@GetMapping("delete")
	public String delete(HouseDTO houseDTO) throws Exception {
		int result = houseService.delete(houseDTO);

		return "redirect:./list";
	}

	// filedelete
	@PostMapping("deleteFile")
	public ModelAndView fileDelete(HouseFileDTO houseFileDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println(houseFileDTO.getFileNum());
		int result = houseService.deleteFile(houseFileDTO);

		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}

}
