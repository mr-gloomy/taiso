<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%
	String referer = request.getHeader("referer");
	System.out.println(referer);
	String mem_id = (String)session.getAttribute("mem_id");
	if(mem_id != null){
		response.sendRedirect("./ReservationMain.rez");
	}
	
%>


<head>
<title>로그인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="./reservationDate.jsp" rel="stylesheet">

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

<!-- SNS로그인 관련 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- SNS로그인 관련 -->


    <style> 
    .bg-light {
    background: #f8f9fa !important;
}
    </style>
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
						<span>로그인 <i class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">로그인</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- 중간제목 끝 -->

	<!-- 본문 시작 -->
	<section class="ftco-section contact-section">
		<div class="container">
			<div class="row">
				<div class="offset-md-2 col-lg-5 col-md-7 offset-lg-4 offset-md-3">
					<div class="panel border bg-white">
					
					
						<div class="panel-heading">
							<h3 class="pt-3 font-weight-bold">로그인</h3>
						</div>
						
						<div class="panel-body p-3">
							<form action="./MemberLoginAction.me?uri=<%=referer %>" method="POST" name="f">
								<div class="form-group py-2">
									<div class="input-field">
										<span class="far fa-user p-2"></span> 
										<input type="text" name="mem_id" placeholder="아이디를 입력하세요." required>
									</div>
								</div>
								
								<div class="form-group py-1 pb-2">
									<div class="input-field">
									<span class="fas fa-lock px-2"></span> 
										<input type="password" name="mem_pw" placeholder="비밀번호를 입력하세요." required>
										<button class="btn bg-white text-muted"><span class="far fa-eye-slash"></span></button>
									</div>
								</div>
								
<!-- 								<div class="form-inline"> -->
<!-- 									<input type="checkbox" name="remember" id="remember">  -->
<!-- 									<label for="remember" class="text-muted">아이디 저장</label>  -->
<!-- 								</div> -->
								
								<button class="btn btn-primary btn-block">로그인</button>
									<div class="aforgot">
										<a href="./MemberFindId.me" id="forgot" class="font-weight-bold">아이디 찾기</a>
										<a href="./MemberFindPw.me" id="forgot" class="font-weight-bold">비밀번호 찾기</a>
									</div>
								<div class=textstyle> 회원이 아니신가요? <a href="./MemberJoinClause.me"  class="font-weight-bold">가입하기</a></div>
							</form>
						</div>
						
						
						<div class="mx-3 my-2 py-2 bordert">
							<div class="text-center py-3">
							
							<!-- 네이버 로그인 관련 -->
							 <div id="naver_id_login"></div>
							<!-- 네이버 로그인 관련 -->

							</div>
						</div>
						
						
					</div>
				</div>
			</div>
		</div>
		</section>
		<!-- 본문 끝 -->

<script type="text/javascript">
	  	var naver_id_login = new naver_id_login("wmfagQjB6wykoV0oZUGH", "http://localhost:8088/project_taiso/MemberNaverLogin.me");
	  	var state = naver_id_login.getUniqState();
	  	naver_id_login.setDomain("http://localhost:8088/");
	  	naver_id_login.setButton("white",3,50);
	  	naver_id_login.setState(state);
	  	naver_id_login.init_naver_id_login();
</script>
	  

	  
<!-- 본문 css -->
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'InfinitySans-RegularA1';
	font-weight: normal;
    font-style: normal;
}


.panel-heading {
	text-align: center;
	margin-bottom: 10px;
    margin-top: 10px;
}

#forgot {
	margin-left: 10px;
	text-decoration: none;
	font-size: 12px;
}

a:hover {
	text-decoration: none
}

.form-inline label {
	padding-left: 10px;
	margin: 0;
	cursor: pointer;
	font-size: 12px;
}

.btn.btn-primary {
	margin-top: 20px;
	border-radius: 5px;
	margin-bottom: 5px;
}

.panel {
	min-height: 380px;
	box-shadow: 20px 20px 80px rgb(218, 218, 218);
	border-radius: 8px;
    margin-bottom:  6em;
}

.input-field {
	border-radius: 5px;
	padding: 5px;
	display: flex;
	align-items: center;
	cursor: pointer;
	border: 1px solid #ddd;
	color: #1089FF;
}

input[type='text'], input[type='password'] {
	width: 100%;
    border-radius: 5px;
    border: 0px solid #dde3ec;
    background: #ffffff;
    font-weight: 500;
    font-size: 12px;
    color: #536387;
    outline: none;
    resize: none;
    margin-left: 8px;
}

.fa-eye-slash.btn {
	border: none;
	outline: none;
	box-shadow: none
}


a[target='_blank'] {
	position: relative;
	transition: all 0.1s ease-in-out
}

.bordert {
	border-top: 1px solid #aaa;
	position: relative
}

.bordert:after {
	content: "SNS 로그인";
	font-size: 14px;
	position: absolute;
	top: -13px;
	left: 37%;
	background-color: #fff;
	padding: 0px 8px;
	font-weight: bold;
}

@media ( max-width : 360px) {
	#forgot {
		margin-left: 0;
		padding-top: 10px
	}
	body {
		height: 100%
	}
	.container {
		margin: 30px 0
	}
	.bordert:after {
		left: 25%
	}
}

.textstyle {
    color: #b1b3b6;
    font-size: 14px;
    line-height: 2px;
    display: block;
    text-align: center;
    padding: 15px;
}

.aforgot{
	text-align: center;
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