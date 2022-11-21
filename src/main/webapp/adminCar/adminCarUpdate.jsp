<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- 헤더 시작 -->
<title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
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
<link rel="stylesheet" href="./css/style.css">
<style type="text/css">
body {
	padding: 1.5em;
	background: #f5f5f5
}

table {
	border: 1px #a39485 solid;
	font-size: .9em;
	box-shadow: 0 2px 5px rgba(0, 0, 0, .25);
	width: 100%;
	border-collapse: collapse;
	border-radius: 5px;
	overflow: hidden;
}

th {
	text-align: left;
}

thead {
	font-weight: bold;
	color: #fff;
	background: #73685d;
}

td, th {
	padding: 1em .5em;
	vertical-align: middle;
}

td {
	border-bottom: 1px solid rgba(0, 0, 0, .1);
	background: #fff;
}

a {
	color: #73685d;
}

@media all and (max-width: 768px) {
	table, thead, tbody, th, td, tr {
		display: block;
	}
	th {
		text-align: right;
	}
	table {
		position: relative;
		padding-bottom: 0;
		border: none;
		box-shadow: 0 0 10px rgba(0, 0, 0, .2);
	}
	thead {
		float: left;
		white-space: nowrap;
	}
	tbody {
		overflow-x: auto;
		overflow-y: hidden;
		position: relative;
		white-space: nowrap;
	}
	tr {
		display: inline-block;
		vertical-align: top;
	}
	th {
		border-bottom: 1px solid #a39485;
	}
	td {
		border-bottom: 1px solid #e5e5e5;
	}
}
</style>
</head>
<body>

	<jsp:include page="../inc/top.jsp"></jsp:include>

	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('../images/bg_3.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Cars <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">당신의 차를 선택하라.</h1>
				</div>
			</div>
		</div>
	</section>


	<!-- 반복문으로 DB에 있는 모든 차량 불러오기 -->
	
						<!-- 하단에 링크 걸어서 차량 사진 불러오기 -->
						<!-- 게시판 -->
<%
// 	/* 로그인 제어 */
// 	String id = (String) session.getAttribute("id");
// 	 if(id == null || !id.equals("admin")){
// 		 response.sendRedirect("./Main.me");
// 		 System.out.println("비정상적 접근 발생 ! IP :" + request.getRemoteAddr());
// 	 }


%>

<!-- 게시판 -->
<article>
<h1> 관리자 상품 수정페이지 </h1>
 <form action="./AdminCarUpdatePro.ad" method="post" >
 	<input type="hidden" name="car_code" value="${dto.car_code }">
  <table id="notice">
	<tr>
	    <th class="" colspan="2">ITWILL 상품수정</th>
	</tr>
	<tr>
		<td>카테고리</td>
		<td>
			<select name="car_category">
				<option value="small"
					<c:if test="${dto.car_category.equals('small') }">
					selected="selected"
					</c:if>
					>소형</option>
				<option value="compact"
				<c:if test="${dto.car_category.equals('compact') }">
					selected="selected"
					</c:if>
					>준중형</option>
				<option value="middle"
				<c:if test="${dto.car_category.equals('middle') }">
					selected="selected"
					</c:if>
					>중형</option>
				<option value="large"
				<c:if test="${dto.car_category.equals('large') }">
					selected="selected"
					</c:if>
					>대형</option>
				<option value="suv"
				<c:if test="${dto.car_category.equals('suv') }">
					selected="selected"
					</c:if>
					>SUV</option>
				<option value="foreign"
				<c:if test="${dto.car_category.equals('foreign') }">
					selected="selected"
					</c:if>
					>수입차</option>
			</select>
		</td>
   </tr>
   	<tr>
		<td>상품명</td>
		<td>
			<input type="text" name="car_name" value="${dto.car_name }">
		</td>
   </tr>
   <tr>
		<td>브랜드명</td>
		<td>
			<input type="text" name="car_brand" value="${dto.car_brand }">
		</td>
   </tr>
   	<tr>
		<td>렌트가</td>
		<td>
			<input type="text" name="car_price" value="${dto.car_price }">원
		</td>
   </tr>
   
   <tr>
		<td>연식</td>
		<td>
			<input type="text" name="car_year" value="${dto.car_year }">년
		</td>
   </tr>
   <tr>
		<td>연료</td>
		<td>
			<input type="text" name="fuel" value="${dto.car_fuel }">
		</td>
   </tr>
   <tr>
		<td>옵션</td>
		<td>
			<input type="text" name="car_op" value="${dto.car_op }">
		</td>
   </tr>
   <tr>
		<td>사용지역</td>
		<td>
			<input type="radio" name="car_location" value="1"
				<c:if test="${dto.car_location == 1 }">
					checked
					</c:if>
			> 내륙
			<input type="radio" name="car_location" value="0"
			<c:if test="${dto.car_location == 0 }">
					checked
					</c:if>
			> 제주
		</td>
   </tr>
  

  </table>
	
	
		<input type="submit" value="상품수정" >
	
</form>

<!-- 게시판 -->
					

			
		</div>
	</section>


	<jsp:include page="../inc/bottom.jsp"></jsp:include>



	<!-- 자바스크립트, 화면 설정 관련 -->
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

</body>
</html>