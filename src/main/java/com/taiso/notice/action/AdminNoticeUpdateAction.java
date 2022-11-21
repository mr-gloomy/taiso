package com.taiso.notice.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.taiso.notice.db.BoardDTO;
import com.taiso.notice.db.noticeDAO;

public class AdminNoticeUpdateAction implements Notice {

	@Override
	public NoticeForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminNoticeUpdateAction_execute() 호출 ");
		
		// 전달정보 저장
		int bo_num = Integer.parseInt(request.getParameter("bo_num"));
		String pageNum = request.getParameter("pageNum");
		
		// BoardDAO 객체생성
		noticeDAO dao = new noticeDAO();
		
		// 수정된 글번호
		BoardDTO boDTO = dao.getNoticeDetail(bo_num);
		
		// request 영역에 저장
		request.setAttribute("boDTO", boDTO);
		request.setAttribute("pageNum", pageNum);
		
		// 페이지 이동
		NoticeForward forward = new NoticeForward();
		forward.setPath("./notice/adminNoticeUpdate.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
