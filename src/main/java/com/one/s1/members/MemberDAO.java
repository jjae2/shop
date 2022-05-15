package com.one.s1.members;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.one.s1.members.MemberDAO.";

	public int update(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "update", memberDTO);
	}
	public int updatePw(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "updatePw", memberDTO);
	}
	public int updateA(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "updateA", memberDTO);
	}
	
	public MemberFileDTO fileList(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"fileList",memberDTO);
	}
	
	public int addFile(MemberFileDTO memberFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "addFile", memberFileDTO);
	}
	
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

	public int idCheck(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"idCheck", memberDTO);
	}
	
	public int emailCheck(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"emailCheck", memberDTO);
	}
	
	public int delete(MemberDTO memberDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"delete", memberDTO);
	}
	
	public MemberDTO idFind(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"idFind", memberDTO);
	}
	
	public int pwFind(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"pwFind", memberDTO);
	}

}
