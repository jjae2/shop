package com.one.s1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.one.s1.review.ReviewDTO;

import com.one.s1.util.FileManager;

@Service
public class ProductService {

	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private FileManager fileManager;
	
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
	public int updateReview(ReviewDTO reviewDTO)throws Exception{
		return productDAO.updateReview(reviewDTO);	
	}
	public int deleteReview(ReviewDTO reviewDTO)throws Exception{
		return productDAO.deleteReview(reviewDTO);	
	}
}
