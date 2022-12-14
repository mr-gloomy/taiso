<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
    <title>관리자</title>
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
    <link rel="stylesheet" href="./css/adminReservation.css">
    
    
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

<style type="text/css">
.btn btn-primary py-1 mr-1 {
	font-size: 20px;
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
    
 <style type="text/css">
 .adminReservation_title {
    margin-bottom: 10px;
}

.adminReservation_title strong {
    font-size: 2rem;
    color: #1089FF;
}

.adminReservation_title h2 {
    font-size: 2rem;
    color: #6c757d;
}

.adminReservation_title b {
    font-size: 1rem;
    color: #dc3545;
}
 </style>   
    
    
    
    <script type="text/javascript">
    	function goBack(){
    		window.history.back();
    	}
    </script>
    </head>
<body>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
	<jsp:include page="../inc/top.jsp"/>
	    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_6.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
      	<div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="./AdminMain.mb">admin <i class="ion-ios-arrow-forward"></i></a></span> 
						<span>admin Reservation <i class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">관리자 예약 상세조회</h1>
				</div>
			</div>
      </div>
    </section>
<!-- 헤더들어가는 곳 -->
<!-- 메인 -->
  	<section class="ftco-section2 bg-light">
  	<div class="adminReservation_title" >
<%--            <h1>[예약번호 : ${rezDTO.rez_uqNum }] ${rezDTO.mem_id }님의 예약 상세정보</h1> --%>
			<c:if test="${rezDTO.rez_status == 1}">
				<input type = "button" class="btn btn-primary py-1 mr-1" value="예약 완료">
            </c:if>
			<c:if test="${rezDTO.rez_status == 0}">
				<input type = "button" class="btn btn-primary3 py-1 mr-1" value="예약 취소">
            </c:if>
           <h2>[예약번호 : ${rezDTO.rez_uqNum }] <strong>${rezDTO.mem_id }님의 예약 상세정보</strong></h2>
    </div>
        <div class="row">
				<div class="col-md-4-2">
					<div class="car-wrap rounded ftco-animate">
						<!-- 이 자리에 foreach로 반복문 돌리면 됩니당! -->
						<div class="text">
<!-- 							<div class="d-flex mb-3"> -->
<!-- 								<span class="cat" style="text-align:right;width:95%;">단기렌트</span> -->
<%-- 								<span class="cat" style="text-align:right;width:95%;">예약번호 : ${rezDTO.rez_uqNum }</span> --%>
<!-- 							</div> -->
<!-- 							<div class="d-flex mb-3"> -->
<!-- 								<span class="cat"></span> -->
<!-- 							</div> -->
<!-- 							<h2 class="mb-0"> -->
<%-- 								<a href="car-single.html">${rezDTO.car_name }</a>ㅤ<input type = "button" class="btn btn-primary py-1 mr-1" value="${rezDTO.rez_status }"> --%>
<!-- 							</h2> -->
<!-- 							<br><br> -->
							
							<br><br>
							<div class="board_list_wrap">
					            <div class="board_list">
					            	
					            	<h4>예약자 정보</h4>
					                <div class="top">
					                    <div class="date3" style="color:white">아이디</div>
					                    <div class="title">${rezDTO.mem_id }</div>
					                    <div class="date3" style="color:white">예약번호</div>
					                    <div class="title">${rezDTO.rez_uqNum }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">예약상태</div>
					                    <div class="title">${rezDTO.rez_status }</div>
					                    <div class="date3" style="color:white">차종</div>
					                    <div class="title">${carDTO.car_name }</div>
					                </div>
					               
					                <br><br><br>
					            </div>
					            <div class="board_list">
					            	
					            	<h4>예약 정보</h4>
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
					               
					                <br><br><br>
					            </div>
					             <div class="board_list">
					            	
					            	<h4>선택 차량 정보</h4>
					                <div class="top">
					                    <div class="date3" style="color:white">차량브랜드</div>
					                    <div class="title">${carDTO.car_brand }</div>
					                    <div class="date3" style="color:white">차량연식</div>
					                    <div class="title">${carDTO.car_year } 년</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">차량연료</div>
					                    <div class="title">${carDTO.car_fuel }</div>
					                    <div class="date3" style="color:white">차량가격</div>
					                    <div class="title">${carDTO.car_price } 원</div>
					                </div>
					               
					                <br><br><br>
					            </div>
					            <div class="board_list">
					            	
					            	<h4>운전자 정보</h4>
					                <div class="top">
					                    <div class="date3" style="color:white">이름</div>
					                    <div class="title">${mDTO.mem_name }</div>
					                    <div class="date3" style="color:white">생년월일</div>
					                    <div class="title">${mDTO.mem_birthday }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">휴대폰번호</div>
					                    <div class="title">${mDTO.mem_phone }</div>
					                    <div class="date3" style="color:white">면허종류</div>
					                    <div class="title">${rezDTO.license_type }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">면허증번호</div>
					                    <div class="title">${rezDTO.license_num }</div>
					                    <div class="date3" style="color:white">면허발급일자</div>
					                    <div class="title">${rezDTO.license_issueDate }</div>
					                </div>
					               
					                <br><br><br>
					            </div>
					            <div class="board_list">
					            	
					            	<h4>결제 정보</h4>
					                <div class="top">
					                    <div class="date3" style="color:white">결제수단</div>
					                    <div class="title">${payDTO.pay_method }</div>
					                    <div class="date3" style="color:white">결제상태</div>
					                    <div class="title">${payDTO.pay_status }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">결제번호</div>
					                    <div class="title">${payDTO.pay_uqNum }</div>
					                    <div class="date3" style="color:white">결제일자</div>
					                    <div class="title">${payDTO.pay_date }</div>
					                </div>
					                <div class="top">
					                    <div class="date3" style="color:white">총 결제 금액</div>
					                    <div class="title">${payDTO.pay_total } 원</div>
					                    <div class="date3" style="color:white">취소 시 수수료</div>
					                    <div class="title"><fmt:formatNumber type="number" maxFractionDigits="0" value="${payDTO.pay_total*0.1 }" /> 원</div>
					                </div>
					               
					                <br><br><br>
					            </div>
							</div>
<!-- 					     </div> -->
                
					               
					                
								    </div>
<!-- 										<div class="d-flex mb-3" style="display: flex; justify-content: center;" > -->
											<div id="table_search" align="center">
											 <form action="" name="fr" method="post">
							   					  <input type="hidden" name="mem_id" value="${mDTO.mem_id }" >   
							   					  <input type="hidden" name="pay_uqNum" value="${payDTO.pay_uqNum }" >   
											 </form>
											 <input type = "button" class="btn btn-primary py-2 mr-1" value = "목록페이지로 돌아가기" onclick="goBack();" />
											
											<br><br><br>
										</div>
									</div>
									
					                <br><br><br>
					               </div>  
					                
					            </div>
							</div>
						
					</div>
					</section>
        </div>
<!-- <div id="table_search"> -->
<!-- 	<input type="button" value="관리자메인페이지로이동" class="btn" -->
<!-- 		onclick=" location.href='./여기에가상주소입력';" -->
	
	<!-- 푸터들어가는 곳 -->
	<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->



<div class="clear"></div>
<div id="page_control">
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