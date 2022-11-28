<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- 블로그 로딩 코드 start -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
#waiting {
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    position: fixed;
    display: flex;
    background: white;
    z-index: 999;
    opacity: 0.9;
}
#waiting > img {
    display: flex;
    width: fit-content;
    height: fit-content;
    margin: auto;
}
</style>
<div id="waiting">
   <img src="./img/loading.gif">
</div>

<script type="text/javascript">
    $(window).on('load', function() {
        setTimeout(function(){
            $("#waiting").fadeOut();
        }, 300);
    });
</script>
<!-- 블로그 로딩 코드 end -->



<meta charset="UTF-8">
<title>타이소</title>
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
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