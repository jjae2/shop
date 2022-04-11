package com.one.s1.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.s1.product.CategoryDTO;
import com.one.s1.product.ProductDTO;
import com.one.s1.util.Pager;
import com.one.s1.util.Pager3;
@Repository
public class StoreDAO {


	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.one.s1.store.StoreDAO.";
	
	// categoryProductList 상품 목록
	public List<ProductDTO> categoryProductList(Pager3 pager) throws Exception {
		
		return sqlSession.selectList(NAMESPACE + "categoryProductList", pager);
	}
	
	public List<CategoryDTO> category()throws Exception{
		return sqlSession.selectList(NAMESPACE+"category");
	}
}

