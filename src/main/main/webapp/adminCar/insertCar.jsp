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
  </head>
  <body>
  
  	<jsp:include page="/inc/top.jsp"/>
    
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
<!-- 헤더들어가는곳 -->


	<h1>차량 등록하기</h1>

<!-- Left Side -->
    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
        	<div class="col-md-4">
        		<div class="row mb-5">
		          <div class="col-md-12">
		          	<div class="border w-100 p-4 rounded mb-2 d-flex">
			          	<div class="icon mr-3">
			          		<span class="icon-map-o"></span>
			          	</div>
			            <p><span>[예약정보]</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
			          </div>
		          </div>
		          <div class="col-md-12">
		          	<div class="border w-100 p-4 rounded mb-2 d-flex">
			          	<div class="icon mr-3">
			          		<span class="icon-mobile-phone"></span>
			          	</div>
			            <p><span>[선택차량정보]</span> <a href="tel://1234567920">글자늘리면 저절로 칸 수 늘어남글자늘리면 저절로 칸 수 늘어남 글자늘리면 저절로 칸 수 늘어남</a></p>
			          </div>
		          </div>
		          <div class="col-md-12">
		          	<div class="border w-100 p-4 rounded mb-2 d-flex">
			          	<div class="icon mr-3">
			          		<span class="icon-envelope-o"></span>
			          	</div>
			            <p><span>Email:</span> <a href="mailto:info@yoursite.com">이것도 저절로 늘어남!!!</a></p>
			          </div>
		          </div>
		        </div>
          </div>
<!-- Left Side -->

<!-- contact 작성Form -->
	
		<!-- <h1>예약하기</h1> 여기쓰면 화면 어그러짐-->
          <div class="col-md-8 block-9 mb-md-5">
            <form action="./AdminCarAddAction.ad" class="bg-light p-5 contact-form" method="post" enctype="multipart/form-data">
           <div class="form-group">
           	 <h3>[관리자]차량 정보 등록</h3>	 
                지역코드 : 
	     				   <input type="radio" name="car_location" value="1" checked>내륙
                        	<input type="radio" name="car_location" value="0">제주<br>
	     				   
                브랜드 : <input type="text" name="car_brand" class="form-control" ><br>
                           
                차량명 : <input type="text" name="car_name" class="form-control" ><br>
                        
                가격 : <input type="text" name="car_price" class="form-control" ><br>
                
                차량옵션 : <input type="text" name="car_op" class="form-control" ><br>
                           
                카테고리 : 
			                <select name="car_category">
								<option value="small">소형</option>
								<option value="compact">준중형</option>
								<option value="middle">중형</option>
								<option value="large">대형</option>
								<option value="suv">SUV</option>
								<option value="foreign">수입차</option>
							</select>
							 <br>
                        
                연식 : <input type="text" name="car_year" class="form-control" ><br>
                
                연료 : <input type="text" name="car_fuel" class="form-control" ><br>
                
                상품 이미지 : 	<input type="file" name="car_file" > 

              </div>

              <hr>
            
              
              
            
                <input type="submit" value="등록하기" >
            
           
            </form>  
          </div>
        </div>
	
<!-- contact 작성Form -->


	
<!-- 푸터들어가는곳 -->
      	<jsp:include page="/inc/bottom.jsp"/>
<!-- 푸터들어가는곳 -->    

  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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