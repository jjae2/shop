package com.one.s1.members;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	
	public int update(MemberDTO memberDTO) throws Exception {
		return memberDAO.update(memberDTO);
	}
	public int updateA(MemberDTO memberDTO) throws Exception {
		return memberDAO.updateA(memberDTO);
	}
	
	public int join(MemberDTO memberDTO) throws Exception {
		return memberDAO.join(memberDTO);
	}
	
	public MemberDTO login(MemberDTO memberDTO) throws Exception {
		return memberDAO.login(memberDTO);
	}
	
	public MemberDTO mypage(MemberDTO memberDTO) throws Exception {
		return memberDAO.mypage(memberDTO);
	}
	public MemberDTO detail(MemberDTO memberDTO) throws Exception {
		return memberDAO.detail(memberDTO);
	}
	public List<MemberDTO> list()throws Exception{
		return memberDAO.list();
	}
	
}
