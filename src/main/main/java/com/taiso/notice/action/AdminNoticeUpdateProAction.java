package com.taiso.notice.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.notice.db.BoardDTO;
import com.taiso.notice.db.noticeDAO;

public class AdminNoticeUpdateProAction implements Notice {

	@Override
	public NoticeForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println(" M : AdminNoticeUpdateProAction_execute 호출 ");
		
		// DTO 객체 생성
		BoardDTO boDTO = new BoardDTO();

		boDTO.setBo_num(Integer.parseInt(request.getParameter("bo_num")));
		boDTO.setBo_title(request.getParameter("bo_title"));
		boDTO.setBo_pass(request.getParameter("bo_pass"));
		boDTO.setBo_content(request.getParameter("bo_content"));
		String pageNum = request.getParameter("pageNum");
		
		// DB 수정
		noticeDAO dao = new noticeDAO();
		int result = dao.updateNotice(boDTO);
		
		System.out.println(" M : 수정완료 " + result);
		
		// 페이지 이동 
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(result == 1) {
			out.print("<script>");
			out.print(" alert('공지사항 수정 완료'); ");
			out.print("location.href='./AdminNoticeList.nb';");
			out.print("</script>");
			out.close();
			
			return null;
		} else if(result == 0) {
			out.print("<script>");
			out.print(" alert('비밀번호 불일치'); ");
			out.print(" history.back();");
			out.print("</script>");
			out.close();
			
			return null;
		} else { // result == -1
			out.print("<script>");
			out.print(" alert('게시판 글 없음'); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;
		}
		
	}

}
