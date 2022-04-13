package com.one.s1.members;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.s1.product.ProductDTO;
import com.one.s1.util.Pager;




@Repository
public class MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.one.s1.members.MemberDAO.";

	
	//판매자탭입니다
	
	/*
	 * public List<ProductDTO> list(Pager pager) throws Exception { return
	 * sqlSession.selectList(NAMESPACE + "list", pager); }
	 */
	
	
	
	
	//(끝) 판매자탭입니다
	
	// UPDATE
	public int update(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "update", memberDTO);
	}
	public int updatePw(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "updatePw", memberDTO);
	}
	public int updateA(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "updateA", memberDTO);
	}
	public int addFile(MemberFileDTO memberFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "addFile", memberFileDTO);
	}
	
	// join 회원가입 폼
	public int join(MemberDTO memberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "join", memberDTO);
	}

	public MemberDTO login(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "login", memberDTO);
	}

	public MemberDTO mypage(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "mypage", memberDTO);
	}
	public MemberDTO detail(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "detail", memberDTO);
	}
	public List<MemberDTO> list()throws Exception{
		return sqlSession.selectList(NAMESPACE+"list");
	}

}
