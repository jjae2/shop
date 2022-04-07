package com.one.s1.scrapbook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.s1.product.ProductDTO;
@Service
public class ScrapBookService {
@Autowired
private ScrapBookDAO scrapBookDAO;
	
	
	public List<ScrapBookDTO> listScrap(ProductDTO productDTO) throws Exception{
		return scrapBookDAO.listScrap(productDTO);
	}
	public int addScrap(ScrapBookDTO scrapBookDTO)throws Exception{
		return scrapBookDAO.addScrap(scrapBookDTO);
	}
	public int deleteScrap(ScrapBookDTO scrapBookDTO)throws Exception{
		return scrapBookDAO.deleteScrap(scrapBookDTO);
	}
}
