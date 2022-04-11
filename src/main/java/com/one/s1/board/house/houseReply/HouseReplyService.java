package com.one.s1.board.house.houseReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HouseReplyService {
	@Autowired
	private HouseReplyDAO houseReplyDAO;
	
	public List<HouseReplyDTO> list(HouseReplyDTO houseReplyDTO) throws Exception{
		return houseReplyDAO.list(houseReplyDTO);
	}
	public int add(HouseReplyDTO houseReplyDTO)throws Exception{
		return houseReplyDAO.add(houseReplyDTO);
	}
	public int update(HouseReplyDTO houseReplyDTO) throws Exception{
		return houseReplyDAO.update(houseReplyDTO);
	}
	public int delete(HouseReplyDTO houseReplyDTO) throws Exception{
		return houseReplyDAO.delete(houseReplyDTO);
	}
}
