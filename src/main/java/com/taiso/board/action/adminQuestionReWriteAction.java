package com.taiso.board.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;

public class adminQuestionReWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : QuestionReWriteAction_execute 호출");
	
		// 1) 파일 업로드 
		
		ServletContext CTX = request.getServletContext();
		String realPath = CTX.getRealPath("/upload");
		System.out.println(" M : realPath : "+realPath);
		int maxSize = 10 * 1024 * 1024;
		
		// 2) 파일업로드 객체 생성(MultipartRequest)
		MultipartRequest multi
				= new MultipartRequest(
						request,
						realPath,
						maxSize,
						"UTF-8",
						new DefaultFileRenamePolicy()
						);
		
		System.out.println(" M : 첨부파일 업로드 성공! ");
		
		// 전달 데이터 저장(pageNum, bo_num, re_ref, re_lev, 
		//	re_seq, bo_cate, bo_title, mem_id, bo_content, bo_pass)
		String pageNum = multi.getParameter("pageNum");
		BoardDTO bodto = new BoardDTO();	
		
		bodto.setBo_num(Integer.parseInt(multi.getParameter("bo_num")));
		bodto.setBo_re_ref(Integer.parseInt(multi.getParameter("bo_re_ref")));
		bodto.setBo_re_lev(Integer.parseInt(multi.getParameter("bo_re_lev")));
		bodto.setBo_re_seq(Integer.parseInt(multi.getParameter("bo_re_seq")));
		bodto.setBo_title(multi.getParameter("bo_title"));
		bodto.setBo_cate(multi.getParameter("bo_cate"));
		bodto.setBo_title(multi.getParameter("bo_title"));
		bodto.setMem_id(multi.getParameter("mem_id"));
		bodto.setBo_content(multi.getParameter("bo_content"));
		bodto.setBo_pass(multi.getParameter("bo_pass"));
		
		//DAO 객체 생성
		BoardDAO bodao = new BoardDAO();
		bodao.reInsertQuestion(bodto);
		System.out.println(bodto);
		System.out.println(pageNum+"@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		
		// 페이지 이동(정보 저장)
		ActionForward forward = new ActionForward();
		forward.setPath("./QuestionList.bo?pageNum="+pageNum);
		forward.setRedirect(true);
			return forward;
		}

}
