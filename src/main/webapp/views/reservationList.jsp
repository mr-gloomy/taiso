<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
<title>TAISO</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">

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


<!-- 블로그 로딩 코드 start -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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

#waiting>img {
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




<script type="text/javascript">
	function deleteBoard(seq){
		Swal.fire({
		  title: '글을 삭제 하시겠습니까?',
		  text: "삭제하시면 다시 복구시킬 수 없습니다.",
		  icon: 'info',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: 'grey',
		  confirmButtonText: '삭제',
		  cancelButtonText: '취소'
		}).then((result) => {
		  if (result.value) {
	          //"등록" 버튼을 눌렀을 때 작업할 내용을 이곳에 넣어주면 된다. 
			  location.href='./ReviewDelete.rev?rez_uqNum='+seq;
		  }
		})
	}
	
	// 글 작성하는 팝업
	function writeOpen(value){
		
		var result = value.split(",");
		
		var car_code = result[0];
		var rez_uqNum = result[1];
		
	    var _width = '500';
	    var _height = '700';
	 
	    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	    var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 

 		// 새 창 열기
 		document.domain = "localhost"; //document.domain 값이 팝업과 부모창 동일해야 합니다.
 		window.open("./ReviewWrite.rev?car_code="+car_code+"&rez_uqNum="+rez_uqNum,"",'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
 		 

	}
	
	// 글 내용 수정하는 팝업
	function updateOpen(rez_uqNum){
	    var _width = '500';
	    var _height = '700';
	 
	    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	    var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 
 		// 새 창 열기
 		document.domain = "localhost"; //document.domain 값이 팝업과 부모창 동일해야 합니다.
 		window.open("./ReviewUpdate.rev?rez_uqNum="+rez_uqNum,"",'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
	}
	
</script>
</head>
<body>

	<!-- 헤더들어가는 곳 -->
	<jsp:include page="../inc/top.jsp" />
	<!-- 헤더들어가는 곳 -->

	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('images/bg_6.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container"></div>
		</div>
	</section>



	<section class="ftco-section2 bg-light">
		<h1>예약정보 조회</h1>
		<div class="row">
			<div class="col-md-4-2">
				<div class="car-wrap rounded ftco-animate">
					<c:choose>
						<c:when test="${empty reservationList }">

							<h3>예약내역이 없습니다.</h3>

						</c:when>
						<c:when test="${not empty reservationList }">
							<c:forEach var="rez" items="${reservationList }" step="1">
								<div class="text">
									<div class="d-flex mb-3">
										<span class="cat">단기렌트</span> <span class="cat"
											style="text-align: right; width: 90%;">예약번호 :
											${rez.rez_uqNum }</span>

									</div>
									<div class="d-flex mb-3">
										<span class="cat"></span>
									</div>
									<div class="d-flex mb-3">
										<span class="cat"></span>
									</div>
									<h2 class="mb-0">
										<c:if test="${rez.rez_status == 1}">
											<a href="car-single.html">${rez.car_name }</a>ㅤ<input
												type="button" class="btn btn-primary py-1 mr-1"
												value="예약 완료">
										</c:if>
										<c:if test="${rez.rez_status == 0}">
											<a href="car-single.html">${rez.car_name }</a>ㅤ<input
												type="button" class="btn btn-primary3 py-1 mr-1"
												value="예약 취소">
										</c:if>
									</h2>
									<div class="d-flex mb-3">
										<span class="cat">${rez.rez_rentalDate} ~
											${rez.rez_returnDate}</span>
									</div>
									<div class="d-flex mb-3">
										<span class="cat"></span>
									</div>
									<div class="d-flex mb-3">
										<span class="cat"></span>
									</div>
									<div class="d-flex mb-3"
										style="display: flex; justify-content: center;">
										<input type="button" class="btn btn-primary2 py-2 mr-1"
											value="예약 상세 조회"
											onclick="location.href='./ReservationInfo.rez?rez_uqNum=${rez.rez_uqNum }';">ㅤ
										<c:set var="loop_flag" value="false" />
										<c:set var="check" value="0" />
										<c:forEach var="rev" items="${reviewList }" varStatus="status">
											<c:if test="${not loop_flag }">
												<c:if test="${check == 0}">
													<c:if test="${rev.rez_uqNum == rez.rez_uqNum }">
														<input type="button" class="btn btn-primary py-2 mr-1"
															value="리뷰수정" onclick="updateOpen(${rez.rez_uqNum});">
														<input type="button" class="btn btn-primary py-2 mr-1"
															value="리뷰삭제" onclick="deleteBoard(${rez.rez_uqNum});">
														<c:set var="loop_flag" value="true" />
														<c:set var="check" value="1" />
													</c:if>
												</c:if>
											</c:if>
										</c:forEach>
										<c:if test="${check != 1}">
											<input type="button" class="btn btn-primary py-2 mr-1"
												value="리뷰작성"
												onclick="writeOpen(${rez.car_code}+','+${rez.rez_uqNum});">
											<c:set var="loop_flag" value="true" />
										</c:if>
									</div>
								</div>
							</c:forEach>
						</c:when>

					</c:choose>
				</div>
			</div>
		</div>
	</section>


	<%-- 	  <c:if test="${totalCnt != 0 }"> --%>
	<!-- 	      이전 -->
	<%-- 	      <c:if test="${startPage > pageBlock }"> --%>
	<%-- 	         <a href="./ReservationList.rez?pageNum=${startPage - pageBlock  }">[이전]</a> --%>
	<%-- 	      </c:if>    --%>

	<!-- 	      페이지 번호(1,2,3) -->
	<%-- 	      <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1"> --%>
	<%-- 	         <a href="./ReservationList.rez?pageNum=${i }">${i }</a> --%>
	<%-- 	      </c:forEach>    --%>

	<!-- 	      다음 -->
	<%-- 	      <c:if test="${endPage < pageCount }"> --%>
	<%-- 	         <a href="./ReservationList.rez?pageNum=${startPage+pageBlock }">[다음]</a> --%>
	<%-- 	      </c:if> --%>
	<%-- 	   </c:if> --%>




	<c:if test="${totalCnt != 0 }">
		<div class="col text-center">
			<div class="block-27">
				<ul>
					<!-- 이전 -->
					<c:if test="${startPage > pageBlock }">
						<a href="./ReservationList.rez?pageNum=${startPage - pageBlock  }">[이전]</a>
					</c:if>

					<!-- 페이지 번호(1,2,3...) -->
					<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
						<li <c:if test="${pageNum == i }">class="active" </c:if>><span>
								<a href="./ReservationList.rez?pageNum=${i }">${i }</a>
						</span></li>
					</c:forEach>

					<!-- 다음 -->
					<c:if test="${endPage < pageCount }">
						<a href="./ReservationList.rez?pageNum=${startPage+pageBlock }">[다음]</a>
					</c:if>
				</ul>
			</div>
		</div>

	</c:if>




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
	<div id="page_control"></div>
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
