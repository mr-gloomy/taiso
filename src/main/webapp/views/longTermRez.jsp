<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
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
    <link rel="stylesheet" href="./css/style.css">
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

    <section class="ftco-section contact-section">
      <div class="container">
   <body>
          <div class="col-md-8 block-9 mb-md-5">
					<div class="board_wrap">
						<div class="board_title">
							<strong>1:1 문의하기</strong>
							<p>타이소에게 다 물어보세요!</p>
						</div>
						<div class="board_write_wrap">
							<div class="board_write">
								<div class="title">
									<!-- 여기까지 위쪽 틀 아래는 변수 -->

						               <input type="hidden" name="bo_num" value="${param.bo_num }">
							           <input type="hidden" name="mem_id" value="${sessionScope.mem_id }">
							           <input type="hidden" name="bo_re_ref" value="${param.bo_re_ref }">
							           <input type="hidden" name="bo_re_seq" value="${param.bo_re_seq }">
							           <input type="hidden" name="bo_re_lev" value="${param.bo_re_lev }">
							           
							           <dl>
						               <dt>카테고리</dt> 
						               		<dd><select class="form-select" aria-label="Default select example" name="bo_cate">
												  <option selected value="">분류</option>
												  <option value="1">이용안내</option>
												  <option value="2">예약/결제</option>
												  <option value="3">취소/환불</option>
												  <option value="4">보험/사고</option>
												  <option value="5">기타</option>
											</select></dd>
										<dt>작성일</dt>
										<dd>
											<input type="text" id="todaybirthday" readonly="readonly">
										</dd>
										<dt>제목</dt>
										<dd>
											<input type="text" name="bo_title"
												placeholder="제목을 입력해주세요">
										</dd>
<!-- 										<dt>작성자</dt> -->
<!-- 										<dd> -->
<%-- 											<input type="text" value="${ }" --%>
<!-- 												name="mem_id" readonly="readonly"> -->
<!-- 										</dd> -->
										<dt>비밀번호</dt>
										<dd>
											<input type="password" name="bo_pass"
												placeholder="비밀번호를 입력해주세요">
										</dd>
									</dl>
									<hr>
								</div>
								<div class="cont">
									<textarea name="bo_content" placeholder="내용을 입력해주세요"></textarea>
								</div>
								<br>
								<div class="input-group">
									<input type="file" name="bo_file" id="inputGroupFile04"
										value="첨부파일" aria-describedby="inputGroupFileAddon04"
										aria-label="Upload">
								</div>
<!-- 									<div class="input-group mb-3"> -->
<!-- 									  <div class="input-group-prepend"> -->
<!-- 									    <span class="input-group-text">첨부파일</span> -->
<!-- 									  </div> -->
<!-- 									  <div class="custom-file"> -->
<!-- 									    <input type="file" class="custom-file-input" id="inputGroupFile01"> -->
<!-- 									    <label class="custom-file-label" for="inputGroupFile01">파일을 선택하세요</label> -->
<!-- 									  </div> -->
<!-- 									</div> -->
							</div>
							<br>
							<!-- 버튼 -->
							<div class="d-grid gap-8 col-8 formbtncenter">
								<input type="button" value="작성완료" class="btn btn-primary2"
									onclick="QuestionWrite()" > 
								<input type="button" value="작성취소" class="btn btn-primary2"
									onclick="location.href='./QuestionList.bo';">
									</div>
									
									
								</div>
							</div>	
						</form>
          </div>
      </div>
    </section>
	
		<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp" />
		<!-- 푸터들어가는 곳 -->
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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