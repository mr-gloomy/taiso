package com.taiso.payment.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.payment.db.PaymentDAO;
import com.taiso.payment.db.PaymentDTO;

public class PaymentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" m : PaymentAction_execute() 호출");
		

		// imp_uid로 아임포트 서버에서 결제정보 받아와야하나...만약 한다면
			// 1. 엑세스 토큰 발급받기
			// 2. 결제정보 조회
		
//        try {
//            
//            JSONParser jsonParse = new JSONParser();
//            
//            //JSONParse에 json데이터를 넣어 파싱한 다음 JSONObject로 변환한다.
//            JSONObject jsonObj = (JSONObject) jsonParse.parse("imp_uid");
//            
//            //JSONObject에서 PersonsArray를 get하여 JSONArray에 저장한다.
//            JSONArray personArray = (JSONArray) jsonObj.get("Persons");
//            
//            for(int i=0; i < personArray.size(); i++) {
//                System.out.println("======== person : " + i + " ========");
//                JSONObject personObject = (JSONObject) personArray.get(i);
//                
//                System.out.println(personObject.get("name"));
//                System.out.println(personObject.get("age"));
//            }
//            
//            JSONArray booksArray = (JSONArray) jsonObj.get("Books");
//            for(int i=0; i < booksArray.size(); i++) {
//                System.out.println("======== person : " + i + " ========");
//                JSONObject bookObject = (JSONObject) booksArray.get(i);
//                
//                System.out.println(bookObject.get("name"));
//                System.out.println(bookObject.get("price"));
//            }
//            
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
		
		// ajax response... 이게머꼬
		String merchant_uid = request.getParameter("merchant_uid");
		System.out.println("@@@@@@@@ merchant_uid : "+merchant_uid);
		System.out.println("@@@@@@@@ pay_uqNum : "+request.getParameter("pay_uqNum"));
		System.out.println("@@@@@@@@ pay_total : "+Integer.parseInt(request.getParameter("pay_total")));
		System.out.println("@@@@@@@@ pay_method : "+request.getParameter("pay_method"));
		System.out.println("@@@@@@@@ pay_status : "+request.getParameter("pay_status"));
		
		
		PaymentDTO payDTO = new PaymentDTO();
//		payDTO.setPay_uqNum(Integer.parseInt(request.getParameter("pay_uqNum")));			// 결제번호(카드승인번호)
		payDTO.setPay_total(Integer.parseInt(request.getParameter("pay_total")));			// 총 결제금액
		payDTO.setPay_method(request.getParameter("pay_method"));	// 결제방식
		payDTO.setPay_status(request.getParameter("pay_status"));	// 결제상태
		payDTO.setRez_uqNum(Integer.parseInt(request.getParameter("rez_uqNum")));	
		// 주문번호(예약번호)
		System.out.println("payDTO : "+payDTO);
		// 결제 정보 db에 저장
//		ReservationDAO rezDAO = new ReservationDAO();
		PaymentDAO payDAO = new PaymentDAO();
		payDAO.addOrder(payDTO);
		System.out.println(" [M] 결제정보 DB 저장 완료");
		
		// 다시 결제 페이지로 돌아가기 or
		
		// 결제 확인 페이지로 이동... 하고싶은데 안되고 똑같이 requestPay()의 alert만 출력됨ㅜㅜ
//        ActionForward forward = new ActionForward();
//        forward.setPath("./PaymentTest.pay");
//        forward.setRedirect(false);
//		return forward;
		return null;
	}

}
