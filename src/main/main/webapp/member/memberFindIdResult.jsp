<%@page import="org.apache.commons.collections4.bag.SynchronizedSortedBag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
				<div class="formbold-form-title">
					<h3>아이디 찾기</h3>
					<p>회원님의 아이디는 다음과 같습니다.</p>
				</div>

				<form action="./MemberFindIdAction.me" method="POST">
					<input type="text" name="mem_id" id="mem_id" value="${mDTO.mem_id}" class="formbold-form-input" readonly />

					<button type="button" class="formbold-btn" onclick="location.href='./MemberLogin.me'">로그인</button>
				</form>
			</div>
		</div>
	</section>
	<!-- 본문 끝 -->


<!-- 본문 css -->
<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: "Inter", sans-serif;
}

.formbold-main-wrapper {
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 48px;
}

.formbold-form-wrapper {
	margin: 0 auto;
	max-width: 550px;
	width: 100%;
	background: white;
}

.formbold-form-title {
	margin-bottom: 40px;
}

.formbold-form-title h3 {
	color: #07074D;
	font-weight: 700;
	font-size: 28px;
	line-height: 35px;
	text-align: center;
	margin-bottom: 20px;
}

.formbold-form-title p {
	font-size: 16px;
	line-height: 24px;
	color: #536387;
	text-align: center;
}

.formbold-form-input {
	text-align: center;
	width: 100%;
	padding: 14px 22px;
	border-radius: 6px;
	border: 1px solid #DDE3EC;
	background: #FAFAFA;
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
	margin-top: 15px;
}

.formbold-btn:hover {
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}
</style>
<!-- 본문 css -->

	<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	<!-- 푸터 끝 -->

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