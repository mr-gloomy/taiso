<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>타이소</title>
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


<!-- 블로그 로딩 코드 start -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
#waiting {
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    position: fixed;
    display: flex;
    background: white;
    z-index: 999;
    opacity: 0.9;
}
#waiting > img {
    display: flex;
    width: fit-content;
    height: fit-content;
    margin: auto;
}
</style>
<div id="waiting">
   <img src="./img/loading.gif">
</div>

<script type="text/javascript">
    $(window).on('load', function() {
        setTimeout(function(){
            $("#waiting").fadeOut();
        }, 300);
    });
</script>
<!-- 블로그 로딩 코드 end -->
    
    <style>
    .ftco-section3 {
 	  padding: 6em;
/* 	  padding-left: 25em; */
/* 	  position: relative; */
	width: 700px ;
	margin: 0 auto;
	line-height: 20px ;
	background: #f8f9fa;
    }
  	.long-input {
 	  height: 50px;
	  width: 500px;
	  background: #fff !important;
 	  color: #757575;
	  border: 1px solid #ced4da;
	  margin:10px;
	  font-size: 15px;
	  padding : 0.375rem 0.75rem;
	  border-radius: 5px;
	  -webkit-box-shadow: none !important;
	  box-shadow: none !important;
  	}
    .submitbtn {
    color:#1089FF;
    font-size:20px ;
    font-weight:600; 
    background-color: #fff;
    text-align: center;
    border:0;
    margin:auto;
    }
    </style>

<script src="sweetalert2.all.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<script type="text/javascript">
function fralert(){
		if(document.fr.name.value==""){
			Swal.fire({
                icon: 'warning',
                text: '이름을 입력하세요',
            });
			document.fr.name.focus();
			return;
		}
		if(document.fr.phone.value==""){
			Swal.fire({
                icon: 'warning',
                text: '전화번호를 입력하세요',
            });
			document.fr.phone.focus();
			return;
		}
		if(document.fr.msg.value==""){
			Swal.fire({
                icon: 'warning',
                text: '내용을 입력하세요',
            });
			document.fr.msg.focus();
			return;
		}
		if(document.fr.car.value==""){
			Swal.fire({
                icon: 'warning',
                text: '차종을 입력하세요',
            });
			document.fr.msg.focus();
			return;
		}
		Swal.fire({
            icon: 'success',
            text: '제출되었습니다',
        });
}
</script>    
    
  </head>
  <body>
    
		<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp" />
		<!-- 헤더들어가는 곳 -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_6.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="./ReservationMain.rez">Home <i class="ion-ios-arrow-forward"></i></a></span> <span><a href="./LongTerm.rez">렌트하기 <i class="ion-ios-arrow-forward"></i></a></span></p>
            <h1 class="mb-3 bread">장기렌트 문의</h1>
          </div>
        </div>
      </div>
    </section>

	<section class="ftco-section3">
           	 <h3 style="color:#1089FF;"><b>&nbsp;&nbsp;간편 견적 신청</b></h3><br>
		<form name="fr">
		<input class="long-input" type="text" name="name" value="" placeholder="&nbsp;이름을 입력하세요"><br>
		<input class="long-input" type="text" name="phone" value="" placeholder="&nbsp;연락처를 입력하세요"><br>
                     <select id="sido_select" class="long-input">
                          <option value="" selected disabled hidden>지역을 선택하세요</option>   
				          <option value="부산/울산/경남/대구">부산/울산/경남/대구</option>
				          <option value="제주">제주</option>
				          <option value="서울">서울</option>
				          <option value="인천/경기">인천/경기</option>
				          <option value="강원도">강원도</option>
				          <option value="충청/대전">충청/대전</option>
				          <option value="전라/광주">전라/광주</option>
                     </select><br>
		<input class="long-input" type="text" name="car" value="" placeholder="&nbsp;관심있는 차종을 입력하세요"><br>
                     <select id="whoareyou" class="long-input">
                            <option value="" selected disabled hidden>문의자 유형</option>   
                            <option value="개인">개인</option>
                            <option value="개인사업자">개인사업자</option>
                            <option value="법인">법인</option>
                     </select><br>
		<textarea class="long-input" name="msg" value="" style="height:200px; padding-top:13px;" placeholder="&nbsp;문의사항을 입력하세요"></textarea>
							<div style="text-align: center; padding-top: 15px;">
							<input type="button" value="제출하기" class="btn btn-primary" style="font-size:18px;" onclick="fralert();">
						</div>
		</form>
	</section>
		<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp" />
		<!-- 푸터들어가는 곳 -->
    
  

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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="./js/google-map.js"></script>
  <script src="./js/main.js"></script>
    
  </body>
</html>