package com.one.s1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.s1.review.ReviewDTO;

@Service
public class ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	public List<ProductDTO> list()throws Exception{
		return productDAO.list();
	}
	public ProductDTO detail(ProductDTO productDTO)throws Exception{
		return productDAO.detail(productDTO);
	}
	public int addReview(ReviewDTO reviewDTO)throws Exception{
		return productDAO.addReview(reviewDTO);		
	}
	public List<ReviewDTO> listReview(ProductDTO productDTO)throws Exception{
		return productDAO.listReview(productDTO);
	}
}
