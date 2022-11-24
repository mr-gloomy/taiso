<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
<form>
	<h2>결제완료했습니다</h2>	
	<input type="hidden" name="mem_id" value="${sessionScope.mem_id }">
	<input type="button" value="메인으로 가기" onclick="location.href='./Reservation.jsp';">
	<input type="button" value="예약 확인하기" onclick="location.href='./ReservationListAction.rez?mem_id=${sessionScope.mem_id}';">
	<input type="button" value="메일 전송" onclick="location.href='./ReservationToMail.rez?mem_id=${sessionScope.mem_id}&pay_uqNum=${param.pay_uqNum }';">
<%-- 	<input type="button" value="카카오톡 공유" id="tokakao" onclick="location.href='./ReservationToKakao.rez?mem_id=${sessionScope.mem_id}&pay_uqNum?=${param.pay_uqNum }';"> --%>
	<input type="button" value="카카오톡 공유" id="tokakao">
</form>

<script type="text/javascript">
$(document).ready(function(){
	$("#tokakao").click(function(){
		alert('확인');
		$.ajax({
			url:"./ReservationToKakao.rez?mem_id=${sessionScope.mem_id}&pay_uqNum?=${param.pay_uqNum }",
			type:"post",
			success:function(data){
				alert('ajax성공');	
			}
		})
	})
});
</script>


</body>
</html>