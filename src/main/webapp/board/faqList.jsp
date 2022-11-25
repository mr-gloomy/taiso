<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>FAQ</title>
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
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/admin_my.css">

  </head>
  <body>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp"/>
	<!-- 헤더들어가는 곳 -->

	    
    <!--  -->
    <section class="hero-wrap hero-wrap-2 js-fullheight" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Contact <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">FAQ</h1>
          </div>
        </div>
      </div>
    </section>
	<!--  -->
	 
	<!-- left -->
    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
        	
				<!-- @@@@@@@@@@@@여기부터 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
					<jsp:include page="../inc/sidebar.jsp" />
				<!-- @@@@@@@@@@@@여기까지 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
   	 <!-- 우측 -->
     <!-- 여기부터는 틀이라서 건드리면 안 됨  --> 
            <div class="col-md-8 block-9 mb-md-5">


<!-- 		<section class="ftco-section ftco-car-details"> -->
      <div class="container">
      	<div class="row">
      		<div class="col-md-12 pills">
						<div class="bd-example bd-example-tabs">
							<div class="d-flex justify-content-center">
							  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

							    <li class="nav-item">
							      <a class="nav-link" id="pills-1-tab" data-toggle="pill" href="#pills-1" role="tab" aria-controls="pills-1" aria-expanded="true">이용안내</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link active" id="pills-2-tab" data-toggle="pill" href="#pills-2" role="tab" aria-controls="pills-2" aria-expanded="true">예약/결제</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" id="pills-3-tab" data-toggle="pill" href="#pills-3" role="tab" aria-controls="pills-3" aria-expanded="true">취소/환불</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" id="pills-4-tab" data-toggle="pill" href="#pills-4" role="tab" aria-controls="pills-4" aria-expanded="true">보험/사고</a>
							    </li>							    
							    <li class="nav-item">
							      <a class="nav-link" id="pills-5-tab" data-toggle="pill" href="#pills-5" role="tab" aria-controls="pills-5" aria-expanded="true">기타</a>
							    </li>
							  </ul>
							</div>

						  <div class="tab-content" id="pills-tabContent">
						    <div class="tab-pane fade" id="pills-1" role="tabpanel" aria-labelledby="pills-1-tab">
								칸 비움 1 
						    </div>
						    <div class="tab-pane fade show active" id="pills-2" role="tabpanel" aria-labelledby="pills-2-tab">
 								칸 비움 2
						    </div>
						    <div class="tab-pane fade" id="pills-3" role="tabpanel" aria-labelledby="pills-3-tab">
						     	칸 비움 3
							</div>
							<div class="tab-pane fade" id="pills-4" role="tabpanel" aria-labelledby="pills-4-tab">
						     	칸 비움 4
							</div>
							<div class="tab-pane fade" id="pills-5" role="tabpanel" aria-labelledby="pills-5-tab">
						     	칸 비움 5
							</div>
							
							
		   			   </div>	<!-- tab-content -->
				</div>
			</div>
		</div>
      </div>


 <!-- 아래는 틀  -->

        </div>
      </div>
     </div>
    </section>
	 <!-- 우측 -->
	
	<div class="clear"></div>
	<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->
	</div>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

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
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    
  </body>
</html>