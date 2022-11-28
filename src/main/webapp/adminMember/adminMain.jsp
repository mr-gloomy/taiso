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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
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

<style type="text/css">
/* 월별현황 */
.list {
	width: 450px;

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
		</div>
	</section>
	<!-- 상단 -->
	
	<!-- 로그인 제어 -->
	
	<%
		String mem_id = (String) session.getAttribute("mem_id");
		if(mem_id==null || !mem_id.equals("admin")){
			response.sendRedirect("./ReservationMain.rez");
			System.out.println(" 비정상적 접근 발생! IP : "+request.getRemoteAddr());
		}
	%>

	<!-- 로그인 제어 -->

	
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
											<a href="./AdminMemberList.mb">회원조회</a> 
										</div>
									</li>
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
											<a href="./AdminReservationList.rez">예약현황</a>
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
							<th><a href="./AdminReservationList.rez">예약건수</a></th>
							<th><a href="./AdminReservationList.rez">취소건수</a></th>
							<th><a href="./AdminCarList.ad">차량 수</a></th>
						</tr>
						<tr>
							<td>${requestScope.totalCnt1 }</td>
							<td>${requestScope.totalCnt6 }</td>
							<td>${requestScope.totalCnt7 }</td>
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
					<h5>업무일정관리</h5>
					
					<div class="container">
					    <div class="row-24">
					        <div class="col-md-14">
					            <div class="card card-white">
					                <div class="card-body">
					                    <form action="javascript:void(0);">
					                        <input type="text" class="form-control add-task" placeholder="new task...">
					                    </form>
					                    <div class="todo-list">
					                        <div class="todo-item">
					                            <div class="checker"><span class=""><input type="checkbox"></span></div>
					                            <span>22/11/28 장기렌트 고객 방문 예정</span>
					                            <a href="javascript:void(0);" class="float-right remove-todo-item"><i class="icon-close"></i></a>
					                        </div>
					                        <div class="todo-item">
					                            <div class="checker"><span class=""><input type="checkbox"></span></div>
					                            <span>22/11/29 과장님께 보고서 컨펌받기 </span>
					                            <a href="javascript:void(0);" class="float-right remove-todo-item"><i class="icon-close"></i></a>
					                        </div>
					                    </div>
					                </div>
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
	</section>
	<!-- 우측 -->
	
	<!-- 로그아웃 -->
	
	
	
	
	<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	<!-- 푸터 끝 -->

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
    <circle class="path-bg" cx="24" cy="24" r="22" fill="none"stroke-width="4" stroke="#eeeeee" />
    <circle class="path" cx="24" cy="24" r="22" fill="none"stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>
	<script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>
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
	<script src="./js/calendar.js"></script>
	<script src="./js/taskList.js"></script>


</body>
</html>
