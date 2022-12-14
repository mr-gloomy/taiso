<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
    <link rel="stylesheet" href="./css/adminReview.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
    
    
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
		function deleteReview(a,b){
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
				  location.href='./AdminReviewDelete.adr?rev_num='+a+'&pageNum='+b;
			  }
			})
		}
	<%-- 	<a href="./AdminReviewDelete.adr?rev_num=${dto.rev_num }&pageNum=${pageNum }">삭제</a> --%>

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
          	<p class="breadcrumbs"><span class="mr-2"><a href="./AdminMain.mb">admin<i class="ion-ios-arrow-forward"></i></a></span> 
          	<span>Review <i class="ion-ios-arrow-forward"></i></span></p>
          	<h1 class="mb-3 bread">관리자리뷰관리페이지</h1>
          </div>
        </div>
      </div>
    </section>
	<!-- 헤더들어가는 곳 -->
	
	<!-- 메인 -->
	
  	<div class="board_wrap2">
        <div class="board_title">
            <strong>리뷰리스트</strong>
            <p> 전체 글 개수 : ${requestScope.totalCnt } 개 </p>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="count">닉네임</div>
                    <div class="count">차량명</div>
                    <div class="title3">제목</div>
                    <div class="date3">작성일</div>
                    <div class="count2">관리</div>
                </div>
                
              <c:forEach var="dto" items="${reviewListAll }">
                <div>
                    <div class="num">${dto.rev_num }</div>
                    <div class="count">${dto.mem_nickName } </div>
                     <div class="count">${dto.car_name } </div>
                    <div class="title3">
                    	<a href="./AdminReivewContent.adr?rev_num=${dto.rev_num }&pageNum=${pageNum}">${dto.rev_subject }</a>
                    </div>
                    <div class="date3">
                     <fmt:formatDate value="${dto.rev_date }" pattern="yyyy년 MM월 dd일 " />
                    </div>
                    <div class="count2">
                 	    <input type = "button" class="btn btn-primary py-2 mr-1" value = "삭제" onclick="deleteReview(${dto.rev_num },${pageNum });">

                    </div>
                </div>
              </c:forEach>
			</div><br>
              

			<!-- 페이징처리 -->
    			<c:if test="${totalCnt != 0 }">

			<!-- 이전 -->
<%-- 			<c:if test="${startPage > pageBlock }"> --%>
<%-- 				<a href="./AdminReviewList.adr?pageNum=${startPage-pageBlock }">[이전]</a> --%>
<%-- 			</c:if> --%>
			<!--     	<div class="row mt-5"> -->
			<div class="col text-center">
				<div class="block-27">
					<ul>
					<c:if test="${startPage > pageBlock }">
				<a href="./AdminReviewList.adr?pageNum=${startPage-pageBlock }">[이전]</a>
			</c:if>
						<!-- 페이지 번호(1,2,3...) -->
					<c:forEach var="i" begin="${startPage }" end="${endPage }"
						step="1">
					

							<li <c:if test="${pageNum == i }">class="active" </c:if>
								
							>
						<span>
						<a href="./AdminReviewList.adr?pageNum=${i }">${i }</a>
						</span>
						</li>
						

						</c:forEach>
						<c:if test="${endPage < pageCount }" >
				<a href="./AdminReviewList.adr?pageNum=${startPage+pageBlock }">[다음]</a>
			</c:if>
					</ul>
				</div>
			</div>

			<!-- 다음 -->
<%-- 			<c:if test="${endPage < pageCount }" > --%>
<%-- 				<a href="./AdminReviewList.adr?pageNum=${startPage+pageBlock }">[다음]</a> --%>
<%-- 			</c:if> --%>
<div id="table_search">
			<input type="button" value="관리자메인페이지로이동" class="btn btn-primary py-2 mr-1" 
				onclick=" location.href='./AdminMain.mb';"
			>
		</div>
		</c:if>
  
      </div><br>
      
        </div>
    </div>
  
	<!-- 메인 -->
	<!-- 푸터들어가는 곳 -->
	<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->
	
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
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
  
  </body>
</html>