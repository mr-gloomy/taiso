<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

<script type="text/javascript">

function chk(){
	
    var f = document.thisForm;
    
    if(f.mem_accept_sns.checked !== true) {
        alert('약관동의에 체크해주세요.');
        
    }
}

</script>
</head>

  <body>
	
  	<!-- 헤더 시작 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
  	<!-- 헤더 끝-->
	
	<!-- 중간제목 시작 -->
	<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> 
						<span>Contact <i class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">Contact Us</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- 중간제목 끝 -->

	<!-- 본문 시작 -->
	<section class="ftco-section contact-section">
		<div class="formbold-main-wrapper">
			<!-- Author: FormBold Team -->
			<!-- Learn More: https://formbold.com -->
			
			<div class="formbold-form-wrapper">
				<div class="formbold-event-wrapper">
				
					<div class="formbold-form-title">
						<h3>회원탈퇴</h3>
					</div>

				<form>
				
					<div class="formbold-event-details">
					<h5> <i class='fas fa-exclamation-triangle' style='font-size: 20px; color: red'></i> 
						 &nbsp 회원탈퇴 전, 유의사항을 확인해주시기 바랍니다. </h5>

						<ul>
							<li>유의사항 입니다 유의사항 입니다 유의사항 입니다 유의사항 입니다 유의사항 입니다 유의사항 입니다
								유의사항 입니다 유의사항 입니다 유의사항 입니다 유의사항 입니다 유의사항 입니다 유의사항 입니다 유의사항 입니다
								유의사항 입니다 유의사항 입니다 유의사항 입니다 유의사항 입니다 유의사항 입니다 유의사항 입니다 유의사항 입니다
							</li>
						</ul>
					</div>

					<div class="formbold-event-details">
						<h5> <i class='fas fa-edit' style='font-size: 20px; color: green'></i>
							&nbsp 회원탈퇴 사유를 선택해 주시기 바랍니다. </h5>
								
							<ol>
								<div class="formbold-mb-5">
								<div class="formbold-radio-flex">
									<div class="formbold-radio-group">
										<label class="formbold-radio-label"> 
											<input class="formbold-input-radio" type="radio" name="qusOne" id="qusOne" /> 회원탈퇴 사유 1 
											<span class="formbold-radio-checkmark"></span>
										</label>
									</div>

									<div class="formbold-radio-group">
										<label class="formbold-radio-label"> 
											<input class="formbold-input-radio" type="radio" name="qusOne" id="qusOne" /> 회원탈퇴 사유 2 
											<span class="formbold-radio-checkmark"></span>
										</label>
									</div>

									<div class="formbold-radio-group">
										<label class="formbold-radio-label"> 
											<input class="formbold-input-radio" type="radio" name="qusOne" id="qusOne" /> 회원탈퇴 사유 3 
											<span class="formbold-radio-checkmark"></span>
										</label>
									</div>

									<div class="formbold-radio-group">
										<label class="formbold-radio-label"> 
											<input class="formbold-input-radio" type="radio" name="qusOne" id="qusOne" /> 회원탈퇴 사유 4 
											<span class="formbold-radio-checkmark"></span>
										</label>
									</div>
									
									<div class="formbold-radio-group">
										<label class="formbold-radio-label"> 
											<input class="formbold-input-radio" type="radio" name="qusOne" id="qusOne" /> 회원탈퇴 사유 5 
											<span class="formbold-radio-checkmark"></span>
										</label>
									</div>
									
								</div>
							</div>
						</ol>
					</div>
					</form>

					<form action="./MemberRemovePw.me"  method="post" name="thisForm">
					
					<div class="formbold-checkbox-wrapper">
						<label for="supportCheckbox" class="formbold-checkbox-label">
							<div class="formbold-relative">
								<input type="checkbox" name="mem_accept_sns" id="supportCheckbox" class="formbold-input-checkbox" />
							
							<div class="formbold-checkbox-inner">
								<span class="formbold-opacity-0"> 
								<svg width="11" height="8" viewBox="0 0 11 8" class="formbold-stroke-current" fill="none" xmlns="http://www.w3.org/2000/svg">
                				<path d="M8.81868 0.688604L4.16688 5.4878L2.05598 3.29507C1.70417 2.92271 1.1569 2.96409 0.805082 3.29507C0.453266 3.66742 0.492357 4.24663 0.805082 4.61898L3.30689 7.18407C3.54143 7.43231 3.85416 7.55642 4.16688 7.55642C4.47961 7.55642 4.79233 7.43231 5.02688 7.18407L10.0696 2.05389C10.4214 1.68154 10.4214 1.10233 10.0696 0.729976C9.71776 0.357624 9.17049 0.357625 8.81868 0.688604Z" fill="white" />
                				</svg>
								</span>
							</div>
							</div> 회원탈퇴 약관을 모두 확인했습니다.

						</label>
						<button type="submit" class="formbold-btn" onclick="chk();">탈퇴하기</button>
						<input type="hidden" name="mem_id" id="mem_id" value="${sessionScope.mem_id}" />
					</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- 본문 끝 -->
	
<!-- 본문 css -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Inter', sans-serif;
}

.formbold-main-wrapper {
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 48px;
}

.formbold-form-wrapper {
	margin: 0 auto;
	max-width: 800px;
	width: 100%;
	background: white;
}

.formbold-event-wrapper span {
	font-weight: 500;
	font-size: 16px;
	line-height: 24px;
	letter-spacing: 2.5px;
	color: #6a64f1;
	display: inline-block;
}

.formbold-event-wrapper h3 {
	font-weight: 700;
	font-size: 28px;
	line-height: 34px;
	color: #07074d;
	width: 60%;
	margin-bottom: 15px;
}

.formbold-event-wrapper h4 {
	font-weight: 600;
	font-size: 20px;
	line-height: 24px;
	color: #07074d;
	width: 60%;
	margin: 25px 0 15px;
}

.formbold-event-wrapper p {
	font-size: 16px;
	line-height: 24px;
	color: #536387;
}

.formbold-event-details {
	background: #fafafa;
	border: 1px solid #dde3ec;
	border-radius: 5px;
	margin: 25px 0 30px;
}

.formbold-event-details h5 {
	color: #07074d;
	font-weight: 600;
	font-size: 16px;
	line-height: 24px;
	padding: 8px 20px;
	margin-top: 10px
}

.formbold-event-details ul {
	border-top: 1px solid #edeef2;
	padding: 20px;
	margin: 0;
	list-style: none;
	display: flex;
	flex-wrap: wrap;
	row-gap: 14px;
}

.formbold-event-details ul li {
	color: #536387;
	font-size: 12px;
	line-height: 24px;
	width: 100%;
	display: flex;
	align-items: center;
	gap: 10px;
}

.formbold-event-details ol {
	border-top: 1px solid #edeef2;
	padding: 40px;
	margin: 0;
	list-style: none;
	display: flex;
	flex-wrap: wrap;
	row-gap: 14px;
	line-height: 35px;
	font-size: 14px;
}

.formbold-form-title {
	color: #07074d;
	font-weight: 600;
	font-size: 28px;
	line-height: 35px;
	width: 60%;
	margin-bottom: 30px;
}

.formbold-input-flex {
	display: flex;
	gap: 20px;
	margin-bottom: 15px;
}

.formbold-input-flex>div {
	width: 50%;
}

.formbold-form-input {
	text-align: center;
	width: 100%;
	padding: 13px 22px;
	border-radius: 5px;
	border: 1px solid #dde3ec;
	background: #ffffff;
	font-weight: 500;
	font-size: 16px;
	color: #536387;
	outline: none;
	resize: none;
}

.formbold-form-input:focus {
	border-color: #6a64f1;
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-form-label {
	color: #536387;
	font-size: 14px;
	line-height: 24px;
	display: block;
	margin-bottom: 10px;
}

.formbold-policy {
	font-size: 14px;
	line-height: 24px;
	color: #536387;
	width: 70%;
	margin-top: 22px;
}

.formbold-policy a {
	color: #6a64f1;
}

.formbold-btn {
	text-align: center;
	width: 100%;
	font-size: 16px;
	border-radius: 5px;
	padding: 14px 25px;
	border: none;
	font-weight: 500;
	background-color: #1089FF;
	color: white;
	cursor: pointer;
	margin-top: 25px;
}

.formbold-btn:hover {
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-img {
	margin-bottom: 40px;
}

.formbold-input-flex {
	display: flex;
	gap: 20px;
	margin-bottom: 30px;
}

.formbold-input-flex>div {
	width: 50%;
}

.formbold-form-input {
	width: 100%;
	padding: 13px 22px;
	border-radius: 5px;
	border: 1px solid #dde3ec;
	background: #ffffff;
	font-weight: 500;
	font-size: 16px;
	color: #536387;
	outline: none;
	resize: none;
}

.formbold-form-input:focus {
	border-color: #6a64f1;
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-form-label {
	color: #536387;
	font-weight: 500;
	font-size: 14px;
	line-height: 24px;
	display: block;
	margin-bottom: 10px;
}

#supportCheckbox:checked ~ div span {
	opacity: 1;
}

#supportCheckbox:checked ~ div {
	background: #1089FF;
	border-color: #1089FF;
}

.formbold-checkbox-label {
	display: flex;
	cursor: pointer;
	user-select: none;
	font-size: 16px;
	line-height: 24px;
	color: #536387;
}

.formbold-checkbox-label a {
	margin-left: 5px;
	color: #1089FF;
}

.formbold-input-checkbox {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	white-space: nowrap;
	border-width: 0;
}

.formbold-checkbox-inner {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 20px;
	height: 20px;
	margin-right: 14px;
	margin-top: 2px;
	border: 0.7px solid #dde3ec;
	border-radius: 3px;
}

.formbold-form-title {
	margin-bottom: 40px;
}

.formbold-form-title h3 {
	color: #07074D;
	font-weight: 700;
	font-size: 35px;
	line-height: 35px;
	margin-bottom: 70px;
	margin-left: 10px
}
</style>
<!-- 본문 css -->

<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 끝 -->

	<!-- loader -->
	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px"> 
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
		</svg>
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>