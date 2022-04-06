package com.one.s1.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ReviewDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.one.s1.review.ReviewDAO.";

	public List<ReviewDTO> list(ReviewDTO reviewDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"list", reviewDTO);
	}
	public int add(ReviewDTO reviewDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"add",reviewDTO);		
	}
	public int update(ReviewDTO reviewDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"update",reviewDTO);		
	}
	public int delete(ReviewDTO reviewDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"delete",reviewDTO);		
	}
}
