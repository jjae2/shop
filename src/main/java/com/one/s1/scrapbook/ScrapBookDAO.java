package com.one.s1.scrapbook;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.s1.product.ProductDTO;

@Repository
public class ScrapBookDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.one.s1.scrapbook.ScrapBookDAO.";
	
	public List<ScrapBookDTO> listScrap(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"listScrap",productDTO);
	}
	public int addScrap(ScrapBookDTO scrapBookDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addScrap",scrapBookDTO);
	}
	public int deleteScrap(ScrapBookDTO scrapBookDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"deleteScrap",scrapBookDTO);
	}

}
