package com.one.s1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.one.s1.board.BoardDTO;
import com.one.s1.board.house.HouseDTO;
import com.one.s1.members.MemberDAO;
import com.one.s1.members.MemberDTO;

@Component
public class AdminInterceptor extends HandlerInterceptorAdapter {
	@Autowired
	MemberDAO memberDAO;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
	
		
		System.out.println("어드민 실행");
		HttpSession session = request.getSession();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		if(memberDTO==null||memberDTO.getAuth_id() != 2) {    // 관리자 계정 아닌 경우
			
			request.setAttribute("message", "관리자가 아닙니다.");
			request.setAttribute("path", "../");
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			view.forward(request, response);
         
            return false;
            
        }
 
        return true; 
	}
}

