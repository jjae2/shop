package com.one.s1.qna2;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.one.s1.MyJunitTest;
import com.one.s1.board.BoardDTO;
import com.one.s1.util.Pager;

public class qna2DAOTest extends MyJunitTest{
	
	@Autowired
	private BoardDTO boardDTO;
	@Autowired
	private Pager pager;

	@Test
	public void test() {
		fail("Not yet implemented");
	}

}
