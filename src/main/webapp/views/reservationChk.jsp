<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.1/kakao.min.js"
  integrity="sha384-eKjgHJ9+vwU/FCSUG3nV1RKFolUXLsc6nLQ2R1tD0t4YFPCvRmkcF8saIfOZNWf/" crossorigin="anonymous"></script>

</head>
<body>
<form>
	<c:set var="mDTO" value="${mDTO }"/>
	<c:set var="rezDTO" value="${rezDTO }"/>
	<h2>결제가 완료되었습니다</h2>
	
	<input type="hidden" name="mem_id" value="${sessionScope.mem_id }">
	<input type="button" value="메인으로 가기" onclick="location.href='./Reservation.jsp';">
	<input type="button" value="예약 확인하기" onclick="location.href='./ReservationListAction.rez?mem_id=${sessionScope.mem_id}';">
	<input type="button" value="메일 전송" onclick="location.href='./ReservationToMail.rez?mem_id=${sessionScope.mem_id}&pay_uqNum=${param.pay_uqNum }';">
<!-- 	<input type="button" value="카카오톡 공유" id="tokakao"> -->
	<a id="kakaotalk-sharing-btn" href="javascript:;">
	  <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
	    alt="카카오톡 공유 보내기 버튼" />
	</a>
</form>

<script>
  Kakao.init('4f2b3314b4b648f582b93600574cd923'); // JS키
  
  Kakao.Share.createCustomButton({
	  container: '#kakaotalk-sharing-btn',
	  templateId: ${86235},
	  templateArgs: {
		"mem_id":'${sessionScope.mem_id}',
		"rental_date":'${rezDTO.rez_rentalDate}',
		"return_date":'${rezDTO.rez_returnDate}',
		"rez_site":'${rezDTO.rez_site}',
		"car_name":'${rezDTO.car_name}'
	  }
  });
</script>


</body>
</html>