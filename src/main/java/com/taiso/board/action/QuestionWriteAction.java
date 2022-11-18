package com.taiso.board.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;

public class QuestionWriteAction implements Board {

	@Override
	public BoardForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println( " M : QuestionWriteAction_execute 호출! ");
	
		// 1) 파일 업로드
		// 업로드 가상폴더 생성 /upload
		// 첨부파일 크기 지정 / 10MB
		
		ServletContext CTX = request.getServletContext();
		String realPath = CTX.getRealPath("/upload");
		System.out.println(" M : realPath : "+realPath);
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
		
		// 전달정보 (파라미터 저장)
		BoardDTO bodto = new BoardDTO();
//		bodto.setBo_num(Integer.parseInt(request.getParameter("bo_num")));
//		bodto.setBo_re_ref(Integer.parseInt(request.getParameter("bo_re_ref")));
//		bodto.setBo_re_lev(Integer.parseInt(request.getParameter("bo_re_lev")));
//		bodto.setBo_re_seq(Integer.parseInt(request.getParameter("bo_re_seq")));
		bodto.setMem_id(multi.getParameter("mem_id"));
		bodto.setBo_cate(multi.getParameter("bo_cate"));
		bodto.setBo_title(multi.getParameter("bo_title"));
		bodto.setBo_pass(multi.getParameter("bo_pass"));
		bodto.setBo_content(multi.getParameter("bo_content"));
		bodto.setBo_file(multi.getFilesystemName("bo_file"));
//		bodto.setSysdate(null)

		
		// BoardDAO 객체
		BoardDAO bodao = new BoardDAO();
		
		// insertBoard()
		bodao.insertQuestion(bodto);
		
		// 페이지 이동정보 생성(티켓 생성) 
		BoardForward forward = new BoardForward();
		forward.setPath("./QuestionList.bo");
		forward.setRedirect(true);
		
		return forward;
	}

}
