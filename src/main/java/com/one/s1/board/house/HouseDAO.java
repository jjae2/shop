package com.one.s1.board.house;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.s1.board.BoardDAO;
import com.one.s1.board.BoardDTO;
import com.one.s1.board.BoardFileDTO;
import com.one.s1.product.ProductDTO;
import com.one.s1.scrapbook.ScrapBookDTO;
import com.one.s1.util.Pager;

@Repository
public class HouseDAO implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.one.s1.board.house.HouseDAO.";

	@Override
	public BoardDTO detail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "detail", boardDTO);
	}

	@Override
	public List<BoardDTO> list(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + "list", pager);
	}

	@Override
	public int add(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + "add", boardDTO);
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

	@Override
	public int addFile(BoardFileDTO boardFileDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + "addFile", boardFileDTO);
	}

	public int deleteFile(HouseFileDTO houseFileDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "fileDelete", houseFileDTO);
	}

	public List<HouseFileDTO> listFile(BoardDTO boardDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE + "listFile", boardDTO);
	}

	public HouseFileDTO detailFile(HouseFileDTO houseFileDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "detailFile", houseFileDTO);
	}
	public int hitCount(BoardDTO boardDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"hitCount",boardDTO);
	}
	public List<HouseDTO> photolist() throws Exception{
		return sqlSession.selectList(NAMESPACE+"photolist");
	}
	public Long count() throws Exception {
		return sqlSession.selectOne(NAMESPACE + "count");
	}
}
