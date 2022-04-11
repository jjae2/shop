package com.one.s1.cart;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {

	@Autowired
	public CartDAO cartDAO;
	
	public int add(CartDTO cartDTO) throws Exception{
		
		//데이터 체크
		CartDTO checkCart = cartDAO.checkCart(cartDTO);
		
		//데이터 존재시 1 반환
		if(checkCart != null) {
			return 1;
		}
	
		//등록 에러시 0 반환
		try {
			return cartDAO.add(cartDTO);
		}catch (Exception e) {
			return 0;
		}
		
//		int result = cartDAO.add(cartDTO);
//		return result;
		
	}
	
	public int update(CartDTO cartDTO) throws Exception{
		return cartDAO.update(cartDTO);
	}
	
	public int delete(CartDTO cartDTO) throws Exception{
		int result = cartDAO.delete(cartDTO);
		return result;
	}
	
	
	public List<CartDTO> list(String id) throws Exception{
		List<CartDTO> cartlist = cartDAO.list(id);
		for(CartDTO cartDTO : cartlist) {
		
			cartDTO.initSaleTotal();
		}
		System.out.println("service: "+cartlist);
		return cartlist;
		
//		CartDTO cartDTO = new CartDTO();
//		return cartlist;
//		
	}
	
}

