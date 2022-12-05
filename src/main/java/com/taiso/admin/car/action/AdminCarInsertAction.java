package com.taiso.admin.car.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.taiso.admin.car.db.AdminCarDAO;
import com.taiso.car.db.CarDTO;

public class AdminCarInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : AdminCarAddAction_execute() 호출 ");
		
	// 한글처리(생략)
		
		// 첨부파일
		//  1) upload 폴더 생성(가상의 업로드 경로)
		//  파일이 저장되는 실제경로(tomcat-서버)
//		request.getRealPath("");
		ServletContext CTX = request.getServletContext();
		String realPath = CTX.getRealPath("/upload");
		System.out.println(" M : realPath : " + realPath);
		
	//  2) 업로드 크기제어 ( 10 MB )
			int maxSize = 10 * 1024 * 1024;
			//  3) 라이브러리 설치 (cos.jar)
			//  4) MultipartRequest 객체 생성(업로드)
			MultipartRequest multi 
					= new MultipartRequest(
							request,
							realPath,
							maxSize,
							"UTF-8",
							new DefaultFileRenamePolicy()
							);
			
			System.out.println(" M : 첨부파일 업로드 완료! ");
		
			// 전달정보 저장(DTO)
			// 폼태그 -> DTO
			CarDTO carDTO = new CarDTO();
		
			carDTO.setCar_category(multi.getParameter("car_category"));
			carDTO.setCar_name(multi.getParameter("car_name"));
			carDTO.setCar_op(multi.getParameter("car_op"));
			carDTO.setCar_price(Integer.parseInt(multi.getParameter("car_price")));
			carDTO.setCar_year(Integer.parseInt(multi.getParameter("car_year")));
			carDTO.setCar_brand(multi.getParameter("car_brand"));
			carDTO.setCar_fuel(multi.getParameter("car_fuel"));
			carDTO.setCar_site(multi.getParameter("rez_site"));
			String img = multi.getFilesystemName("car_file");
			
			carDTO.setCar_file(img);
			
			// DAO - 상품등록메서드
			AdminCarDAO acDAO = new AdminCarDAO();
			
			// 상품등록메서드 - insertCar(DTO)
			acDAO.insertCar(carDTO);
			
			// 페이지 이동
			ActionForward forward = new ActionForward();
			forward.setPath("./AdminCarList.ad");
			forward.setRedirect(true);
			
			return forward;
	}

}
