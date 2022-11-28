<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- 헤더 시작 -->
<title>TAISO</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">

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
<link rel="stylesheet" href="./css/adminCar.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<style type="text/css">
body {
	padding: 0em;
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
<script type="text/javascript">
	function deleteCar(seq){
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
			  location.href='./AdminCarDelete.ad?car_code='+seq;
		  }
		})
	}
	</script>
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
					<h1 class="mb-3 bread">관리자 차량관리</h1>
				</div>
			</div>
		</div>
	</section>


	<!-- 반복문으로 DB에 있는 모든 차량 불러오기 -->
	
						<!-- 하단에 링크 걸어서 차량 사진 불러오기 -->
						<!-- 게시판 -->
<div class="adminCar_wrap2">
<div class="adminCar_title">
            <strong>[관리자] 차량리스트</strong>
  			<p> 전체 차량 대수 : ${requestScope.totalCnt } 개 </p>          
  </div>
	<div>
		  <a class="btn btn-primary" href="./AdminCarList.ad">전체</a>
	      <a class="btn btn-primary" href="./AdminCarList.ad?item=small">소형</a>
	      <a class="btn btn-primary" href="./AdminCarList.ad?item=compact">준중형</a>
	      <a class="btn btn-primary" href="./AdminCarList.ad?item=middle">중형</a> 
	      <a class="btn btn-primary" href="./AdminCarList.ad?item=large">대형</a> 
	      <a class="btn btn-primary" href="./AdminCarList.ad?item=suv">suv</a>
	      <a class="btn btn-primary" href="./AdminCarList.ad?item=foreign">수입차</a>
	</div>
 <div class="adminCar_list_wrap">
            <div class="adminCar_list">
               <div class="top">
               	<div class="num">상품번호</div>
               	 <div class="count">브랜드명</div>
                 <div class="count">차량명</div>
                 <div class="count">카테고리</div>
                 <div class="count3">지점</div>
                  <div class="count">렌트가격</div>
                  <div class="title3">옵션</div>
                  <div class="count">연식</div>
                  <div class="count2">관리</div>
                 </div>
               	
    <c:forEach var="dto" items="${adminCarList }">
	 <div>
			<div class="num">${dto.car_code }</div>
		<div class="count">${dto.car_brand }</div>
		<div class="count">${dto.car_name }</div>
		<div class="count">${dto.car_category }</div>
		<div class="count3">${dto.car_site }</div>
<!-- 	    <td> -->
<%-- 	    	<img src="./upload/${dto.car_file.split(',')[0] }" width="50" height="50"> --%>
<!-- 	    </td> -->
	    <div class="count">${dto.car_price }</div>
	   <div class="title3">${dto.car_op }</div>
	    <div class="count">${dto.car_year }</div>
	   <div class="count2">
	    <input type ="button" class="btn btn-primary py-2 mr-1" value="수정" onclick="location.href='./AdminCarUpdate.ad?car_code=${dto.car_code }';">
	    |
	    <input type = "button" class="btn btn-primary py-2 mr-1" value = "삭제" onclick="deleteCar(${dto.car_code });">
		
	    </div>
    </div>
	</c:forEach>
</div>

<!-- 게시판 -->
					

			<!-- 페이징처리 -->
    			<c:if test="${totalCnt != 0 }">

			<!--     	<div class="row mt-5"> -->
			<div class="col text-center">
				<div class="block-27">
			 <div>
					<ul>
			<!-- 이전 -->
			<c:if test="${startPage > pageBlock }">
				<a href="./AdminCarList.ad?pageNum=${startPage-pageBlock }">[이전]</a>
			</c:if>
						<!-- 페이지 번호(1,2,3...) -->
					<c:forEach var="i" begin="${startPage }" end="${endPage }"
						step="1">
					

							<li <c:if test="${pageNum == i }">class="active" </c:if>
								
							>
						<span>
						<a href="./AdminCarList.ad?pageNum=${i }">${i }</a>
						</span>
						</li>
						

						</c:forEach>
			<!-- 다음 -->
			<c:if test="${endPage < pageCount }">
				<a href="./AdminCarList.ad?pageNum=${startPage+pageBlock }">[다음]</a>
			</c:if>
					</ul>
				</div>
			</div>
			</div>
			<div id="table_search">
	<input type="button" value="상품등록" class="btn btn-primary py-2 mr-1" 
		onclick="location.href='./AdminCarAdd.ad';">
		<input type="button" value="관리자메인페이지로이동" class="btn btn-primary py-2 mr-1" 
			onclick=" location.href='./AdminMain.mb';" >
			</div>
			
		</c:if>
</div>
</div>
			



<!-- 푸터들어가는 곳 -->
	<jsp:include page="../inc/bottom.jsp" />
<!-- 푸터들어가는 곳 -->

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