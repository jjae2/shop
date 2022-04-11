package com.one.s1.category;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.one.s1.category.CategoryDAO.";

	public List<CategoryDTO> category()throws Exception{
		return sqlSession.selectList(NAMESPACE+"category");
	}
}
