<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>관리자</title>
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
    
<style type="text/css">
.board_list .title3 {
    width: 40%;
}
</style>

  </head>
  <body>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
	<jsp:include page="../inc/top.jsp"/>
	    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_6.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
      	<div
			class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-5">
				<p class="breadcrumbs">
					<span class="mr-2"><a href="./AdminMain.mb">admin <i
							class="ion-ios-arrow-forward"></i></a></span> <span>notice <i
						class="ion-ios-arrow-forward"></i></span>
				</p>
				<h1 class="mb-3 bread">공지사항</h1>
			</div>
		</div>
      
      
      </div>
    </section>
	<!-- 헤더들어가는 곳 -->
	
	<!-- 메인 -->
	
  	<div class="board_wrap2">
        <div class="board_title">
            <strong>공지사항</strong>
            <p> 전체 글 개수 : ${requestScope.totalCnt } 개 </p>
            <!--  검색 폼 -->
			<div class="n_search" border="1" width="90%">
				<div align="right">
					<input type="text" name="search" >
					<input type="submit" value="Search" class="btn btn-outline-primary">
				</div>
			</div>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title3">제목</div>
                    <div class="date3">작성일</div>
                    <div class="count">조회수</div>
                    <div class="count">관리</div>
                </div>
                
              <c:forEach var="boDTO" items="${noticeListAll }">
                <div>
                    <div class="num">${boDTO.bo_num }</div>
                    <div class="title3">
                    	<a href="./AdminNoticeDatail.nb?bo_num=${boDTO.bo_num }&pageNum=${pageNum}">${boDTO.bo_title }</a>
                    </div>
                    <div class="date3">${boDTO.bo_sysdate }</div>
                    <div class="count">${boDTO.bo_readcount }</div>
                    <div class="count">
						<input type="button" value="수정" class="btn btn-primary py-1 px-2" onclick="location.href='./AdminNoticeUpdate.nb?bo_num=${boDTO.bo_num }&pageNum=${pageNum }';">
						<input type="button" value="삭제" class="btn btn-primary py-1 px-2" onclick="location.href='./AdminNoticeDelete.nb?bo_num=${boDTO.bo_num }&pageNum=${pageNum }';">
                    </div>
                </div>
              </c:forEach>
			</div><br>
	      <!-- 버튼 -->
	      <div align="right">
	      	<input type="button" value="새글작성" class="btn btn-primary py-2 px-3" onclick="location.href='./AdminNoticeWrite.nb';">
	      </div>
	           
	        </div>
              
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
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  </body>
</html>