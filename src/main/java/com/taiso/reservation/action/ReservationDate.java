package com.taiso.reservation.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.reservation.action.ActionForward;
import com.taiso.car.db.CarDAO;
import com.taiso.car.db.CarDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationDate implements Action {

	@Override
	public com.taiso.reservation.action.ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : ReservationDate_execute() 호출");
		
		
		// 전달정보 저장
		String item = request.getParameter("item");
		
		if(item==null) {
			item = "all";
		}
		System.out.println(" M : item : "+item);
		
		CarDAO cDAO = new CarDAO();
		int cnt = cDAO.getCarCount();
		System.out.println(" M : 전체 차 대수 : " + cnt + "개");
//		
//		// 예약 일시 정보 저장
		ReservationDTO rezDTO = new ReservationDTO();
		
		
	    // 예약시간 정보 세션에 저장
        HttpSession session = request.getSession();
      
        session.setAttribute("rez_pick_date",request.getParameter("rez_pick_date"));
        session.setAttribute("rez_off_date",request.getParameter("rez_off_date"));
        session.setAttribute("rez_pick_time",request.getParameter("rez_pick_time"));
        session.setAttribute("rez_off_time",request.getParameter("rez_off_time"));
        session.setAttribute("rez_site",request.getParameter("rez_site"));
        session.setAttribute("rez_totalDate",request.getParameter("totalDate"));
      
        
        // 세션정보 DTO에 저장
		// 토탈계산 - totalDate 
        
        rezDTO.setMem_id((String)session.getAttribute("mem_id"));
        rezDTO.setRez_rentalDate((String)session.getAttribute("rez_pick_date"));
        rezDTO.setRez_returnDate((String)session.getAttribute("rez_off_date"));
        rezDTO.setRez_site((String)session.getAttribute("rez_site"));
        rezDTO.setRez_totalDate((String)session.getAttribute("rez_totalDate"));
        
        System.out.println("rezDTO.getRez_rentalDate : "+rezDTO.getRez_rentalDate()); // 제대로 담겼는지 확인용 나중에 삭제***
        System.out.println("rezDTO.getRez_returnDate : "+rezDTO.getRez_returnDate());
        System.out.println("rezDTO.getRez_totalDate : "+rezDTO.getRez_totalDate());
        System.out.println("rezDTO.getMem_id : "+rezDTO.getMem_id());
		
        
//		// DAO 객체 생성 - 예약정보저장 메서드 호출
//		ReservationDAO rezDAO = new ReservationDAO();
//		CarDTO carDTO = new CarDTO();
//		rezDAO.resevationSave(rezDTO,carDTO);
		
		/////////////////////////////////////////////////////////////////
		// 페이징 처리 (1)

		// 한 페이지에 보여줄 글의 개수
		int pageSize = 6;

		// 현 페이지가 몇페이지 인지 확인
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}

		// 시작행 번호 계산하기 1 11 21 31 41 .....
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;

		// 끝행 번호 계산하기 10 20 30 40 50.....
		int endRow = currentPage * pageSize;
		/////////////////////////////////////////////////////////////////

		////////////////////////////////////////////////////////////////////
		// 페이징 처리 (2)

		// 글이 있을 때

		// 총 페이지 = 글 개수(총량) / 페이지당 출력
		// => 만약에 나머지가 있을때 페이지 1개 추가

		// 전체 페이지수
		int pageCount = (cnt / pageSize) + (cnt % pageSize == 0 ? 0 : 1); // 0이면 0을, 아니면 1을 더한다

		// 한 화면에 보여줄 페이지수
		int pageBlock = 2;

		// 페이지블럭의 시작번호 1~10 => 1, 11~20 => 11 21~30 => 21
		int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
		// 페이지블럭의 끝번호
		int endPage = startPage + pageBlock - 1;

		if (endPage > pageCount) {
			endPage = pageCount;
		}
		
		// DB에 저장된 상품정보를 가져오기
		List carsList = cDAO.getCarList(startRow, pageSize, item, (String) session.getAttribute("rez_site"));
		
		
		System.out.println(" M : item, car_site : " + item + "," + session.getAttribute("rez_site"));

		// 연결된 view 페이지로 정보 전달
		request.setAttribute("carsList", carsList);

		// 페이징처리 정보 저장
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalCnt", cnt);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("pageBlock", pageBlock);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
		System.out.println(" M : pageNum : "+pageNum);
		System.out.println(" M : pageCount : "+pageCount);
		System.out.println(" M : pageBlock : "+pageBlock);
		System.out.println(" M : startPage : "+startPage);
		System.out.println(" M : endPage : "+endPage);
		

		//페이지 이동
		ActionForward forward = new ActionForward();
		forward.setPath("./car/carList.jsp");
		forward.setRedirect(false);
		return forward;
	}
}