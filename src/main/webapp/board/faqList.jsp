<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>타이소</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

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
    <link rel="stylesheet" href="./css/admin_my.css">
    <link rel="stylesheet" href="./css/board.css">
    <link rel="stylesheet" href="./css/acodian.css">
    
    
      <!-- 사이드바 --> 
<style>


ul {
  list-style: none;
}

#a-menu{
color: #fffff !important; 
}

h2 {
  text-align: center;
  margin: 20px auto;
  color: #fff;
}

.accordion-menu {
  width: 100%;
  max-width: 350px;
  margin: 27px auto 20px;
  background: #fff;
  border-radius: 4px;
}
.accordion-menu li.open .dropdownlink {
  color: #1089FF;
  .fa-chevron-down {
    transform: rotate(180deg);
  }
}
.accordion-menu li:last-child .dropdownlink {
  border-bottom: 0;
}
.dropdownlink {
  cursor: pointer;
  display: block;
  padding: 15px 15px 15px 45px;
  font-size: 18px;
  border-bottom: 1px solid #ccc;
  color: #212121;
  position: relative;
  transition: all 0.4s ease-out;
  i {
    position: absolute;
    top: 17px;
    left: 16px;
  }
  .fa-chevron-down {
    right: 12px;
    left: auto;
    padding: 10px;
    top: 10px;
    line-height: 1;
  }
}

.dropdownlink2 {
    cursor: pointer;
    display: block;
    padding: 15px 15px 20px 15px;
    font-size: 18px;
    border-bottom: 1px solid #ccc;
    color: #ffffff;
    position: relative;
    background: #1089ff;
    transition: all 0.4s ease-out;
    border-radius: 10px;
  i {
    position: absolute;
    top: 17px;
    left: 16px;
  }
  .fa-chevron-down {
    right: 12px;
    left: auto;
    padding: 10px;
    top: 10px;
    line-height: 1;
  }
}

.submenuItems {
  display: none;
  background: #E5E5E5;
  li {
    border-bottom: 1px solid #B6B6B6;
  }
}

.submenuItems a {
  display: block;
  color: #fffff !important;
  padding: 12px 12px 12px 45px;
  transition: all 0.4s ease-out;
  &:hover {
    background-color: #CDDC39;
    color: #fff;
  }
}


.m-col-md-4 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 33.33333%;
    flex: 0 0 33.33333%;
    max-width: 24.33333%; 
    margin-right: 35px;
/*     margin-top: 30px; */
    border-radius: 22px;
/*     box-shadow: rgb(0 0 0 / 20%) 0px 5px 15px 0px; */
    }

.fa{
vertical-align:middle;
padding: 5px;
float: right;

}

</style>

<!-- 사이드바 -->   
    <!-- 배경색 -->
    <style> 
    .bg-light {
    background: #f8f9fa !important;
}
    </style>
	<!-- 배경색 -->
	
  </head>
  <body>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp"/>
	<!-- 헤더들어가는 곳 -->

	    
    <!--  -->
    <section class="hero-wrap hero-wrap-2 js-fullheight" 
      style="background-image: url('images/bg_6.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="./ReservationMain.rez">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>고객센터 <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">FAQ</h1>
          </div>
        </div>
      </div>
    </section>
	<!--  -->
	 
	<!-- left -->
    <section class="ftco-section contact-section bg-light">
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

     
<!--       	<head> -->
<!--     <meta charset="UTF-8"> -->

<!--     <link rel="stylesheet" href="style.css"> -->
<!--     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/> -->
<!-- </head> -->
<!-- <body> -->
      	
      		<div class="col-md-12 pills">
						<div class="bd-example bd-example-tabs">
							<div class="d-flex justify-content-center">
							  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

							    <li class="nav-item">
							      <a class="nav-link active" id="pills-1-tab" data-toggle="pill" href="#pills-1" role="tab" aria-controls="pills-1" aria-expanded="true">이용안내</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" id="pills-2-tab" data-toggle="pill" href="#pills-2" role="tab" aria-controls="pills-2" aria-expanded="true">예약/결제</a>
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
						    
								 <!-- -------------아코디언 메뉴--------------- -->
								  
								  <div class="wrapper">
								    <!-- Accordion Heading One -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-1" checked>
								      <label for="tab-1">
								        <span id="cate">Q. 기존 예약을 취소하고 변경하고 싶어요  </span> 
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 예약 변경은 새로운 예약 진행 후, 기존 예약을 취소하는 방법으로 가능합니다. <br>
											SK 렌터카 홈페이지에서 변경을 원하시는 일정에 차량 대여 가능 여부 확인 후 재 예약으로 진행해주셔야 하며, 재 예약 후 기존 예약은 취소 부탁드립니다.<br>
											실시간으로 예약이 진행되고 있어 재 예약 진행 시 반드시 이용 가능 여부를 먼저 확인 부탁드립니다. </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Two -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-2">
								      <label for="tab-2">
								        <span>Q. 단기렌터카 예약은 어떻게 하나요?</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 타이소 메인 페이지 속 예약하기를 이용하시면 빠르게 예약하실 수 있습니다. </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Three -->
								    <div class="parent-tab tab-3">
								      <input type="radio" name="tab" id="tab-3">
								      <label for="tab-3" class="tab-3">
								        <span>Q. 지점 영업시간이 궁금합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 타이소 월~금 08:00~18:00 (고객문의 응대 가능시간) / 인수 07:30~22:00, 반납 06:00~21:00 입니다. 감사합니다.
								         </p>
								
								      </div>
								    </div>
								    <!-- Accordion Heading Four -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-6">
								      <label for="tab-6">
								        <span>Q. 딜리버리 서비스도 가능한가요?</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 단기예약 시 딜리버리 서비스는 제공이 되지 않는 점 양해 부탁드립니다. </p>
								      </div>
								    </div>
								  </div>
								      	
								      <!-- -------------아코디언 메뉴--------------- -->
						    </div>
						    								  
							
						    
						    <div class="tab-pane fade show active" id="pills-2" role="tabpanel" aria-labelledby="pills-2-tab">
								 <!-- -------------아코디언 메뉴--------------- -->
								  								  <div class="wrapper">
								    <!-- Accordion Heading One -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-555" checked>
								      <label for="tab-555">
								        <span>Q. 대여 렌트료 결제는 어떻게 해야 하나요?</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 차량 대여료는 신용카드 결제를 원칙으로 하며, 대여료 선결제 시 예약이 완료됩니다.
								         </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Two -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-666">
								      <label for="tab-666">
								        <span>Q. 내비게이션 예약하고 싶어요</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 선착순으로 지급되는 점 양해 부탁드립니다.  </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Three -->
								    <div class="parent-tab tab-3">
								      <input type="radio" name="tab" id="tab-777">
								      <label for="tab-777" class="tab-3">
								        <span>Q. 한 아이디로 여러 대를 예약할 수 있나요?</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 네, 여러 대 예약 가능합니다.</p>
								
								      </div>
								    </div>
								    <!-- Accordion Heading Four -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-888">
								      <label for="tab-888">
								        <span>Q. 예약 변경 가능한가요? </span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 예약 시간 변경을 희망하실 경우, 예약을 취소하신 후 다시 예약해주셔야 합니다. </p>
								      </div>
								    </div>
								  </div>
								      	
								      <!-- -------------아코디언 메뉴--------------- -->	
							</div>
						    
						    

						    
						    <div class="tab-pane fade" id="pills-3" role="tabpanel" aria-labelledby="pills-3-tab">
								 <!-- -------------아코디언 메뉴--------------- -->
								  
								  <div class="wrapper">
								    <!-- Accordion Heading One -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-8888" checked>
								      <label for="tab-8888">
								        <span>Q. 예약 취소 방법이 궁금합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. [ 마이페이지 > 렌탈 내역 조회 ]에서 취소 가능합니다. </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Two -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-9999">
								      <label for="tab-9999">
								        <span>Q. 단기렌트 취소, 변경 등 환불 수수료가 있나요? </span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. [ 국내 단기렌트 취소 정책 ] <br>
										※ 성수기, 비수기 구분 없이 아래 취소수수료로 적용됩니다. <br>
										※ 결제 후 무료취소 구간에 취소를 하였더라도 대여 시간이 지났을 경우 예약 금액에 대한 환불이 불가능합니다. </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Three -->
								    <div class="parent-tab tab-3">
								      <input type="radio" name="tab" id="tab-0000">
								      <label for="tab-0000" class="tab-3">
								        <span>Q. 환불하고 싶은데 계좌를 다르게 할 수 있나요?</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 1:1 문의하기로 문의해주시면 빠르게 처리해드리겠습니다. </p>
								
								      </div>
								    </div>
								    <!-- Accordion Heading Four -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-141">
								      <label for="tab-14">
								        <span>Q. 취소한 후에 바로 재예약 가능한가요?</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 가능합니다. 다시 이용해주시면 됩니다. </p>
								      </div>
								    </div>
								  </div>
								      	
								      <!-- -------------아코디언 메뉴--------------- -->	
							</div>
							
							
							
							<div class="tab-pane fade" id="pills-4" role="tabpanel" aria-labelledby="pills-4-tab">
								 <!-- -------------아코디언 메뉴--------------- -->
								  
								  <div class="wrapper">
								    <!-- Accordion Heading One -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-15" checked>
								      <label for="tab-15">
								        <span>Q. 사고가 발생하면 처리 과정이 어떻게 되나요? </span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 자차보험은 1회 소멸성으로 사고가 나면 반납을 해주셔야 합니다.<BR>
											또한 사고 처리가 완료될 때까지는 차량 예약이 불가합니다.<br>
											사고 발생했던 렌트사에서 사고 처리가 모두 완료되었을 경우, 예약이 가능합니다.
								      </div>
								    </div>
								    <!-- Accordion Heading Two -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-20">
								      <label for="tab-20">
								        <span>Q. 자차보험을 꼭 선택해야 하나요?</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 고객의 손해를 예방하고자 자차보험을 의무가입하고 있으며 자차보험 종류에 따라 보상한도와 자기부담금(면책금)이 다르며, 차량 예약시 고객이 직접 선택할 수 있습니다. </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Three -->
								    <div class="parent-tab tab-30">
								      <input type="radio" name="tab" id="tab-30">
								      <label for="tab-30" class="tab-3">
								        <span>Q. 자차보험은 사고날 때마다 보험처리가 가능한가요?</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 자차보험은 1회 소멸성으로 중복 보장이 되지 않습니다.
										 </p>
								
								      </div>
								    </div>
								      	
								      <!-- -------------아코디언 메뉴--------------- -->	
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
    <script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>
    
  </body>
</html>