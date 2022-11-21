package com.taiso.review.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.taiso.review.db.ReviewDAO;
import com.taiso.review.db.ReviewDTO;

public class ReviewWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("ReviewWriteAction_execute() 호출");
		
//		// 세션 제어 (id)
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		int rez_uqNum = (int) session.getAttribute("rez_uqNum");
		
		ActionForward forward = new ActionForward();
//		if(mem_id == null) {
//			forward.setPath("로그인 안 했을 때 이동할 주소");
//			forward.setRedirect(true);
//			return forward;
//		}
		
		// 1) upload 폴더 생성 (가상의 업로드 경로)
		// 파일이 저장되는 실제 경로(tomcat - 서버)
		request.getRealPath(null);
		ServletContext CTX = request.getServletContext();
		String realPath = CTX.getRealPath("/upload");
		System.out.println("M : realPath : " + realPath);
		
		// 2) 업로드 크기 제어 (10MB)
		int maxSize = 10 * 1024 * 1024;
		// 3) 라이브러리 설치 (cos.jar)
		// 4) MultipartRequest 객체 생성(업로드)
		MultipartRequest multi = new MultipartRequest(
				request,
				realPath,
				maxSize,
				"UTF-8",
				new DefaultFileRenamePolicy()
				);
		
		System.out.println("M : 첨부파일 업로드 완료");
		
		// DTO 생성
		ReviewDTO rDTO = new ReviewDTO();
		
		// 그러면 마이페이지에서 리뷰 작성으로 넘길 때 주소줄에 회원 정보 받아오기?

		rDTO.setRez_uqNum(rez_uqNum);
		rDTO.setMem_id(mem_id);
		rDTO.setRev_subject(multi.getParameter("rev_subject"));
		rDTO.setRev_content(multi.getParameter("rev_content"));
		rDTO.setRev_image(multi.getParameter("rev_image"));
		rDTO.setRev_star(Integer.parseInt(multi.getParameter("rev_star")));
		String img = multi.getFilesystemName("rev_image");
		rDTO.setRev_image(img);
		
		System.out.println(rDTO);
		
		ReviewDAO rDAO = new ReviewDAO();
		rDAO.insertReview(rDTO);
		
		// 페이지 이동
		
		forward.setPath("./review/reviewList.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
