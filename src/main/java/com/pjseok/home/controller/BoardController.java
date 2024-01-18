package com.pjseok.home.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.pjseok.home.dao.BoardDao;
import com.pjseok.home.dao.MemberDao;
import com.pjseok.home.dto.MemberDto;
import com.pjseok.home.dto.QAboardDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@Controller

public class BoardController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping(value = "/board")
	public String board(HttpServletRequest request, Model model){
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		List<QAboardDto> dtos = dao.listDao();
		
		model.addAttribute("list", dtos);
		
		return "list";
	}
	@GetMapping(value = "/writeForm")
	public String writeForm(HttpServletRequest request, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		
		String sessionId = (String) session.getAttribute("sessionId");
		
		if(sessionId == null) {//로그인하지 않은 회원이 글쓰기 버튼 클릭한 경우
			// 컨트롤러에서 경고창 띄우기
			response.setContentType("text/html;charset=utf-8"); // utf-8로 경고창에 출력될 문자셋 셋팅
			response.setCharacterEncoding("utf-8");
			
			PrintWriter printout = response.getWriter();
			
			printout.println("<script>alert('"+ "로그아웃 하시겠습니까?" +"');location.href='"+"login"+"';</script>");
		    printout.flush();
			
			
		} else {
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			
			MemberDto memberDto = dao.memberInfoDao(sessionId); //현재 로그인 중인 아이디의 회원정보를 가져오기
			model.addAttribute("memberDto", memberDto);
		}
		
		
		
		return "writeForm";
	}
	
	@GetMapping(value="/write")
	public String write(HttpServletRequest request, Model model) {
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		dao.writeDao(request.getParameter("qbmid"), request.getParameter("qbname"), request.getParameter("qbemail"), request.getParameter("qbtitle"), request.getParameter("qbcontent"));
		
		
		return "redirect:board";
	}
	@GetMapping(value ="/contentView")
	public String contentView(HttpServletRequest request, Model model, HttpServletResponse response) throws IOException {
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		QAboardDto boardDto = dao.contentViewDao(request.getParameter("qbnum"));
		
		if(boardDto == null) { // 글이 삭제된 경우(db 검색 실패)
			response.setContentType("text/html;charset=utf-8"); // utf-8로 경고창에 출력될 문자셋 셋팅
			response.setCharacterEncoding("utf-8");
			
			PrintWriter printout = response.getWriter();
			
			printout.println("<script>alert('"+ "해당 글은 삭제된 글입니다." +"');location.href='"+"board"+"';</script>");
		    printout.flush();
		}	else {
			model.addAttribute("boardDto", boardDto);
		}
		
		
		
		
		return "contentView";
	}
	@GetMapping(value ="/contentModify")
	public String contentModify() {
		return "contentModify";
	}
	
}
