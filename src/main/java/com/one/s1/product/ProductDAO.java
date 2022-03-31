package com.one.s1.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.s1.util.Pager;

@Repository
public class ProductDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.one.s1.product.ProductDAO.";

	// update 상품 수정
	public int update(ProductDTO productDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "update", productDTO);
	}

	// add 상품 등록
	public int add(ProductDTO productDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "add", productDTO);
	}

	// list 상품 목록
	public List<ProductDTO> list(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "list", pager);
	}

	// sellList 판매자 상품 목록
	public List<ProductDTO> sellList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "sellList", pager);
	}

	// detail 상품 상세내용
	public ProductDTO detail(ProductDTO productDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "detail", productDTO);
	}
	
	public int detailHit(ProductDTO productDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "detailHit", productDTO);
	}

	// delete 상품 삭제
	public int delete(ProductDTO productDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "delete", productDTO);
	}

	public Long total(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "total", pager);
	}
	public Long total2(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "total2", pager);
	}
	
	
}
