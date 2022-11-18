<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
		function checkInfo(){
			alert('결제진행하기버튼클릭했음');
			
			window.close();
		}
	</script>
</head>
<body>
	<!-- RezInfoCheck.jsp -->
	
	<fieldset>
		<legend> [예약 정보 확인]</legend>
			<h3> ${param.Name } 님의 렌트 기간은 <br> ${param.totalDate } 입니다!</h3> <br>
			<label>차량정보 : ${ param.Op}</label> <br>
			<label>대여기간 : ${ param.RentalDate}</label> <br>
			<label>반납기간 : ${ param.ReturnDate}</label> <br>
			<label>대여/반납장소 : ${ param.Site}</label> <br>
			<label>최종결제금액 : ${ param.TotalCharge}</label> <br>
			
			<h3> 결제를 진행하시겠습니까? </h3>
			
			
			<input type="button" value="돌아가기" onclick="history.back();">
			
			<input type="button" value="결제진행하기" onclick="checkInfo();"> <!-- 아이디중복확인 winopen참고하기 -->
	</fieldset>
	
</body>
</html>