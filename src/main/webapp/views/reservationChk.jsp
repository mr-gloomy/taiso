<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>타이소</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />

<link rel="stylesheet" href="./css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="./css/animate.css">

<link rel="stylesheet" href="./css/owl.carousel.min.css">
<link rel="stylesheet" href="./css/owl.theme.default.min.css">
<link rel="stylesheet" href="./css/magnific-popup.css">

<link rel="stylesheet" href="./css/aos.css">

<link rel="stylesheet" href="./css/ionicons.min.css">

<link rel="stylesheet" href="./css/bootstrap-datepicker.css">
<link rel="stylesheet" href="./css/jquery.timepicker.css">

<link rel="stylesheet" href="./css/flaticon.css">
<link rel="stylesheet" href="./css/icomoon.css">
<link rel="stylesheet" href="./css/style.css">


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

<style>
.mainicon:before {
    content: "\f1b9";
    font-family: FontAwesome;
    line-height: 1;
    font-size:50px;
    color:#F8F9FA;
     -webkit-font-smoothing: antialiased;
     -moz-osx-font-smoothing: grayscale;
}
.listicon:before {
    content: "\f03a";
    font-family: FontAwesome;
    line-height: 1;
    font-size:40px;
    color:#F8F9FA;
     -webkit-font-smoothing: antialiased;
     -moz-osx-font-smoothing: grayscale;
}
.mailicon:before {
    content: "\f0e0";
    font-family: FontAwesome;
    line-height: 1;
    font-size:40px;
    color:#F8F9FA;
     -webkit-font-smoothing: antialiased;
     -moz-osx-font-smoothing: grayscale;
}
.kakaoicon:before {
    content: "\f064";
    font-family: FontAwesome;
    line-height: 1;
    font-size:50px;
    color:#F8F9FA;
     -webkit-font-smoothing: antialiased;
     -moz-osx-font-smoothing: grayscale;
}
</style>

</head>
<body>
	<c:set var="mDTO" value="${mDTO }"/>
	<c:set var="rezDTO" value="${rezDTO }"/>
<%-- 	${mDTO} --%>
	<div class="test"></div>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<span class="subheading" style="font-size: 23px;">결제가
						완료되었습니다</span>
					<h2 class="mb-3">주문해 주셔서 감사합니다</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<a href='./ReservationMain.rez'>
					<div class="services services-2 w-100 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<div class="mainicon"></div>
						</div>
						<div class="text w-100">
							<h3 class="heading mb-2">메인으로 이동</h3>
						</div>
					</div></a>
				</div>
				<div class="col-md-3">
					<a href='./ReservationList.rez?mem_id=${sessionScope.mem_id}'>
					
					<div class="services services-2 w-100 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<div class="listicon"></div>
						</div>
						<div class="text w-100">
							<h3 class="heading mb-2">예약목록 조회</h3>
						</div>
					</div></a>
				</div>
				<div class="col-md-3">
					<a href='./ReservationToMail.rez?mem_id=${sessionScope.mem_id}&pay_uqNum=${param.pay_uqNum }'>
					<div class="services services-2 w-100 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<div class="mailicon"></div>
						</div>
						<div class="text w-100">
							<h3 class="heading mb-2">메일 전송</h3>
						</div>
					</div></a>
				</div>
				<div class="col-md-3">
					<a id="kakaotalk-sharing-btn">
					<div class="services services-2 w-100 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<div class="kakaoicon"></div>
						</div>
						<div class="text w-100">
							<h3 class="heading mb-2">카카오톡 공유</h3>
						</div>
					</div></a>
				</div>
			</div>
		</div>
	</section>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.1/kakao.min.js"
  integrity="sha384-eKjgHJ9+vwU/FCSUG3nV1RKFolUXLsc6nLQ2R1tD0t4YFPCvRmkcF8saIfOZNWf/" crossorigin="anonymous"></script>

<script>
  Kakao.init('4f2b3314b4b648f582b93600574cd923'); // JS키
</script>
  
  <!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <script type="text/javascript">
  $(document).ready(function(){
		$('#kakaotalk-sharing-btn').click(function(){
			  Kakao.Share.createCustomButton({
				  container: '#kakaotalk-sharing-btn',
				  templateId: ${86235},
				  templateArgs: {
					"mem_name":'${mDTO.mem_name}',
					"rental_date":'${rezDTO.rez_rentalDate}',
					"return_date":'${rezDTO.rez_returnDate}',
					"rentTime":'${rezDTO.rez_rentTime}',
					"rez_site":'${rezDTO.rez_site}',
					"car_name":'${rezDTO.car_name}'
				  }
			  });
		});
	});
</script>

</body>
</html>