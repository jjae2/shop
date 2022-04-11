package com.one.s1.board.notices;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.one.s1.board.BoardDTO;
import com.one.s1.board.BoardService;
import com.one.s1.product.ProductDTO;
import com.one.s1.product.ProductFileDTO;
import com.one.s1.util.FileManager;
import com.one.s1.util.Pager;

@Service
public class NoticeService implements BoardService {

	@Autowired
	private NoticeDAO noticeDAO;
	@Autowired
	private FileManager fileManager;
	
	
	@Override
	public List<BoardDTO> list(Pager pager) throws Exception {

		pager.makeRow();

		pager.makeNum(noticeDAO.total(pager));

		return noticeDAO.list(pager);
	}

	@Override
	public BoardDTO detail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		int result = noticeDAO.detailHit(boardDTO);
		
		return noticeDAO.detail(boardDTO);
	}

	@Override
	public int add(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		// long num = noticeDAO.seqNum();
		// boardDTO.setNum(num);
		int result = noticeDAO.add(boardDTO);

		return result;
	}
	
	public int add(BoardDTO boardDTO, MultipartFile [] photos) throws Exception {
		int result = noticeDAO.add(boardDTO);
		//1. 파일을 HDD에 저장
		for(int i=0;i<photos.length;i++) {
			if(photos[i].isEmpty()) {
			 //files[i].getSize()==0
				continue;
			}			
			String fileName = fileManager.save(photos[i], "resources/upload/notice/");
			//2. 정보를 DB에 저장
			NoticeFileDTO noticeFileDTO = new NoticeFileDTO();
			noticeFileDTO.setFileName(fileName);
			noticeFileDTO.setNum(boardDTO.getNum());
			noticeFileDTO.setOriName(photos[i].getOriginalFilename());
			result = noticeDAO.addFile(noticeFileDTO);
		}
		return result;
	}
	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.update(boardDTO);
	}

	@Override
	public int delete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		// num 으로 HDD에 저장된 파일명 조회

		int result = noticeDAO.delete(boardDTO);
		return result;
	}

}
