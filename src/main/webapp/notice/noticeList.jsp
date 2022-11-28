<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="./css/board.css">
<link rel="stylesheet" href="./css/admin_my.css">


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

<script type="text/javascript">
<!-- input에 오늘날짜 기본값으로 넣기 -->
	window.onload = function() {
		today = new Date();
		console.log("today.toISOString() >>>" + today.toISOString());
		today = today.toISOString().slice(0, 10);
		console.log("today >>>> " + today);
		bir = document.getElementById("todaybirthday");
		bir.value = today;
	}
</script>
	
<style>

<!-- 사이드바 --> 

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
    max-width: 27.33333%; 
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
/* 사이드바 */
</style>

</head>
<body>
	<div id="wrap">
		<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp" />
		
		<section class="hero-wrap hero-wrap-2 js-fullheight" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="./ReservationMain.rez">Home <i class="ion-ios-arrow-forward"></i></a></span> 
						<span>고객센터 <i class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">공지사항</h1>
				</div>
			</div>
			
			
			
			</div>
		</section>
		<!-- 헤더들어가는 곳 -->

		<!-- left -->
		<section class="ftco-section contact-section bg-light">
			<div class="container">
				<div class="row d-flex mb-5 contact-info">
				
				<!-- @@@@@@@@@@@@여기부터 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
					<jsp:include page="../inc/sidebar.jsp" />
				<!-- @@@@@@@@@@@@여기까지 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->

					<!-- 우측 -->
					<div class="col-md-8 block-9 mb-md-5">
						<div class="board_wrap">
							<div class="board_title">
								<strong>공지사항</strong>
								<!--  검색 폼 -->
								<p>전체 글 개수 : ${requestScope.totalCnt } 개</p>
								<div class="n_search" border="1" width="90%">
									<div align="right">
										<input type="text" name="search"> 
										<input type="submit" value="Search" class="btn btn-outline-primary">
									</div>
								</div>
							</div>

							<div class="board_list_wrap">
								<div class="board_list">
									<div class="top">
										<div class="num">번호</div>
										<div class="title">제목</div>
										<div class="count">작성일</div>
										<div class="count">조회수</div>
									</div>

									<c:forEach var="boDTO" items="${noticeListAll }">
										<div>
											<div class="num">${boDTO.bo_num }</div>
											<div class="title">
												<a href="./NoticeDetail.nb?bo_num=${boDTO.bo_num }&pageNum=${pageNum}">${boDTO.bo_title }</a>
											</div>
											<div class="count">${boDTO.bo_sysdate }</div>
											<div class="count">${boDTO.bo_readcount }</div>
										</div>
									</c:forEach>

								</div>
							</div><br>
							
							<!-- 페이지처리 이전,다음 -->
						   	<div class="n_page" align="center"> 
						   		<c:if test="${requestScope.cnt != 0}">
								    <!-- 이전 -->
								    <c:if test="${startPage > pageBlock }">
								    	<a href="./AdminNoticeList.nb?pageNum=${startPage-pageBlock }" class="btn btn-outline-primary"><<</a>
								    </c:if>
								    <!-- 페이지 번호(1,2,3....) -->	  
								    <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
								          <a href="./AdminNoticeList.nb?pageNum=${i }" class="btn btn-outline-primary" >${i }</a> 
								    </c:forEach>  
								    
								    <!-- 다음 -->	
								    <c:if test="${endPage < pageCount }">
								        <a href="./AdminNoticeList.nb?pageNum=${startPage+pageBlock }" class="btn btn-outline-primary">>></a>
								    </c:if>
								</c:if>
						   	</div>
						   	<!-- 페이지처리 이전,다음 -->
							
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
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>
<script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>
</body>
</html>