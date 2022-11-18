package com.taiso.notice.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.taiso.notice.db.BoardDTO;
import com.taiso.notice.db.noticeDAO;

public class AdminNoticeWriteAction implements Notice {

	@Override
	public NoticeForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminNoticeWriteAction_execute() 호출 ");
		
		// 1) 파일 업로드
		String realPath = request.getRealPath("./upload");
		System.out.println(" M : realPath : " + realPath);
		// 첨부파일 크기 지정 / 10MB
		int maxSize = 10 * 1024 * 1024;
		
		// 파일업로드 -> 파일업로드 객체 생성(MultipartRequest)
		MultipartRequest multi 
		        = new MultipartRequest(
		        		request,
		        		realPath,
		        		maxSize,
		        		"UTF-8",
		        		new DefaultFileRenamePolicy()
		        		);
		
		System.out.println(" M : 첨부파일 업로드 성공! "); 
		
		// 전달정보 (파라메터 저장)
		BoardDTO boDTO = new BoardDTO();
		
		boDTO.setBo_cate(multi.getParameter("bo_cate"));
		boDTO.setBo_title(multi.getParameter("bo_title"));
		boDTO.setBo_pass(multi.getParameter("bo_pass"));
		boDTO.setBo_content(multi.getParameter("bo_content"));
		boDTO.setBo_file(multi.getParameter("bo_file"));
		
		// BoardDAO 객체
		noticeDAO dao = new noticeDAO();
		// insertBoard()
		dao.insertBoard(boDTO);
		
		
		// 페이지 이동정보 생성(티켓 생성)
		NoticeForward forward = new NoticeForward();
		forward.setPath("./AdminNoticeList.nb");
		forward.setRedirect(true);
		
		return forward;
	
	}

}
