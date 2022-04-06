package com.one.s1.board.house.houseReply;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HouseReplyDAO {
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.one.s1.board.house.houseReply.HouseReplyDAO.";
	
	public int add(HouseReplyDTO houseReplyDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"add",houseReplyDTO);
	}
	public List<HouseReplyDTO> list(HouseReplyDTO houseReplyDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"list",houseReplyDTO);
	}
	public int delete(HouseReplyDTO houseReplyDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"delete",houseReplyDTO);
	}
	public int update(HouseReplyDTO houseReplyDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"update",houseReplyDTO);
	}
}