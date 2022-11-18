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
<link rel="stylesheet" href="css/admin_my.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
</head>

  <body>
  	<!-- 헤더 시작 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
  	<!-- 헤더 끝-->
	
	<!-- 중간제목 시작 -->
	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('images/bg_3.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Contact <i
							class="ion-ios-arrow-forward"></i></span>
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
			<img src="your-image-url-here.jpg">
				
				<form action="./MemberJoinAction.me"  method="post" id="join" name="fr"  onsubmit="alert('데이터 유효성체크 완료');">
				
					<div class="formbold-mb-3 formbold-input-wrapp">
						<label for="id" class="formbold-form-label"> 아이디 </label>
						<div>
							<input type="text" name="phone" id="phone" placeholder="아이디" class="formbold-form-input-small" />
						     <button class="formbold-btn"> 중복확인 </button>
						</div>
					</div>
					<div class=textstyle>
						조건적기
					</div>
					
					
					<div class="formbold-mb-3">
						<label for="id" class="formbold-form-label"> 아이디 </label> <input
							type="text" name="age" id="age" placeholder="ex:25"
							class="formbold-form-input" />
					</div>
					<div class="formbold-input-wrapp formbold-mb-3">
						<label for="firstname" class="formbold-form-label"> Name </label>

						<div>
							<input type="text" name="firstname" id="firstname"
								placeholder="이름" class="formbold-form-input" />

							<input type="text" name="lastname" id="lastname"
								placeholder="Last name" class="formbold-form-input" />
						</div>
					</div>


					<div class="formbold-mb-3">
						<label for="dob" class="formbold-form-label"> Date of
							Birth </label> <input type="date" name="dob" id="dob"
							class="formbold-form-input" />
					</div>

					<div class="formbold-mb-3">
						<label class="formbold-form-label">Gender</label> <select
							class="formbold-form-input" name="occupation" id="occupation">
							<option value="male">Male</option>
							<option value="female">Female</option>
							<option value="others">Others</option>
						</select>
					</div>

					<div class="formbold-mb-3">
						<label for="email" class="formbold-form-label"> Email </label> <input
							type="email" name="email" id="email"
							placeholder="example@email.com" class="formbold-form-input" />
					</div>

					<div class="formbold-mb-3">
						<label for="address" class="formbold-form-label"> Address
						</label> <input type="text" name="address" id="address"
							placeholder="Street address"
							class="formbold-form-input formbold-mb-3" /> <input
							type="text" name="address2" id="address2"
							placeholder="Street address line 2" class="formbold-form-input" />
					</div>

					<div class="formbold-mb-3 formbold-input-wrapp">
						<label for="phone" class="formbold-form-label"> Phone </label>

						<div>
							<input type="text" name="areacode" id="areacode"
								placeholder="Area code"
								class="formbold-form-input formbold-w-45" /> <input
								type="text" name="phone" id="phone" placeholder="Phone number"
								class="formbold-form-input" />
						</div>
					</div>

					<div class="formbold-input-flex">
						<div>
							<label for="post" class="formbold-form-label"> Post/Zip
								code </label> <input type="text" name="post" id="post"
								placeholder="ex:8976" class="formbold-form-input" />
						</div>
						<div>
							<label for="city" class="formbold-form-label"> City </label> <input
								type="text" name="city" id="city" placeholder="ex: New York"
								class="formbold-form-input" />
						</div>
					</div>

					<div class="formbold-mb-3 formbold-input-wrapp">
						<label for="phone" class="formbold-form-label"> Phone </label>

						<div>
							<input type="text" name="phone" id="phone" placeholder="Phone number" class="formbold-form-input" />
						     <button class="formbold-btn"> Subscribe </button>
						</div>
					</div>

					<div class="formbold-mb-3">
						<label for="upload" class="formbold-form-label"> Upload
							Signature </label> <input type="file" name="upload" id="upload"
							class="formbold-form-input formbold-form-file" />
					</div>

					<div class="formbold-checkbox-wrapper">
						<label for="supportCheckbox" class="formbold-checkbox-label">
							<div class="formbold-relative">
								<input type="checkbox" id="supportCheckbox"
									class="formbold-input-checkbox" />
								<div class="formbold-checkbox-inner">
									<span class="formbold-opacity-0"> <svg width="11"
											height="8" viewBox="0 0 11 8" class="formbold-stroke-current"
											fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path
												d="M8.81868 0.688604L4.16688 5.4878L2.05598 3.29507C1.70417 2.92271 1.1569 2.96409 0.805082 3.29507C0.453266 3.66742 0.492357 4.24663 0.805082 4.61898L3.30689 7.18407C3.54143 7.43231 3.85416 7.55642 4.16688 7.55642C4.47961 7.55642 4.79233 7.43231 5.02688 7.18407L10.0696 2.05389C10.4214 1.68154 10.4214 1.10233 10.0696 0.729976C9.71776 0.357624 9.17049 0.357625 8.81868 0.688604Z"
												fill="white" />
                </svg>
									</span>
								</div>
							</div> I agree to the defined <a href="#"> terms, conditions, and
								policies</a>
						</label>
					</div>

					<button class="submit">Submit</button>
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
	font-family: 'Inter', sans-serif;
}

.formbold-mb-3 {
	margin-bottom: 15px;
}

.formbold-relative {
	position: relative;
}

.formbold-opacity-0 {
	opacity: 0;
}

.formbold-stroke-current {
	stroke: #ffffff;
	z-index: 999;
}

#supportCheckbox:checked ~ div span {
	opacity: 1;
}

#supportCheckbox:checked ~ div {
	background: #1089FF;
	border-color: #1089FF;
}

.formbold-main-wrapper {
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 48px;
}

.formbold-form-wrapper {
	margin: 0 auto;
	max-width: 570px;
	width: 100%;
	background: white;
	padding: 40px;
}

.formbold-img {
	display: block;
	margin: 0 auto 45px;
}

.formbold-input-wrapp>div {
	display: flex;
	gap: 20px;
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

.formbold-form-input-small {
	width: 80%;
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

.formbold-form-input::placeholder, select.formbold-form-input,
	.formbold-form-input[type='date']::-webkit-datetime-edit-text,
	.formbold-form-input[type='date']::-webkit-datetime-edit-month-field,
	.formbold-form-input[type='date']::-webkit-datetime-edit-day-field,
	.formbold-form-input[type='date']::-webkit-datetime-edit-year-field {
	color: rgba(83, 99, 135, 0.5);
}

.formbold-form-input:focus {
	border-color: #1089FF;
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-form-label {
	color: #536387;
	font-size: 14px;
	line-height: 24px;
	display: block;
	margin-bottom: 10px;
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
	margin-right: 16px;
	margin-top: 2px;
	border: 0.7px solid #dde3ec;
	border-radius: 3px;
}

.formbold-form-file {
	padding: 12px;
	font-size: 14px;
	line-height: 24px;
	color: rgba(83, 99, 135, 0.5);
}

.formbold-form-file::-webkit-file-upload-button {
	display: none;
}

.formbold-form-file:before {
	content: 'Upload';
	display: inline-block;
	background: #EEEEEE;
	border: 0.5px solid #E7E7E7;
	border-radius: 3px;
	padding: 3px 12px;
	outline: none;
	white-space: nowrap;
	-webkit-user-select: none;
	cursor: pointer;
	color: #637381;
	font-weight: 500;
	font-size: 12px;
	line-height: 16px;
	margin-right: 10px;
}

.formbold-btn {
	font-size: 14px;
	border-radius: 5px;
	padding: 14px 10px;
	border: none;
	font-weight: 500;
	background-color: #1089FF;
	color: white;
	cursor: pointer;
}

 .submit {
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

.formbold-w-45 {
	width: 45%;
}

.textstyle {
	color: #b1b3b6;
	font-size: 10px;
	line-height: 2px;
	display: block;
	margin-bottom: 20px;
	margin-left: 5px;
}


</style>
<!-- 본문 css -->

<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 끝 -->

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px"> <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" /><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
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