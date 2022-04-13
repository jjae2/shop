package com.one.s1.board.house;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.one.s1.board.BoardDTO;
import com.one.s1.board.BoardService;
import com.one.s1.util.FileManager;
import com.one.s1.util.Pager;



@Service
public class HouseService implements BoardService {
	@Autowired
	private HouseDAO houseDAO;
	@Autowired
	private FileManager fileManager;
	
	public int deleteFile(HouseFileDTO houseFileDTO)throws Exception{
		return houseDAO.deleteFile(houseFileDTO);
	}

	public HouseFileDTO detailFile(HouseFileDTO houseFileDTO) throws Exception {
		// TODO Auto-generated method stub
		return houseDAO.detailFile(houseFileDTO);
	}
	
	@Override
	public List<BoardDTO> list(Pager pager) throws Exception {
		pager.makeRow();
		pager.makeNum(houseDAO.total(pager));
		return houseDAO.list(pager);
	}

	@Override
	public BoardDTO detail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return houseDAO.detail(boardDTO);
	}

	@Override
	public int add(BoardDTO boardDTO,MultipartFile[] files) throws Exception {
		int result= houseDAO.add(boardDTO);
		//1.HDD에 저장
		for(int i=0;i<files.length;i++) {
			if(files[i].isEmpty()) {
				continue;
			}
			
			String fileName=fileManager.save(files[i], "resources/upload/house/");
		//2.DB에 저장
			HouseFileDTO houseFileDTO = new HouseFileDTO();
			houseFileDTO.setNum(boardDTO.getNum());
			houseFileDTO.setFileName(fileName);
			houseFileDTO.setOriName(files[i].getOriginalFilename());
			result=houseDAO.addFile(houseFileDTO);
			System.out.println(result);
		}
		return result;
	}

	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return houseDAO.update(boardDTO);
	}

	@Override
	public int delete(BoardDTO boardDTO) throws Exception {
		List<HouseFileDTO> ar = houseDAO.listFile(boardDTO);
		int result = houseDAO.delete(boardDTO);
		if (result > 0) {
			for (HouseFileDTO dto : ar) {
				boolean check = fileManager.remove("resources/upload/house/", dto.getFileName());
			}
		}
		return result;
	}
	public int hitCount(BoardDTO boardDTO)throws Exception{
		return houseDAO.hitCount(boardDTO);
	}

	@Override
	public int add(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	public List<HouseDTO> photolist(MultipartFile photo) throws Exception{
		return houseDAO.photolist();
	}
	public Long count()throws Exception{
		return houseDAO.count();
	}

}
