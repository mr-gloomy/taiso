<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
    <title>TAISO</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
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
    <link rel="stylesheet" href="./css/style2.css">
  </head>
  <body>
    
	<!-- 헤더들어가는 곳 -->
	<jsp:include page="../inc/top.jsp" />
	<!-- 헤더들어가는 곳 -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Contact <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">Contact Us</h1>
          </div>
        </div>
      </div>
    </section>



		<section class="ftco-section2 bg-light">
			<h1>예약정보 조회</h1>
			<div class="row">
				<div class="col-md-4-2">
					<div class="car-wrap rounded ftco-animate">
						<c:forEach var = "rez" items="${reservationList }" step="1">
							<div class="text">
								<div class="d-flex mb-3">
									<span class="cat">단기렌트</span>
									<span class="cat" style="text-align:right;width:90%;">${rez.rez_uqNum }</span>
			
								</div>
								<div class="d-flex mb-3">
									<span class="cat"></span>
								</div>
								<div class="d-flex mb-3">
									<span class="cat"></span>
								</div>
								<h2 class="mb-0">
									<a href="car-single.html">${rez.car_name }</a>ㅤ<input type = "button" class="btn btn-primary py-1 mr-1" value="예약 완료">
								</h2>
								<div class="d-flex mb-3">
									<span class="cat">${rez.rez_rentalDate} ~ ${rez.rez_returnDate}</span>
								</div>
								<div class="d-flex mb-3">
									<span class="cat"></span>
								</div>
								<div class="d-flex mb-3">
									<span class="cat"></span>
								</div>
								<div class="d-flex mb-3" style="display: flex; justify-content: center;">
									<input type = "button" class="btn btn-primary2 py-2 mr-1" value = "예약 상세 조회" onclick="location.href='./ReservationInfoAction.rez?rez_uqNum=${rez.rez_uqNum }';" >ㅤ
									<input type = "button" class="btn btn-primary py-2 mr-1" value = "리뷰작성">
								</div>
							</div>
						</c:forEach>

						
						
					</div>
				</div>
			</div>
		</section>

	
	  <c:if test="${totalCnt != 0 }">
	      <!-- 이전 -->
	      <c:if test="${startPage > pageBlock }">
	         <a href="./ReservationListAction.rez?pageNum=${startPage - pageBlock  }">[이전]</a>
	      </c:if>   
	         
	      <!-- 페이지 번호(1,2,3) -->
	      <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
	         <a href="./ReservationListAction.rez?pageNum=${i }">${i }</a>
	      </c:forEach>   
	         
	      <!-- 다음 -->
	      <c:if test="${endPage < pageCount }">
	         <a href="./ReservationListAction.rez?pageNum=${startPage+pageBlock }">[다음]</a>
	      </c:if>
	   </c:if>


	<!-- 푸터들어가는 곳 -->
	<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->



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
	<script      
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="./js/google-map.js"></script>
	<script src="./js/main.js"></script>
  </body>
</html>