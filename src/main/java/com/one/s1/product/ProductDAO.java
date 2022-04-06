package com.one.s1.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.s1.board.BoardFileDTO;
import com.one.s1.review.ReviewDTO;


@Repository
public class ProductDAO {
	
@Autowired
private SqlSession sqlSession;
private  final String NAMESPACE="com.one.s1.product.ProductDAO.";

public List<ProductDTO> list()throws Exception{
	return sqlSession.selectList(NAMESPACE+"list");
}
public ProductDTO detail(ProductDTO productDTO)throws Exception{
	return sqlSession.selectOne(NAMESPACE+"detail",productDTO);
}
public int addReview(ReviewDTO reviewDTO)throws Exception{
	return sqlSession.insert(NAMESPACE+"addReview",reviewDTO);		
}
public List<ReviewDTO> listReview(ProductDTO productDTO)throws Exception{
	return sqlSession.selectList(NAMESPACE+"listReview", productDTO);
}
public int updateReview(ReviewDTO reviewDTO)throws Exception{
	return sqlSession.update(NAMESPACE+"updateReview",reviewDTO);		
}
public int deleteReview(ReviewDTO reviewDTO)throws Exception{
	return sqlSession.delete(NAMESPACE+"deleteReview",reviewDTO);		
}
}
