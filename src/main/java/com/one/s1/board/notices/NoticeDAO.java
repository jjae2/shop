package com.one.s1.board.notices;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.s1.board.BoardDAO;
import com.one.s1.board.BoardDTO;
import com.one.s1.product.ProductDTO;
import com.one.s1.product.ProductFileDTO;
import com.one.s1.util.Pager;

@Repository
public class NoticeDAO implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.one.s1.board.notices.NoticeDAO.";

	@Override
	public BoardDTO detail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "detail", boardDTO);
	}
	
	public int detailHit(BoardDTO boardDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "detailHit", boardDTO);
	}
	
	@Override
	public List<BoardDTO> list(Pager pager) throws Exception {//
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + "list", pager);//
	}

	@Override
	public int add(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + "add", boardDTO);
	}
	
	public int addFile(NoticeFileDTO noticeFileDTO) throws Exception {		
		return sqlSession.insert(NAMESPACE + "addFile", noticeFileDTO);
	}
	
	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE + "update", boardDTO);
	}

	@Override
	public int delete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + "delete", boardDTO);
	}

	@Override
	public Long total(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "total", pager);
	}

}
