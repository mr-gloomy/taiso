<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<!-- 헤더들어가는곳 -->
<head>
<title>TAISO</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
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
<link rel="stylesheet" href="./css/admin_my.css">
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
<link href="css/lib/font-awesome.min.css" rel="stylesheet">
<link href="css/lib/themify-icons.css" rel="stylesheet">
<link href="css/lib/menubar/sidebar.css" rel="stylesheet">
<link href="css/lib/bootstrap.min.css" rel="stylesheet">
<link href="css/lib/helper.css" rel="stylesheet">

<style type="text/css">
.mb-5, .my-5 {
    margin-bottom: 16rem;
}
.card-title {
    margin-bottom: 0.7rem;
}
.th {
}
.calendar {
  width: 270px;
  margin: 10px;
}
.calendar_main {
	position: absolute;
	top: 80px;
	right: 200px;
}
.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.year-month {
  font-size: 20px;
  color: black;
}
.nav {
  display: flex;
  border: 1px solid #333333;
  border-radius: 4px;
}
.nav-btn {
  width: 25px;
  height: 25px;
  border: none;
  font-size: 13px;
  line-height: 30px;
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
  top: 40%;
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


/* 월별현황 */
.list {
	width: 450px;
	height: 1000px;

}
table {
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: white;
}
/* 월별현황 */

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
						<span class="mr-2"><a href="./AdminMain.mb">Home <i class="ion-ios-arrow-forward"></i></a></span> 
						<span> admin <i class="ion-ios-arrow-forward"></i></span>
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
								<h5><p>${sessionScope.mem_id } 님</p></h5>
								<h6>IT | 사원(2215953)</h6>
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
											<a href="./AdminMemberList.mb">전체회원조회</a> 
											<a href="./AdminMemberBlackList.mb">블랙리스트 회원조회</a> 
										</div></li>
									<li class="buttonitem" id="settings"><a href="#settings"
										class="menubtn"><i class="fa fa-cog"></i> 차량관리</a>
										<div class="smenu">
											<a href="./AdminCarList.ad">차량리스트</a>
											<a href="./AdminReviewList.adr">차량리뷰조회</a>
										</div>
									</li>
									<li class="buttonitem" id="setting"><a href="#setting"
										class="menubtn"><i class="fa fa-cog"></i> 예약관리</a>
										<div class="smenu">
											<a href="./AdminReservationListAction.rez">예약현황</a>
										</div>
									</li>
									<li class="buttonitem" id="messages"><a href="#messages"
										class="menubtn"><i class="fa fa-user"></i> 고객센터 </a>
										<div class="smenu">
											<a href="./AdminNoticeList.nb">공지사항</a>
											<a href="./QuestionList.bo">1:1문의사항</a>
											<a href="./FaqList.bo">FAQ</a> 
										</div>
									</li>
										
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- 메뉴바 -->

				<!-- 11월 현황표 -->
				<div class="list">
					<h5>11월 현황</h5>
					<table>
						<tr>
							<th><a href="./AdminMemberList.mb">회원 수</a></th>
							<th><a href="./AdminReservationListAction.rez">예약건수</a></th>
							<th><a href="./AdminReservationListAction.rez">취소건수</a></th>
							<th><a href="./AdminCarList.ad">차량 수</a></th>
						</tr>
						<tr>
							<td>${requestScope.totalCnt1 }</td>
							<td>${requestScope.totalCnt6 }</td>
							<td>${requestScope.totalCnt6 }</td>
							<td>${requestScope.totalCnt5 }</td>
						</tr>
					</table><br>
				<!-- 11월 현황표 --> 
				
				<!-- 문의/제안내역 --> 
					<h5>고객관리</h5>
					<table>
						<tr>
							<th><a href="./QuestionList.bo">1:1문의사항</a></th>
							<th><a href="./AdminReviewList.adr">차량리뷰</a></th>
							<th><a href="./ProposalList.bo">수정/제안</a></th>
							<th><a href="./QuestionList.bo">장기렌트</a></th>
						</tr>
						<tr>
							<td>${requestScope.totalCnt2 }</td>
							<td>${requestScope.totalCnt4 }</td>
							<td>${requestScope.totalCnt3 }</td>
							<td>1</td>
						</tr>
					</table><br>
				<!-- 문의/제안내역 --> 
					
				<!-- 업무메모장 --> 
					<div class="col-lg-18">
						<div class="todo">
							<div class="todo-title">
								<h5>업무일정기록</h5>
								<div class="tdl-holder">
									<div class="tdl-content" align="left">
										<label> <input type="checkbox" class="ti-close"><i></i>
											<span>22/11/28 강진석님 장기렌트 상담예약</span> 
										</label>
										<span></span>
										<div id="todo-list"></div>
									</div>
									<input id="todo" class="tdl-new form-control" placeholder="내용을 입력해주세요."> 
									<input type="hidden" id="add-button">
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 일일 현황표 --> 
					
				
				
				<!-- 달력 -->
				<div class="calendar_main">
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
					<!-- 달력 -->
				</div>
			</div>
		</div>

		<!--  -->
	</section>
	<!-- 우측 -->

	<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	<!-- 푸터 끝 -->

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
    <circle class="path-bg" cx="24" cy="24" r="22" fill="none"stroke-width="4" stroke="#eeeeee" />
    <circle class="path" cx="24" cy="24" r="22" fill="none"stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
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
	<script src="./js/calendar.js"></script>
	<script src="./js/taskList.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</body>
</html>