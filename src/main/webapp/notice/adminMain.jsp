<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- 헤더들어가는곳 -->
  <head>
    <title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
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
	<link rel="stylesheet" href="./css/main2.css">
	
	<script type="text/javascript">
	

	</script>
</head>
  <body>
  	<!-- 헤더 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
  	<!-- 헤더 끝-->
	
	    
    <!-- 상단 -->
    <section class="hero-wrap hero-wrap-2 js-fullheight" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>admin <i class="ion-ios-arrow-forward"></i></span></p>
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
	<div class="card">
		<div class="text">
			<img src="https://www.shareicon.net/data/512x512/2016/09/15/829452_user_512x512.png">
			<p>" ${mem_id }" 님 로그인 되었습니다.</p>
			<h4>IT | 관리</h4>
		</div>
	</div>
    	
   	<!-- 프로필 -->
	
	<!-- 메뉴바 -->

    <div class="middle-md-12">
        <div class="menu">
            <ul id="noul">
                <li class="buttonitem" id="profile">
                    <a href="#profile" class="menubtn"><i class="fa fa-cog"></i> 회원관리</a>
                    <div class="smenu">
                        <a href="./AdminMemberList.mb">회원조회</a>
                        <a href="#">채팅상담</a>
                    </div>
                </li>

                <li class="buttonitem" id="messages">
                    <a href="#messages" class="menubtn"><i class="fa fa-user"></i> 고객지원</a>
                    <div class="smenu">
                        <a href="./AdminNoticeList.nb">공지사항</a>
                        <a href="#">FAQ</a>
                        <a href="#">문의사항</a>
                        
                    </div>
                </li>

                <li class="buttonitem" id="settings">
                    <a href="#settings" class="menubtn"><i class="fa fa-cog"></i> 상품관리</a>
                    <div class="smenu">
                        <a href="#">차량 리스트</a>
                        <a href="#">예약현황</a>
                    </div>
                </li>

                <li class="buttonitem">
                    <a href="#" class="menubtn"><i class="fa fa-sign-out-alt"></i> 성과관리</a>
                    <div class="smenu">
                        <a href="#">방문자수 조회</a>
                        <a href="#">매출현황 조회</a>
                    </div>
                </li>
               </ul>
             </div>
            </div>
		<!-- 메뉴바 -->

	</div>
    </section>
	<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	<!-- 푸터 끝 -->

    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
    <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
    <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="./js/google-map.js"></script>
	<script src="./js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    
  </body>
</html>