<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>TAISO</title>
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
  </head>
  <body>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
	<jsp:include page="../inc/top.jsp"/>
	    
    <section class="hero-wrap hero-wrap-2 js-fullheight" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="./AdminMain.nb">admin<i class="ion-ios-arrow-forward"></i></a></span> 
          	<span>review <i class="ion-ios-arrow-forward"></i></span></p>
         	 <h1 class="mb-3 bread">관리자리뷰관리페이지</h1>
          </div>
        </div>
      </div>
    </section>
	<!-- 헤더들어가는 곳 -->
	
	<!-- 메인 -->
  	<div class="board_wrap2">
        <div class="board_title">
            <strong>리뷰리스트 상세내역</strong>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                	 제목 || 
                    ${adrDTO.rev_subject }
                </div>
                <div class="info">
                    <dl>
                        <dt>글번호</dt>
                        <dd>${adrDTO.rev_num }</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>${adrDTO.rev_date }</dd>
                    </dl>
                    <dl>
                        <dt>평점</dt>
                        <dd class="star"><span> 
							<c:forEach begin="1" end="${adrDTO.rev_star }" step="1">
									★
							</c:forEach>
							<c:forEach begin="1" end="${5-adrDTO.rev_star }" step="1">
									☆
							</c:forEach>
						</span>
						</dd>
                      
															
                    </dl>
                </div>
                <dt>내용</dt>
                <div class="cont">
					${adrDTO.rev_content }
                </div>
<!--                 <div class="img rounded d-flex align-items-end" -->
<%--                         style="background-image: url(./upload/${adrDTO.rev_image.split(',')[0] });">  --%>
                	<dt>첨부파일</dt>
	    	    <img src="./upload/${adrDTO.rev_image.split(',')[0] }" width="500" height="500">
<%-- 	    	    <img src="./upload/${adrDTO.rev_image.split(',')[0] }" width="50" height="50"> --%>
                </div><br>
                
            </div>
            <div align="center">
                <a href="./AdminReviewDelete.adr?rev_num=${adrDTO.rev_num }&pageNum=${pageNum }" class="btn btn-primary">삭제하기</a>
                <a href="./AdminReviewList.adr" class="btn btn-primary">목록이동</a>
            </div>
        </div>
    </div>
	<!-- 메인 -->
     
	
	
	<div class="clear"></div>
	<!-- 푸터들어가는 곳 -->
	<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->
	</div>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="20px" height="20px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

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