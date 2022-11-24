<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
	<h2>결제완료했습니다</h2>	
	<h3>1 : ${param.pay_uqNum }</h3>
	<input type="hidden" name="mem_id" value="${sessionScope.mem_id }">
	<input type="button" value="메인으로 가기" onclick="location.href='./Reservation.jsp';">
	<input type="button" value="예약 확인하기" onclick="location.href='./ReservationListAction.rez?mem_id=${sessionScope.mem_id}';">
	<input type="button" value="메일 전송" onclick="location.href='./ReservationToMail.rez?mem_id=${sessionScope.mem_id}&pay_uqNum=${param.pay_uqNum }';">
	<input type="button" value="카카오톡 공유" onclick="location.href='./ReservationToKakao.rez?mem_id=${sessionScope.mem_id}&pay_uqNum?=${param.pay_uqNum }';">
</form>

</body>
</html>