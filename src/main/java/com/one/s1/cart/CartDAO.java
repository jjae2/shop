package com.one.s1.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.one.s1.cart.CartDAO.";
	
	//insert 추가
	public int add(CartDTO cartDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"add", cartDTO);
	}
	
	//delete 삭제
	public int delete(CartDTO cartDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"delete", cartDTO);
	}
	
	//update 수정
	public int update(CartDTO cartDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"update", cartDTO);
	}
	
	//list 목록
	public List<CartDTO> list(String id) throws Exception{
		return sqlSession.selectList(NAMESPACE+"list");
	}
	
	//cart 확인
	public CartDTO checkCart(CartDTO cartDTO)throws Exception {
		return null;
	}

}
