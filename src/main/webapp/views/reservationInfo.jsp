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
    <link rel="stylesheet" href="./css/board2.css">
    
        <script type="text/javascript">
     
 	// 예약 취소 여는 팝업창
 	function cancelOpen(value){
 		
		var result = value.split(",");
		
		var rez_uqNum = result[0];
		var pay_total = result[1];

 	    var _width = '672';
 	    var _height = '472';
 	 
 	    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
 	    var _left = Math.ceil(( window.screen.width - _width )/2);
 	    var _top = Math.ceil(( window.screen.height - _height )/2); 

  		// 새 창 열기
  		document.domain = "localhost"; //document.domain 값이 팝업과 부모창 동일해야 합니다.
  		window.open("./ReservationCancelCheck.rez?rez_uqNum="+rez_uqNum+"&pay_total="+pay_total,"",'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
 	}
   

   </script>
    
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
						<!-- 이 자리에 foreach로 반복문 돌리면 됩니당! -->
						<div class="text">
							<div class="d-flex mb-3">
								<span class="cat">단기렌트</span>
								<span class="cat" style="text-align:right;width:95%;">예약번호 : ${rezDTO.rez_uqNum }</span>
							</div>
							<div class="d-flex mb-3">
								<span class="cat"></span>
							</div>
							<h2 class="mb-0">
									<c:if test="${rezDTO.rez_status == 1}">
										<a href="car-single.html">${rez.car_name }</a>ㅤ<input type = "button" class="btn btn-primary py-1 mr-1" value="예약 완료">
									</c:if>
									<c:if test="${rezDTO.rez_status == 0}">
										<a href="car-single.html">${rez.car_name }</a>ㅤ<input type = "button" class="btn btn-primary3 py-1 mr-1" value="예약 취소">
									</c:if>	
							</h2>
							<br><br>
							
							
							<div class="board_list_wrap">
					            <div class="board_list">
					            	
					            	<h4>예약 정보</h4>
					                <div class="top2">
					                    <div class="title"></div>
					                    <div class="title"></div>
					                    <div class="title"></div>
					                    <div class="title"></div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">예약일자</div>
					                    <div class="title">${rezDTO.rez_rentalDate }</div>
					                    <div class="date3" style="color:white">대여/반납 장소</div>
					                    <div class="title">${rezDTO.rez_site }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">대여일시</div>
					                    <div class="title">${rezDTO.rez_rentalDate }</div>
					                    <div class="date3" style="color:white">반납일시</div>
					                    <div class="title">${rezDTO.rez_returnDate }</div>
					                </div>
					               
					                <br>
					            </div>
							</div>
					     </div>
					      	
					      	<div class="board_list_wrap">
					            <div class="board_list2">
					            	<h4>결제 정보</h4>
					                <div class="top2">
					                    <div class="title"></div>
					                    <div class="title"></div>
					                    <div class="title"></div>
					                    <div class="title"></div>
					                </div>
					            	
					                <div class="top">
					                    <div class="date3" style="color:white">결제수단</div>
					                    <div class="title2"></div>
					                    <div class="title" style="text-align: center;">${payDTO.pay_method }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">대여요금</div>
					                    <div class="title2"></div>
					                    <div class="title" style="text-align: center;">${payDTO.pay_total }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">할인적용</div>
					                    <div class="title2"></div>
					                    <div class="title" style="text-align: center;">없음</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">수수료</div>
					                    <div class="title2"></div>
					                    <div class="title" style="text-align: center;">20,000원</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">총 결제 금액</div>
					                    <div class="title2"></div>
					                    <div class="title" style="text-align: center;">${payDTO.pay_total }</div>
					                </div>
					                
					                <br>
					                
					            </div>
							</div>
							
					      	<div class="board_list_wrap">
					            <div class="board_list2">
					            	<h4>운전자 정보</h4>
					                <div class="top2">
					                    <div class="title"></div>
					                    <div class="title"></div>
					                    <div class="title"></div>
					                    <div class="title"></div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">이름</div>
					                    <div class="title2"></div>
					                    <div class="title" style="text-align: center;">${mDTO.mem_name }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">법정생년월일</div>
					                    <div class="title2"></div>
					                    <div class="title" style="text-align: center;">${mDTO.mem_birthday }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">휴대폰번호</div>
					                    <div class="title2"></div>
					                    <div class="title" style="text-align: center;">${mDTO.mem_phone }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">면허 종류</div>
					                    <div class="title2"></div>
					                    <div class="title" style="text-align: center;">${rezDTO.license_type }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">면허증 번호</div>
					                    <div class="title2"></div>
					                    <div class="title" style="text-align: center;">${rezDTO.license_num }</div>
					                </div>
					                
					                <br><br><br>
					                
								    </div>
										<div class="d-flex mb-3" style="display: flex; justify-content: center;">
											 <form action="" name="fr" method="post">
							   					  <input type="hidden" name="mem_id" value="${mDTO.mem_id }" >   
							   					  <input type="hidden" name="pay_uqNum" value="${payDTO.pay_uqNum }" >   
											 </form>
											 <input type = "button" class="btn btn-primary py-1 mr-1" value = "예약 조회로 돌아가기" onclick="location.href='./ReservationList.rez';">ㅤ
											 
											 <c:if test="${rezDTO.rez_status == 1}">
											 	<input type = "button" class="btn btn-primary py-2 mr-1" value = "예약 취소" onclick="cancelOpen(${rezDTO.rez_uqNum }+','+${payDTO.pay_total*0.9});">
											 </c:if>
											 <c:if test="${rezDTO.rez_status == 0}">
											 </c:if>	
											
										</div>
									</div>
									
					                <br><br><br>
					                
					                
					            </div>
							</div>
						
					</div>
				</div>
			</div>
		</section>



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
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	
	
  </body>
</html>