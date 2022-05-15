package com.one.s1.members;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.one.s1.util.FileManager;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private FileManager fileManager;

	public int update(MemberDTO memberDTO,MultipartFile photo) throws Exception {
		int result= memberDAO.update(memberDTO);
		// 1.파일을 HDD에 저장
		String fileName = fileManager.save(photo, "/resources/upload/member/");
		// 2.정보를 db에 저장
		MemberFileDTO memberFileDTO = new MemberFileDTO();
		memberFileDTO.setId(memberDTO.getId());
		memberFileDTO.setFileName(fileName);
		memberFileDTO.setOriName(photo.getOriginalFilename());

		result = memberDAO.addFile(memberFileDTO);

		return result;
	}

	public int updatePw(MemberDTO memberDTO) throws Exception {
		return memberDAO.updatePw(memberDTO);
	}

	public int updateA(MemberDTO memberDTO) throws Exception {
		return memberDAO.updateA(memberDTO);
	}

	public int join(MemberDTO memberDTO, MultipartFile photo) throws Exception {
		int result = memberDAO.join(memberDTO);
		// 1.파일을 HDD에 저장
		String fileName = fileManager.save(photo, "/resources/upload/member/");
		// 2.정보를 db에 저장
		MemberFileDTO memberFileDTO = new MemberFileDTO();
		memberFileDTO.setId(memberDTO.getId());
		memberFileDTO.setFileName(fileName);
		memberFileDTO.setOriName(photo.getOriginalFilename());

		result = memberDAO.addFile(memberFileDTO);

		return result;
	}

	public MemberDTO login(MemberDTO memberDTO) throws Exception {
		return memberDAO.login(memberDTO);
	}

	public MemberDTO mypage(MemberDTO memberDTO) throws Exception {
		return memberDAO.mypage(memberDTO);
	}
	
	public int delete(MemberDTO memberDTO) throws Exception {
		MemberFileDTO memberFileDTO = memberDAO.fileList(memberDTO);
		int result= memberDAO.delete(memberDTO);
		if(result==1) {
			boolean check = fileManager.remove("/resources/upload/member/", memberFileDTO.getFileName());
		}
		return result;
	}

	public MemberDTO detail(MemberDTO memberDTO) throws Exception {
		return memberDAO.detail(memberDTO);
	}

	public List<MemberDTO> list() throws Exception {
		return memberDAO.list();
	}
	
	public int idCheck(MemberDTO memberDTO) throws Exception {
		return memberDAO.idCheck(memberDTO);
	}
	
	public int emailCheck(MemberDTO memberDTO) throws Exception {
		return memberDAO.emailCheck(memberDTO);
	}
	
	public MemberDTO idFind(MemberDTO memberDTO) throws Exception {
		return memberDAO.idFind(memberDTO);
	}
	
	public int pwFind(MemberDTO memberDTO) throws Exception {
		return memberDAO.pwFind(memberDTO);
	}
}
