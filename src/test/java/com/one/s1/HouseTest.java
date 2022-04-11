package com.one.s1;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.one.s1.board.BoardDTO;
import com.one.s1.board.house.HouseDAO;
import com.one.s1.board.house.HouseDTO;
import com.one.s1.board.notices.NoticeDAO;
import com.one.s1.util.Pager;

public class HouseTest extends MyJunitTest {

	@Autowired
	private HouseDAO houseDAO;
		
	//@Test
//	   public void listTest(Pager pager) throws Exception{
//	      List<BoardDTO> ar = houseDAO.list(pager);
//	      assertNotEquals(0, ar.size());
//	   }
	
	//@Test
	public void check() {
		assertNotNull(houseDAO);
	}
	@Test
	public void addTest()throws Exception{
		for(int i=0; i<101; i++) {
		HouseDTO houseDTO =new HouseDTO();
		houseDTO.setId("ID"+i);
		houseDTO.setTitle("T"+i);
		houseDTO.setContents("C"+i);
		houseDTO.setHouse_type("TY"+i);
		houseDTO.setHouse_space(1L);
		houseDTO.setHouse_style("ST"+i);
		int result= houseDAO.add(houseDTO);
		}
		 
	}
}


