package com.one.s1.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.s1.product.ProductDAO;
import com.one.s1.util.FileManager;

@Service
public class CartService {

	@Autowired
	private CartDAO cartDAO;

	
	
	public int cartAdd(CartDTO cartDTO) throws Exception{
		
		return cartDAO.cartAdd(cartDTO);
	}
	
	
}
