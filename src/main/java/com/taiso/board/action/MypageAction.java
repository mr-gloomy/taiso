package com.taiso.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;
import com.taiso.member.db.MemberDAO;

public class MypageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MypageAction_execute 호출 ");

		
		// 세션에 아이디 저장 
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
//		
		ActionForward forward = new ActionForward();
		System.out.println(mem_id);
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		// 로그인제어(로그인화면으로)
		
		if(mem_id==null) {
			out.print("<script>");
			out.print("alert('로그인이 필요합니다!');");
//			out.print("swal(\"Good job!\", \"You clicked the button!\", \"success\")");
			out.print(" location.href='./MemberLogin.me'; ");
			out.print("</script>");
			out.close();
			return null;
		}
		
		
		
	/** -----------------JS----------------------------- */
//		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		
//		if(mem_id==null) {
//			out.print("<script>");
//			out.print("alert('수정 완료!');");
//			out.print(" location.href='./QuestionList.bo'; ");
//			out.print("</script>");
//			out.close();
//			
//			return null;				
//		}
	//		if(mem_id==null) {
//			if(document.fr.bo_pass.value==""){
//				Swal.fire({
//	                icon: 'warning',
//	                /* title: '내용을 입력하세요!', */
//	                text: '내용을 입력하세요!',
//	            });
//				document.fr.bo_pass.focus();
//				return;
//			}
//			forward.setPath("./MemberLogin.me");
//			forward.setRedirect(true);
//			
//			return forward;
//		}	
	/** -----------------JS----------------------------- */		

		// 전달정보저장(닉네임)
		MemberDAO mDAO = new MemberDAO();
		com.taiso.member.db.MemberDTO mDTO = new com.taiso.member.db.MemberDTO();
		mDTO = mDAO.getMember(mem_id);
		System.out.println(mDTO);
		
		request.setAttribute("mDTO",mDTO);
		
		//전달정보저장
		BoardDAO bodao = new BoardDAO();
		BoardDTO bodto = new BoardDTO();
		int myqnacnt = bodao.getMyqnacnt(mem_id);
		int myreviewcnt = bodao.getMyreviewcnt(mem_id);
		
		System.out.println(myqnacnt);
		System.out.println(myreviewcnt);
		request.setAttribute("myqnacnt", myqnacnt);
		request.setAttribute("myreviewcnt", myreviewcnt);
		
		// 페이지이동
		forward.setPath("./board/mypage.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}

