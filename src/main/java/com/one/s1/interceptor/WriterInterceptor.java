package com.one.s1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.one.s1.board.BoardDTO;
import com.one.s1.board.house.HouseDAO;
import com.one.s1.board.house.HouseDTO;
import com.one.s1.members.MemberDTO;
@Component
public class WriterInterceptor extends HandlerInterceptorAdapter{
	
	@Autowired
	private HouseDAO houseDAO;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean check=true;
		System.out.println("writer interceptor 실행");
		Long num = Long.parseLong(request.getParameter("num"));
		BoardDTO boardDTO = new HouseDTO();
		boardDTO.setNum(num);
		boardDTO =houseDAO.detail(boardDTO);
		MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
		if(!boardDTO.getId().equals(memberDTO.getId())) {
			check=false;
			request.setAttribute("message", "작성자가 아닙니다.");
			request.setAttribute("path", "./list");
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			view.forward(request, response);
		}
		
		return check;
	}
}
