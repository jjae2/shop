package com.one.s1.util;

import java.io.File;
import java.util.Calendar;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {

	@Autowired
	private ServletContext servletContext;

	public boolean remove(String path, String fileName)throws Exception{
		//파일을 HDD에서 삭제
		//저장된 폴더명, 저장된 파일명
		path = servletContext.getRealPath(path);
		
		File file = new File(path, fileName);
		
		return file.delete();
	}
	
	
	public String save(MultipartFile multipartFile, String path) throws Exception{
		//파일저장은 tomcat이 아니라 os에서 저장
		//path=resources/upload/product
		String realPath = servletContext.getRealPath(path);
		System.out.println(realPath);
		
		File file = new File(realPath);
		System.out.println(file.exists());
		System.out.println(file.isDirectory());
		
		if(!file.exists()) {
			//file.mkdir();//중간에 폴더가 없으면 에러
			file.mkdirs();//중간 폴더가 없음녀 중간 폴더도 생성
		}
		
		//1. 시간
		Calendar ca = Calendar.getInstance();
		long l = ca.getTimeInMillis();//현재 시간을 밀리세컨즈로 변환
		System.out.println("time : "+l);
		String oriName = multipartFile.getOriginalFilename();//???.jpg
		
		String fileName = l+"_"+oriName;
		System.out.println("FileName : "+fileName);
		
		
		//2. UUID
		fileName = UUID.randomUUID().toString();
		fileName = fileName+"_"+oriName;
		System.out.println("UUID : "+fileName);
		
		//1. file HDD에 저장
//		//1. MultipartFile 클래스의 transferTo 메서드 사용
//		file = new File(realPath, fileName);
//		multipartFile.transferTo(file);
		
		//2. FileCopyUtis
		file = new File(file, fileName);
		FileCopyUtils.copy(multipartFile.getBytes(), file);
		
		
		
		return fileName;
	}	
}