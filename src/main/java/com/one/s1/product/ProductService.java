package com.one.s1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.one.s1.members.MemberDTO;
import com.one.s1.product.CategoryDTO;
import com.one.s1.util.FileManager;
import com.one.s1.util.Pager;
import com.one.s1.util.PassingNum;

@Service
public class ProductService {

	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private FileManager fileManager;
	
	

	/*
	 * public int cart(ProductDTO productDTO)throws Exception{
	 * 
	 * return productDAO.cart(productDTO); }
	 */
	
	public int fileDelete(ProductFileDTO productFileDTO)throws Exception{
		
		return productDAO.fileDelete(productFileDTO);
	}
	
	public ProductFileDTO detailFile(ProductFileDTO productFileDTO) throws Exception{
		return productDAO.detailFile(productFileDTO);
	}
	
	public int update(ProductDTO productDTO, MultipartFile [] files, MultipartFile [] files1) throws Exception {
		
//		if(ar != null) {
//			for(ProductFileDTO productFileDTO : ar) {
//				productFileDTO = productDAO.detailFile(productFileDTO);				
//				boolean check = fileManager.remove("resources/upload/product/", productFileDTO.getFileName());
//				System.out.println(productFileDTO.getFileName()+" : "+check);
//			}			
//		}

		int result = productDAO.update(productDTO);
		System.out.println("PRODUCT_NUM : "+productDTO.getProduct_num());
		//1. 파일을 HDD에 저장
		for(int i=0;i<files.length;i++) {
			if(files[i].isEmpty()) {
			 //files[i].getSize()==0
				continue;
			}
			
			String fileName = fileManager.save(files[i], "resources/upload/product/");
			//2. 정보를 DB에 저장
			ProductFileDTO productFileDTO = new ProductFileDTO();
			productFileDTO.setFileName(fileName);
			productFileDTO.setProduct_num(productDTO.getProduct_num());
			productFileDTO.setOriName(files[i].getOriginalFilename());
			productFileDTO.setFileSection(0L);
			result = productDAO.addFile(productFileDTO);
		}
		for(int i=0;i<files1.length;i++) {
			if(files1[i].isEmpty()) {
			 //files[i].getSize()==0
				continue;
			}
			
			String fileName = fileManager.save(files1[i], "resources/upload/product/");
			//2. 정보를 DB에 저장
			ProductFileDTO productFileDTO = new ProductFileDTO();
			productFileDTO.setFileName(fileName);
			productFileDTO.setProduct_num(productDTO.getProduct_num());
			productFileDTO.setOriName(files1[i].getOriginalFilename());
			productFileDTO.setFileSection(1L);
			result = productDAO.addFile(productFileDTO);
		}
		return result;
	}
	
	public int add(ProductDTO productDTO, MultipartFile [] photos, MultipartFile [] photos1) throws Exception {
		int result = productDAO.add(productDTO);
		System.out.println("PRODUCT_NUM : "+productDTO.getProduct_num());
		//1. 파일을 HDD에 저장
		for(int i=0;i<photos.length;i++) {
			if(photos[i].isEmpty()) {
			 //files[i].getSize()==0
				continue;
			}
			
			String fileName = fileManager.save(photos[i], "resources/upload/product/");
			//2. 정보를 DB에 저장
			ProductFileDTO productFileDTO = new ProductFileDTO();
			productFileDTO.setFileName(fileName);
			productFileDTO.setProduct_num(productDTO.getProduct_num());
			productFileDTO.setOriName(photos[i].getOriginalFilename());
			productFileDTO.setFileSection(0L);
			result = productDAO.addFile(productFileDTO);
		}
		for(int i=0;i<photos1.length;i++) {
			if(photos1[i].isEmpty()) {
			 //files[i].getSize()==0
				continue;
			}
			
			String fileName = fileManager.save(photos1[i], "resources/upload/product/");
			//2. 정보를 DB에 저장
			ProductFileDTO productFileDTO = new ProductFileDTO();
			productFileDTO.setFileName(fileName);
			productFileDTO.setProduct_num(productDTO.getProduct_num());
			productFileDTO.setOriName(photos1[i].getOriginalFilename());
			productFileDTO.setFileSection(1L);
			result = productDAO.addFile(productFileDTO);
		}
		return result;
	}
	
	
	public List<ProductDTO> list(Pager pager) throws Exception {
		pager.makeRow();

		pager.makeNum(productDAO.total(pager));
		return productDAO.list(pager);
	}
	
	public List<ProductDTO> categoryList(PassingNum passingNum, Pager pager) throws Exception {
		pager.makeRow();

		pager.makeNum(productDAO.total(pager));
		return productDAO.categoryList(passingNum);
	}
	
	public int categoryListTotal(PassingNum passingNum, Pager pager) throws Exception {	
		return productDAO.categoryListTotal(passingNum);
	}
	
	public List<CategoryDTO> category() throws Exception{
		return productDAO.category();
	}
	
	public List<ProductDTO> sellList(Pager pager) throws Exception {
		pager.makeRow();

		pager.makeNum(productDAO.total2(pager));
		return productDAO.sellList(pager);
	}
	
	public ProductDTO detail(ProductDTO productDTO) throws Exception {
		int result = productDAO.detailHit(productDTO);
//		productDAO.listFile(productDTO);
		return productDAO.detail(productDTO);
	}
	
	public MemberDTO sellerInfo(ProductDTO productDTO) throws Exception {
		
		return productDAO.sellerInfo(productDTO);
	}
	
	public CategoryDTO category_name(CategoryDTO categoryDTO) throws Exception {

		return productDAO.category_name(categoryDTO);
	}
	
	public int delete(ProductDTO productDTO) throws Exception {
		// TODO Auto-generated method stub
		List<ProductFileDTO> ar = productDAO.listFile(productDTO);
		int result= productDAO.delete(productDTO);
		
		if(result>0) {
			for(ProductFileDTO productFileDTO:ar) {
				boolean check = fileManager.remove("resources/upload/product/", productFileDTO.getFileName());
				System.out.println(check);
			}
		}
		
		
		return result;
	}
	
	
}
