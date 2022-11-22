<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<!-- 헤더들어가는곳 -->
<head>
<title>TAISO</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
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
<link rel="stylesheet" href="./css/board.css">
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
<link href="css/lib/font-awesome.min.css" rel="stylesheet">
<link href="css/lib/themify-icons.css" rel="stylesheet">
<link href="css/lib/menubar/sidebar.css" rel="stylesheet">
<link href="css/lib/bootstrap.min.css" rel="stylesheet">
<link href="css/lib/helper.css" rel="stylesheet">
<link rel="stylesheet" href="./css/admin_my.css">

<style type="text/css">
.mb-5, .my-5 {
    margin-bottom: 10rem !important;
}
.card-title {
    margin-bottom: 0.7rem;
}

.calendar {
  width: 350px;
  margin: 10px;
}

.calendar_main {
	position: absolute;
	top: 105px;
	right: 15px;
}
.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.year-month {
  font-size: 25px;
  color: black;
}

.nav {
  display: flex;
  border: 1px solid #333333;
  border-radius: 5px;
}

.nav-btn {
  width: 28px;
  height: 30px;
  border: none;
  font-size: 16px;
  line-height: 34px;
  background-color: transparent;
  cursor: pointer;
}

.go-today {
  width: 75px;
  border-left: 1px solid #333333;
  border-right: 1px solid #333333;
}
.days {
  display: flex;
  margin: 25px 0 10px;
}

.day {
  width: calc(100% / 7);
  text-align: center;
}

.dates {
  display: flex;
  flex-flow: row wrap;
  height: 300px;
  border-top: 1px solid #333333;
  border-right: 1px solid #333333;
}

.date {
  width: calc(100% / 7);
  padding: 3px;
  text-align: right;
  border-bottom: 1px solid #333333;
  border-left: 1px solid #333333;
}

.day:nth-child(7n + 1),
.date:nth-child(7n + 1) {
  color: #D13E3E;
}

.day:nth-child(7n),
.date:nth-child(7n) {
  color: #396EE2;
}
.other {
  opacity: .3;
}

.today {
  position: relative;
  color: #FFFFFF;
}
.today::before {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: -1;
  width: 23px;
  height: 23px;
  display: block;
  background-color: #1089FF;
  border-radius: 50%;
  content: '';
}

.block-9 h2 {
    font-size: 30px;
    font-weight: 500;
    margin-bottom: 40px;
}

</style>

</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<!-- 헤더 끝-->


	<!-- 상단 -->
	<section class="hero-wrap hero-wrap-2 js-fullheight"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>admin <i class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- 상단 -->

	<!-- left -->
	<section class="ftco-section contact-section">
		<div class="container">
			<div class="row d-flex mb-5 contact-info">
				<div class="col-md-4">


					<!-- 프로필 -->
					<div class="row mb-5">
						<div class="profile">
							<div class="txt">
								<img src="./images/person_4.jpg">
								<p>${sessionScope.mem_id }님로그인되었습니다.
								<h6>IT | 사원</h6>
								<h6>입사일 : 2016/11/01</h6>
							</div>
						</div>

						<!-- 프로필 -->

						<!-- 메뉴바 -->
						<div class="middle-md-12">
								<div class="menu">
									<ul id="noul">
										<li class="buttonitem" id="profile"><a href="#profile"
											class="menubtn"><i class="fa fa-cog"></i> 회원관리</a>
											<div class="smenu">
												<a href="./AdminMemberList.mb">회원조회</a> 
												<a href="#">채팅상담</a>
											</div>
										</li>
										<li class="buttonitem" id="messages"><a href="#messages"
											class="menubtn"><i class="fa fa-user"></i> 고객센터 </a>
											<div class="smenu">
												<a href="./AdminNoticeList.nb">공지사항</a> <a href="#">FAQ</a>
												<a href="./QuestionList.bo">문의사항</a>
											</div>
										</li>
										<li class="buttonitem" id="settings"><a href="#settings"
											class="menubtn"><i class="fa fa-cog"></i> 차량관리</a>
											<div class="smenu">
													<a href="./AdminCarList.ad">차량리스트</a> 
											</div>
										</li>
										<li class="buttonitem" id="settings"><a href="#settings"
											class="menubtn"><i class="fa fa-cog"></i> 차량관리</a>
											<div class="smenu">
												<a href="./ReservationList.rez">예약현황</a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						<!-- 메뉴바 -->
					</div>
				</div>
				<!-- 상단위젯 -->
				<div class="col-md-8 block-9 mb-md-5">
						<div class="form-group">
							<div class="row">
								<div class="col-lg-4">
									<div class="card p-3">
										<div class="stat-widget-three">
											<div class="stat-icon bg-primary">
												<i class="ti-user"></i>
											</div>
											<div class="stat-content">
												<div class="stat-digit"><p>Total Customer<p></div>
												<div class="stat-text">ssd</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="card p-3">
										<div class="stat-widget-three">
											<div class="stat-icon bg-success">
												<i class="ti-user"></i>
											</div>
											<div class="stat-content">
												<div class="stat-digit"><p>New Customer<p></div>
												<div class="stat-text">New User</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="card p-3">
										<div class="stat-widget-three">
											<div class="stat-icon bg-warning">
												<i class="ti-user"></i>
											</div>
											<div class="stat-content">
												<div class="stat-digit"><p>Total Profit</p></div>
												<div class="stat-text">New User</div>
											</div>
										</div>
									</div>
								</div>
				<!-- 상단위젯 -->
						</div>
			<!-- task -->
			<hr>
			<div class="col-lg-6" >
					<div class="card">
						<div class="card-title" align="center">
									<h2>Task</h2>
								</div>
									<div class="tdl-holder">
										<div class="tdl-content">
											<ul>
												<li>
													<label> <input type="checkbox"><i></i>
														<span>22,Dec Publish The Final Exam Result</span> 
														<a href='#' class="ti-close"></a>
													</label>
												</li>
												<li>
													<label> <input type="checkbox" checked><i></i>
														<span>First Jan Start Our School</span> 
														<a href='#'class="ti-close"></a>
													</label>
												</li>
												<li>
													<label> <input type="checkbox"><i></i>
														<span>Recently Our Maganement Programme Start</span>
														<a href='#' class="ti-close"></a>
													</label>
												</li>
												<li>
													<label> <input type="checkbox"><i></i>
														<span>Recently Our Maganement Programme Start </span>
														<a href='#' class="ti-close"></a>
													</label><br>
												</li>
											</ul>
										</div>
										<input type="text" class="tdl-new form-control" placeholder="내용을 입력해주세요">
									</div>
								</div>							
							</div>

							<!-- task -->

							<!-- 달력 -->
							<div class="calendar_main" >		
								<div class="calendar">
							        <div class="header">
							            <div class="year-month"></div>
							              <div class="nav">
										    <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
										    <button class="nav-btn go-today" onclick="goToday()">Today</button>
										    <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
										  </div>
							        </div>
							        <div class="main">
							            <div class="days">
							                <div class="day">일</div>
							                <div class="day">월</div>
							                <div class="day">화</div>
							                <div class="day">수</div>
							                <div class="day">목</div>
							                <div class="day">금</div>
							                <div class="day">토</div>
							            </div>
							            <div class="dates"></div>
							        </div>
							    </div>
							    <script src="./js/calendar.js"></script>
							  </div>
			<!-- 달력 -->
				
				
		
				</div>
			</div>

			<!--  -->
			<div class="row justify-content-center">
			</div>
		</div>
	</section>
	<!-- 우측 -->

	<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	<!-- 푸터 끝 -->

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
    <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
    <circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<script src="./js/jquery.min.js"></script>
	<script src="./js/jquery-migrate-3.0.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/jquery.easing.1.3.js"></script>
	<script src="./js/jquery.waypoints.min.js"></script>
	<script src="./js/jquery.stellar.min.js"></script>
	<script src="./js/owl.carousel.min.js"></script>
	<script src="./js/jquery.magnific-popup.min.js"></script>
	<script src="./js/aos.js"></script>
	<script src="./js/jquery.animateNumber.min.js"></script>
	<script src="./js/bootstrap-datepicker.js"></script>
	<script src="./js/jquery.timepicker.min.js"></script>
	<script src="./js/scrollax.min.js"></script>
	<script src="./js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	
</body>
</html>