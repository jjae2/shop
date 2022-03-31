package com.one.s1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.s1.util.Pager;

@Service
public class ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	
	public int update(ProductDTO productDTO) throws Exception {
		return productDAO.update(productDTO);
	}
	
	public int add(ProductDTO productDTO) throws Exception {
		return productDAO.add(productDTO);
	}
	
	public List<ProductDTO> list(Pager pager) throws Exception {
		pager.makeRow();

		pager.makeNum(productDAO.total(pager));
		return productDAO.list(pager);
	}
	
	public List<ProductDTO> sellList(Pager pager) throws Exception {
		pager.makeRow();

		pager.makeNum(productDAO.total2(pager));
		return productDAO.sellList(pager);
	}
	
	public ProductDTO detail(ProductDTO productDTO) throws Exception {
		int result = productDAO.detailHit(productDTO);
		return productDAO.detail(productDTO);
	}
	
	public int delete(ProductDTO productDTO) throws Exception {
		return productDAO.delete(productDTO);
	}
	
	
}
