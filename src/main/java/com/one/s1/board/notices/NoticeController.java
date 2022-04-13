package com.one.s1.board.notices;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.one.s1.board.BoardDTO;
import com.one.s1.members.MemberDTO;
import com.one.s1.product.CategoryDTO;
import com.one.s1.product.ProductDTO;
import com.one.s1.product.ProductFileDTO;
import com.one.s1.util.Pager;

@Controller
@RequestMapping("/notices/*")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	
	
	@ModelAttribute("board")
	public String board() {
		return "notice";
	}

	
	//파일 삭제
	@PostMapping("fileDelete")
	public ModelAndView fileDelete(NoticeFileDTO noticeFileDTO)throws Exception{
		ModelAndView mv = new ModelAndView();

		int result = noticeService.fileDelete(noticeFileDTO);
		
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}	
	
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ModelAndView update(NoticeDTO noticeDTO, MultipartFile [] files) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = noticeService.update(noticeDTO, files);
		mv.setViewName("redirect:./list");
		return mv;
	}

	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String update(NoticeDTO noticeDTO, Model model) throws Exception {
		BoardDTO boardDTO = noticeService.detail(noticeDTO);
		model.addAttribute("dto", boardDTO);
		return "notice/noticeUpdate";
	}

	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public ModelAndView delete(NoticeDTO noticeDTO) throws Exception {
		int result = noticeService.delete(noticeDTO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:./list");
		return mv;
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public ModelAndView add(NoticeDTO noticeDTO, MultipartFile [] files) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = noticeService.add(noticeDTO, files);

		mv.setViewName("redirect:./list");
		return mv;
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public ModelAndView add() throws Exception {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("notice/noticeAdd");
		return mv;
	}

	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public ModelAndView detail(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		BoardDTO boardDTO = noticeService.detail(noticeDTO);
		mv.addObject("dto", boardDTO);
		mv.setViewName("notice/noticeDetail");

		return mv;
	}

	@RequestMapping(value = "noticeList", method = RequestMethod.GET)
	public ModelAndView noticeList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("noticeList 지나감");
		System.out.println(pager.getPage());
		List<BoardDTO> ar = noticeService.list(pager);
		
		
		
		mv.addObject("pager", pager);
		mv.addObject("list", ar);
		mv.setViewName("common/noticeListResult");
		return mv;
	}
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public ModelAndView list(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("notice/noticeList");
		mv.addObject("pager", pager);
		return mv;
	}
}
