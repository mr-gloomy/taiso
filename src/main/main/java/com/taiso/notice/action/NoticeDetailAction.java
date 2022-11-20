package com.taiso.notice.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import com.taiso.notice.db.BoardDTO;
import com.taiso.notice.db.noticeDAO;

public class NoticeDetailAction implements Notice {

	@Override
	public NoticeForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : NoticeDetailAction_execute() 호출");
		
		// 전달정보(파라메터) 저장
		int bo_num = Integer.parseInt(request.getParameter("bo_num"));
		String pageNum = request.getParameter("pageNum");
		
				
		noticeDAO dao = new noticeDAO();
		// 글 조회수 1증가 -> DAO 1증가 메서드 호출
		dao.updateReadcount(bo_num);
		
		System.out.println(" M : 조회수 1증가 완료! ");
		
		// 글 가져오기
		BoardDTO boDTO = dao.getNoticeDetail(bo_num);
		
		// request 영역에 글정보를 저장
		request.setAttribute("boDTO", boDTO);
		request.setAttribute("pageNum", pageNum);
		
		// 페이지 이동(준비)
		NoticeForward forward = new NoticeForward();
		forward.setPath("./notice/noticeDetail.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
