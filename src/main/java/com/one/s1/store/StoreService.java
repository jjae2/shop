package com.one.s1.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.s1.product.CategoryDTO;
import com.one.s1.product.ProductDAO;
import com.one.s1.product.ProductDTO;
import com.one.s1.util.FileManager;
import com.one.s1.util.Pager;
import com.one.s1.util.Pager3;

@Service
public class StoreService {

	@Autowired
	private StoreDAO storeDAO;
	@Autowired
	private FileManager fileManager;
	

	public List<ProductDTO> categoryProductList(Pager3 pager) throws Exception{
		return storeDAO.categoryProductList(pager);
	}	
	public List<CategoryDTO> category() throws Exception{
		return storeDAO.category();
	}
}
