package com.one.s1.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.s1.product.ProductDAO;
import com.one.s1.util.FileManager;

@Service
public class CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;

	
	
	public List<CategoryDTO> category() throws Exception{
		return categoryDAO.category();
	}
	
	
}
