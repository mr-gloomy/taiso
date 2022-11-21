<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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

<style type="text/css">
 .main {
 	margin: 2em;
 }
 .table tbody tr td {
    vertical-align: middle;
    padding: 2px 0;

</style>

<script type="text/javascript">
 
 
 
 
</script>

  </head>
  <body>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
	<jsp:include page="../inc/top.jsp"/>
	    
    <section class="hero-wrap hero-wrap-2 js-fullheight" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="./admin/adminMain.jsp">admin<i class="ion-ios-arrow-forward"></i></a></span> 
          	<span>member<i class="ion-ios-arrow-forward"></i></span></p>
             <h1 class="mb-3 bread">관리자페이지</h1>
          </div>
        </div>
      </div>
    </section>
	<!-- 헤더들어가는 곳 -->
	
	<!-- 메인 -->

		<div class="board_wrap3">
			<div class="board_title">
				<strong>회원조회</strong>
				<p>회원수 : ${requestScope.totalCnt } 명</p>
				<div border="1" width="90%">
					<div align="right">
						<!-- 회원 분류 -->
						<div class="form-check form-check-inline" align="right">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio1" value="option1"
								checked> <label class="form-check-label"
								for="inlineRadio1">전체회원</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio2" value="option2">
							<label class="form-check-label" for="inlineRadio2">블랙리스트
								회원</label>
						</div>


						<!--  검색 폼 -->
						<input type="text" name="search">
						<input type="submit" value="Search" class="btn btn-outline-secondary">
					</div>
				</div>
			</div>
			<div class="table table-hove">
				<div class="board_list">

					<table class="table table-hover" align="center">
						<thead>
							<tr align="center">
								<th>회원번호</th>
								<th>아이디</th>
								<th>이름</th>
								<th>회원등록일</th>
								<th>블랙리스트</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="mDTO" items="${memberListAll }">
								<tr colspan="1" align="center">
									<td>${mDTO.mem_num }</td>
									<td>${mDTO.mem_id }</td>
									<td>${mDTO.mem_name }</td>
									<td>${mDTO.mem_registDate }</td>
									<td>${mDTO.mem_blacklist }</td>
									<td>
										<a href="./AdminMemberInfo.mb?mem_num=${mDTO.mem_num }&pageNum=${pageNum }">상세조회  | </a> 
										<a href="./AdminMemberDelete.mb?mem_num=${mDTO.mem_num }"onclick="retrun MemberDelete()">회원삭제</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<br>
 

				<!-- 페이지처리 -->
				<div class="n_page" align="center">
					<c:if test="${totalCnt != 0}">
						<!-- 페이지번호 -->
						<c:forEach var="i" begin="${startPage }" end="${endPage }"
							step="1">
							<a href="./AdminMemberList.mb?pageNum=${i }"
								class="btn btn-outline-primary">${i }</a>
						</c:forEach>
					</c:if>
				</div>

			</div>
			<br>


		</div>
	</div>
  	
  
	<!-- 메인 -->
     
	
	
	<div class="clear"></div>
	<!-- 푸터들어가는 곳 -->
	<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->
	</div>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="20px" height="20px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

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
  <script src="./js/google-map.js"></script>
  <script src="./js/main.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  </body>
</html>