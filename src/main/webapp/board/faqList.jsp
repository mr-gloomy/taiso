<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>타이소</title>
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
    <section class="hero-wrap hero-wrap-2 js-fullheight" data-stellar-background-ratio="0.5">
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
								        <span id="cate">Q. 질문합니다 </span> 
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Two -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-2">
								      <label for="tab-2">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Three -->
								    <div class="parent-tab tab-3">
								      <input type="radio" name="tab" id="tab-3">
								      <label for="tab-3" class="tab-3">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								
								      </div>
								    </div>
								    <!-- Accordion Heading Four -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-6">
								      <label for="tab-6">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
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
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Two -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-666">
								      <label for="tab-666">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Three -->
								    <div class="parent-tab tab-3">
								      <input type="radio" name="tab" id="tab-777">
								      <label for="tab-777" class="tab-3">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다</p>
								
								      </div>
								    </div>
								    <!-- Accordion Heading Four -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-888">
								      <label for="tab-888">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
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
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Two -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-9999">
								      <label for="tab-9999">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Three -->
								    <div class="parent-tab tab-3">
								      <input type="radio" name="tab" id="tab-0000">
								      <label for="tab-0000" class="tab-3">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								
								      </div>
								    </div>
								    <!-- Accordion Heading Four -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-141">
								      <label for="tab-14">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
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
								        <span>Q. 질문합니다 </span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Two -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-20">
								      <label for="tab-20">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Three -->
								    <div class="parent-tab tab-30">
								      <input type="radio" name="tab" id="tab-30">
								      <label for="tab-30" class="tab-3">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								
								      </div>
								    </div>
								    <!-- Accordion Heading Four -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-60">
								      <label for="tab-60">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
								    </div>
								  </div>
								      	
								      <!-- -------------아코디언 메뉴--------------- -->	
							</div>
							
							
							
							
							
							<div class="tab-pane fade" id="pills-5" role="tabpanel" aria-labelledby="pills-5-tab">
								 <!-- -------------아코디언 메뉴--------------- -->
								  
								  <div class="wrapper">
								    <!-- Accordion Heading One -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-1908" checked>
								      <label for="tab-1908">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Two -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-29">
								      <label for="tab-29">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
								    </div>
								    <!-- Accordion Heading Three -->
								    <div class="parent-tab tab-3">
								      <input type="radio" name="tab" id="tab-39">
								      <label for="tab-39" class="tab-39">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								
								      </div>
								    </div>
								    <!-- Accordion Heading Four -->
								    <div class="parent-tab">
								      <input type="radio" name="tab" id="tab-69">
								      <label for="tab-69">
								        <span>Q. 질문합니다</span>
								        <div class="icon"><i class="fas fa-plus"></i></div>
								      </label>
								      <div class="content">
								        <p>A. 답변입니다 </p>
								      </div>
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