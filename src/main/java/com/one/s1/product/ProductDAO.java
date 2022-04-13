package com.one.s1.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.one.s1.review.ReviewDTO;
import com.one.s1.members.MemberDTO;
import com.one.s1.product.CategoryDTO;
import com.one.s1.util.Pager;
import com.one.s1.util.Pager3;
import com.one.s1.util.PassingNum;

@Repository
public class ProductDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.one.s1.product.ProductDAO.";
	
	
	public List<ProductDTO> homeProduct() throws Exception {
		return sqlSession.selectList(NAMESPACE + "homeProduct");
	}
	public List<ProductDTO> feedProduct(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "feedProduct", pager);
	}	
	
	public Long feedProductTotal(Pager pager) throws Exception {
//		System.out.println("DAO.categoryList1");
		return sqlSession.selectOne(NAMESPACE + "feedProductTotal", pager);
	}
	
	//리뷰 부분
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
	//리뷰 끝
	// categoryList 상품 목록
	public List<ProductDTO> categoryList(PassingNum passingNum) throws Exception {
//		System.out.println("DAO.categoryList");
		return sqlSession.selectList(NAMESPACE + "categoryList", passingNum);
	}
	
	public int categoryListTotal(PassingNum passingNum) throws Exception {
//		System.out.println("DAO.categoryList1");
		return sqlSession.selectOne(NAMESPACE + "categoryListTotal", passingNum);
	}
	
	
	
	public List<CategoryDTO> category()throws Exception{
		return sqlSession.selectList(NAMESPACE+"category");
	}
	
	public CategoryDTO category_name(CategoryDTO categoryDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"category_name", categoryDTO);
	}
	
	
	public int fileDelete(ProductFileDTO productFileDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"fileDelete", productFileDTO);
	}
	
	public List<ProductFileDTO> listFile(ProductDTO productDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"listFile", productDTO);
	}
	
	public ProductFileDTO detailFile(ProductFileDTO productFileDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"detailFile", productFileDTO);
	}		
	
	public int addFile(ProductFileDTO productFileDTO) throws Exception {		
		return sqlSession.insert(NAMESPACE + "addFile", productFileDTO);
	}
	
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
	public List<ProductDTO> sellList(Pager3 pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "sellList", pager);
	}

	// detail 상품 상세내용
	public ProductDTO detail(ProductDTO productDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "detail", productDTO);
	}
	
	public MemberDTO sellerInfo(ProductDTO productDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "sellerInfo", productDTO);
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
	public Long sellProductListTotal(Pager3 pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "sellProductListTotal", pager);
	}
	
}
