<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
    
    <style>
    .ftco-section3 {
	  padding: 6em 0;
	  padding-left: 25em;
	  position: relative;
    }
    
     .form-control2 {
	  height: 40px !important;
	  width: 200px;
	  background: #fff !important;
	  color: #000000 !important;
	  border: 1px solid #ced4da;
	  font-size: 15px;
	  padding : 0.375rem 0.75rem;
	  border-radius: 5px;
	  -webkit-box-shadow: none !important;
	  box-shadow: none !important;
  	}
  	
  	     .form-control3 {
	  height: 200px !important;
	  width: 200px;
	  background: #fff !important;
	  color: #000000 !important;
	  border: 1px solid #ced4da;
	  font-size: 15px;
	  padding : 0.375rem 0.75rem;
	  border-radius: 5px;
	  -webkit-box-shadow: none !important;
	  box-shadow: none !important;
  	}
    
/*     .one{ */
/*     float:left; */
/*     } */
/*     .two{ */
/*     float:right; */
/*     } */
    </style>
    
    
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
          	<p class="breadcrumbs"><span class="mr-2"><a href="./ReservationMain.rez">Home <i class="ion-ios-arrow-forward"></i></a></span> <span><a href="./LongTerm.rez">렌트하기 <i class="ion-ios-arrow-forward"></i></a></span></p>
            <h1 class="mb-3 bread">장기렌트 문의</h1>
          </div>
        </div>
      </div>
    </section>

	<section class="ftco-section3">
          <div class="col-md-8 block-9 mb-md-5">
            <form action="./ReviewWriteProAction.rev" name = "fr" class="bg-light p-5 contact-form" method="post" enctype="multipart/form-data">
           	 <h3><b>　　　　　　　　간편 견적 신청</b></h3><br>
						<label>　　　　　이름　　　　　　　　　　　  　　<input type="text" name="rez_rentalDate" class="form-control2" value="" readonly="readonly"></label><br> <!-- rezDTO -->
                        <label>　　　　　연락처　　　　　　　　　　  　　<input type="text" name="rez_returnDate" value="" class="form-control2" readonly="readonly"></label><br>
                        <label>　　　　　지역　　　　　　　　　　　　　</label>
                        <select id="sido_select" class="form-control2">
                            <option value="" selected disabled hidden>지역을 선택하세요</option>   
                            <option value="제주">제주</option>
                            <option value="서울">서울</option>
                            <option value="인천/경기">인천/경기</option>
                            <option value="강원도">강원도</option>
                            <option value="충청/대전">충청/대전</option>
                            <option value="전라/광주">전라/광주</option>
                            <option value="경상/부산/대구/울산">경상/부산/대구/울산</option>
                     </select><br>
                        <label>　　　　　관심차종　　　　　　　　　　　</label>
                        <select id="sido_select" class="form-control2">
                            <option value="" selected disabled hidden>차량을 선택하세요</option>   
                            <option value="레이">레이</option>
                            <option value="기아">기아</option>
                            <option value="모델S">모델S</option>
                            <option value="countryman">컨트리맨~</option>
                            <option value="쏘나타">쏘나타</option>
                            <option value="아이오닉">아이오닉</option>
                     </select><br>
                  <label>　　　　　구분　　　　　 　　　 　　　　　</label>
                  <input type="radio" name="whoareyou" value="개인"> 개인 
                  <input type="radio" name="whoareyou" value="개인사업자"> 개인사업자 
                  <input type="radio" name="whoareyou" value="법인"> 법인
                  <label>　　　　　문의사항　　　 　　 　　　  　 　</label>
                  <textarea class="form-control3" rows="10" cols="50">문의사항을 적어주세요</textarea> <br><br>
                  <div style="text-align: center;"><input type="submit" value="제출하기" class="btn btn-primary py-2 px-2"></div>
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