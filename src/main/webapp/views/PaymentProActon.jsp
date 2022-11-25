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
	<input type="hidden" name="mem_id" value="${sessionScope.mem_id }">
	<input type="button" value="메인으로 가기" onclick="location.href='./Reservation.jsp';">
	<input type="button" value="예약 확인하기" onclick="location.href='./ReservationList.rez?mem_id=${sessionScope.mem_id}';">
</form>

</body>
</html>