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
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>
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
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">admin <i class="ion-ios-arrow-forward"></i></a></span> <span>Member Detail <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">관리자페이지</h1>
          </div>
        </div>
      </div>
    </section>
	<!-- 헤더들어가는 곳 -->
	
	<!-- 메인페이지  -->
    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
    	<div class="col-md-4">
        <div class="board_title">
            <strong>회원정보 상세조회</strong></div>

     	<!-- 프로필 -->
     	<div class="row mb-6">
			<div class="card">
				<div class="text">
					<img src="./images/user.png">
					<p>${mDTO.mem_name } 님</p>
					<p>문의사항　　 　 리뷰</p>
				</div>
			</div>
      	
     	<!-- 프로필 -->
		
  		</div> 
   	 </div> 
   	 <!-- 우측 -->
          <div class="col-md-8 block-9 mb-md-5">
            <form action="#" class="bg-light p-18 contact-form">
              <div class="form-group">
              	<table>
				  <tr>
				    <th>회원번호</th>
				    <th>회원명</th>
				    <th>닉네임</th>
				    <th>생년월일</th>
				  </tr>
				  <tr>
				    <td>${mDTO.mem_num }</td>
				    <td>${mDTO.mem_name }</td>
				    <td>${mDTO.mem_nickName }</td>
				    <td>${mDTO.mem_birthday }</td>
				  </tr>
				  <tr>
				    <th>아이디</th>
				    <th>비밀번호</th>
				    <th>전화번호</th>
				    <th>이메일</th>
				  </tr>
				  <tr>
				    <td>${mDTO.mem_id }</td>
				    <td>${mDTO.mem_pw }</td>
				    <td>${mDTO.mem_phone }</td>
				    <td>${mDTO.mem_email }</td>
				  </tr>
				  <tr>
				    <th>SNS 수신 여부</th>
				    <th>회원등록일</th>
				    <th>프로필 이미지</th>
				    <th>면허증번호</th>
				  </tr>
				  <tr>
				    <td>${mDTO.mem_accept_sns }</td>
				    <td>${mDTO.mem_registDate }</td>
				    <td>${mDTO.mem_image }</td>
				    <td>${mDTO.license_num }</td>
				  </tr>
				  <tr>
				    <th>블랙리스트</th>
				    <th>블랙리스트 사유</th>
				  </tr>
				  <tr>
				    <td>${mDTO.mem_blacklist }</td>
				  </tr>
				</table>
              
              
              </div>
            </form>
          
          </div>
        </div>
        <div class="row justify-content-center">
        	
        </div>
      </div>
    </section>
	 <!-- 우측 -->
	

	<!-- 메인페이지  -->

   	
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