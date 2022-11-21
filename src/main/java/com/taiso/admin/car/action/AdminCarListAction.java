package com.taiso.admin.car.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.admin.car.db.AdminCarDAO;
import com.taiso.car.db.CarDAO;

public class AdminCarListAction implements AdminCar {

	@Override
	public AdminCarForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : AdminCarListAction_execute() 호출");
		
		// 세션제어(관리저여부)
//		HttpSession session = request.getSession();
//		String id = (String)session.getAttribute("id");
		// 전달정보 저장
		String item = request.getParameter("item");
		
		if(item==null) {
			item = "all";
		}
		System.out.println(" M : item : "+item);
		
		// 게시판 전체 글 개수 확인
		AdminCarDAO acDAO = new AdminCarDAO();
		int cnt = acDAO.getCarCount();
		System.out.println(" M : 전체 차 대수 : " + cnt + "개");
		
		/////////////////////////////////////////////////////////////////
		// 페이징 처리 (1)
		
		// 한 페이지에 보여줄 글의 개수
		int pageSize = 9;
		
		// 현 페이지가 몇페이지 인지 확인
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
		pageNum = "1";
		}
		
		//시작행 번호 계산하기 1 11 21 31 41 .....
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		
		//끝행 번호 계산하기 10 20 30 40 50.....
		int endRow = currentPage * pageSize;
		/////////////////////////////////////////////////////////////////
//		
		// DB에 저장된 상품정보를 가져오기
		List adminCarList = acDAO.getAdminCarList(startRow, pageSize, item);
		
		////////////////////////////////////////////////////////////////////
		// 페이징 처리 (2)
		
		// 글이 있을 때
		
		// 총 페이지 = 글 개수(총량) / 페이지당 출력
		//		=> 만약에 나머지가 있을때 페이지 1개 추가
		
		// 전체 페이지수
		int pageCount = (cnt/pageSize)+(cnt%pageSize==0? 0:1); // 0이면 0을, 아니면 1을 더한다
		
		// 한 화면에 보여줄 페이지수
		int pageBlock = 5;
		
		// 페이지블럭의 시작번호 1~10 => 1, 11~20 => 11   21~30 => 21
		int startPage = ((currentPage -1)/pageBlock)*pageBlock+1;
		// 페이지블럭의 끝번호
		int endPage = startPage+pageBlock-1;
		
		if(endPage > pageCount){
		endPage = pageCount;		
		}		
		// 상품정보를 request 영역에 저장
		request.setAttribute("adminCarList", adminCarList);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalCnt", cnt);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("pageBlock", pageBlock);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
		AdminCarForward forward = new AdminCarForward();
		// 페이지 이동(./center/adminCarList.jsp.jsp)
		forward.setPath("./adminCar/adminCarList.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
