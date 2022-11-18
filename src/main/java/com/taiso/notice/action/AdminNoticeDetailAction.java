package com.taiso.notice.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.taiso.notice.db.BoardDTO;
import com.taiso.notice.db.noticeDAO;

public class AdminNoticeDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminNoticeDetailAction_execute() 호출");
		
		// 전달정보(파라메터) 저장
		int bo_num = Integer.parseInt(request.getParameter("bo_num"));
		String pageNum = request.getParameter("pageNum");
		
				
		// 글 조회수 1증가 -> DAO 1증가 메서드 호출
		noticeDAO dao = new noticeDAO();
		dao.updateReadcount(bo_num);
		
		System.out.println(" M : 조회수 1증가 완료! ");
		
		// 글 가져오기
		BoardDTO boDTO = dao.getNoticeDetail(bo_num);
		
		// request 영역에 글정보를 저장
		request.setAttribute("boDTO", boDTO);
		request.setAttribute("pageNum", pageNum);
		
		// 페이지 이동(준비)
		ActionForward forward = new ActionForward();
		forward.setPath("./notice/adminNoticeDetail.jsp");
		forward.setRedirect(false);
		
		return forward;


	}

}
