package com.taiso.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;

public class QuestionUpdateProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("QuestionUpdateProAction_execute 호출!");
		
		BoardDTO bodto = new BoardDTO();
		bodto.setBo_num(Integer.parseInt(request.getParameter("bo_num")));
//		bodto.setMem_id(request.getParameter("mem_id"));
		bodto.setBo_cate(request.getParameter("bo_cate"));
		bodto.setBo_title(request.getParameter("bo_title"));
		bodto.setBo_pass(request.getParameter("bo_pass"));
		bodto.setBo_content(request.getParameter("bo_content"));
		bodto.setBo_file(request.getParameter("bo_file"));
		
		String pageNum = request.getParameter("pageNum");
		
		// DB에 가서 수정
		BoardDAO dao = new BoardDAO();
		int result = dao.UpdateQuestion(bodto);
		
		System.out.println(" M : 수정완료 "+result);
		
		// 페이지 이동 (컨트롤러 X => 티켓 생성X) 
		// JS 사용 페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		// => 응답페이지의 형태를 html 형태로 사용하겠다는 뜻 
		
		PrintWriter out = response.getWriter();
		// 글을 쓸 수 있게 해 주는 객체 즉,output String의 일종 
		// => 응답페이지로 출력하는 통로를 준비하겠다

		if(result == 1) {
			// 이제 출력해보자 html, 즉 JS코드를 쓸 수 있게 되었다! 
//			out.print("<h1>안녕 테스트</h1>");
			out.print("<script>");
			out.print("alert('수정 완료!');");
			out.print(" location.href='./QuestionList.bo'; ");
			out.print("</script>");
			out.close();
			
			return null; // 더이상 실행없이 컨트롤러로 전달		
			
		}else if(result == 0){
			out.print("<script>");
			out.print(" alert('비밀번호 오류!! 수정 X'); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null; 
			
		}else { //result == -1
			out.print("<script>");
			out.print(" alert('게시판 글 없음!! 수정 X'); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;
		}

	}

}
