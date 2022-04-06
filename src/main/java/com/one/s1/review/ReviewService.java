package com.one.s1.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewService {

	@Autowired
	private ReviewDAO reviewDAO;
	
	public List<ReviewDTO> list(ReviewDTO reviewDTO)throws Exception{
		return reviewDAO.list(reviewDTO);
	}
	public int add(ReviewDTO reviewDTO)throws Exception{
		return reviewDAO.add(reviewDTO);		
	}
	public int update(ReviewDTO reviewDTO)throws Exception{
		return reviewDAO.update(reviewDTO);		
	}
	public int delete(ReviewDTO reviewDTO)throws Exception{
		return reviewDAO.delete(reviewDTO);	
	}
	
}
