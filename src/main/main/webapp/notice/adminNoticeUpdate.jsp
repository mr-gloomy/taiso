<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
<!-- input에 오늘날짜 기본값으로 넣기 -->
<script type="text/javascript">
	window.onload = function() {
		today = new Date();
		console.log("today.toISOString() >>>" + today.toISOString());
		today = today.toISOString().slice(0, 10);
		console.log("today >>>> " + today);
		bir = document.getElementById("todaybirthday");
		bir.value = today;
	}
</script>    
 
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
          	<span>notice <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">관리자페이지</h1>
          </div>
        </div>
      </div>
    </section>
	<!-- 헤더들어가는 곳 -->
	 
	<!-- 메인 -->
    <section class="notice_main">
    <form action="./AdminNoticeUpdateProAction.nb?bo_num=${boDTO.bo_num }&pageNum=${pageNum}" method="post">
	<div class="board_wrap3">
		<div class="board_title">
			<strong>공지사항 글 수정하기</strong>
			 <p> 공지사항에 작성한 내용을 수정하는 페이지 입니다. </p>	
		</div>
			<div class="board_write_wrap">
				<div class="board_write">
					<div class="title">
						<dl>
							<input type="hidden" value="0" name="bo_num" value=${boDTO.bo_num }>
							
							<dt>작성일</dt>
							<dd>
								<input type="text" id="todaybirthday" readonly="readonly" >
							</dd>
							<dt>제목</dt>
							<dd>
								<input type="text" name="bo_title" value="${boDTO.bo_title }">
							</dd>
							<dt>비밀번호</dt> <!-- 기존 비밀번호랑 일치 -->
							<dd>
								<input type="password" name="bo_pass" placeholder="비밀번호를 입력해주세요">
							</dd>
						</dl>
						<hr>
							</div>
							<div class="cont">
								<textarea name="bo_content" >${boDTO.bo_content }</textarea>
							</div>
							<br>
							<div>첨부파일 : ${boDTO.bo_file}</div>
							<br>
					
				<!-- 버튼 -->
				<div class="d-grid gap-8 col-3 mx-auto">
					<input type="submit" value="수정완료" class="btn btn-primary"/>
					<input type="button" value="목록이동" class="btn btn-primary" onclick="location.href='./AdminNoticeList.nb?bo_num=${boDTO.bo_num }&pageNum=${pageNum }';">
				</div>
			</div>
	 	</div>
	 </form>
	 </section>
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