package com.one.s1.cart;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.one.s1.MyJunitTest;
import com.one.s1.members.MemberDTO;
import com.one.s1.util.PassingNum;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CartTest extends MyJunitTest {

	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private CartService cartService;
	
	//추가테스트
	//@Test
	public void addCartTest() throws Exception {
		String id = "daaaru";
		Long cart_num= 1L;
		Long cart_count = 3L;
		
		CartDTO cartDTO = new CartDTO();
		cartDTO.setId(id);
		cartDTO.setProduct_num(cart_num);
		cartDTO.setCart_count(cart_count);
		
		int result = 0;
		result = cartDAO.add(cartDTO);
		System.out.println("결과 :"+result);
		
	}
	
	//삭제
	//@Test
	public void deleteCartTest() throws Exception{
		
		CartDTO cartDTO = new CartDTO();
		cartDTO.setCart_num(61L);
		
		int result = 0;
		result = cartDAO.delete(cartDTO);
		System.out.println("결과 :"+result);
		
	}
	
	//목록보기
	//@Test
	public void listCartTest(CartDTO cartDTO, PassingNum passingNum) throws Exception{
		List<CartDTO> ar = cartDAO.list(passingNum);
		for(int i=0;i<ar.size();i++) {
			System.out.println(cartDTO);
			System.out.println("init cart :" +cartDTO);
		}
	}
	
	//수정
	//@Test
	public void updateCartTest() throws Exception {
		Long cart_num = 62L;
		Long cart_count = 6L;
		Long product_num = 6L;
		
		CartDTO cartDTO = new CartDTO();
		cartDTO.setCart_num(cart_num);
		cartDTO.setCart_count(cart_count);
		cartDTO.setProduct_num(product_num);
		
		cartDAO.update(cartDTO);
		
	}
	
	
	//카트 확인
	//@Test
	public void checkCartTest() throws Exception {
		String id = "daaaru";
		Long product_num = 6L;
		
		CartDTO cartDTO = new CartDTO();
		cartDTO.setId(id);
		cartDTO.setProduct_num(product_num);
		
		CartDTO resultCart = cartDAO.checkCart(cartDTO);
		System.out.println("결과 : "+resultCart);
	}
	
	//등록테스트
	//@Test
	public void addServiceCartTest() throws Exception{
		String id = "daaru";
		Long product_num = 2L;
		Long count = 32L;
		
		CartDTO cartDTO = new CartDTO();
		cartDTO.setId(id);
		cartDTO.setProduct_num(product_num);
		cartDTO.setCart_count(count);
		
		int result = cartService.add(cartDTO);
		
		System.out.println("result :"+result);
	}

}
