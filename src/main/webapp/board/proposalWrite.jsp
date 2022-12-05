<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>타이소</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/admin_my.css">
<link rel="stylesheet" href="./css/board.css">
<script src="sweetalert2.all.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

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
	<!-- alert -->
	function QuestionWrite() {
		if(document.fr.bo_title.value==""){
			Swal.fire({
                icon: 'warning',
                /* title: '내용을 입력하세요!', */
                text: '카테고리를 선택하세요!',
            });
			document.fr.bo_cate.focus();
			return;
		}
		if(document.fr.bo_title.value==""){
			Swal.fire({
                icon: 'warning',
                /* title: '내용을 입력하세요!', */
                text: '제목을 입력하세요!',
            });
			document.fr.bo_title.focus();
			return;
		}
		if(document.fr.bo_pass.value==""){
			Swal.fire({
                icon: 'warning',
                /* title: '내용을 입력하세요!', */
                text: '비밀번호를 입력하세요!',
            });
			document.fr.bo_pass.focus();
			return;
		}
		if(document.fr.bo_content.value==""){
			Swal.fire({
                icon: 'warning',
                /* title: '내용을 입력하세요!', */
                text: '내용을 입력하세요!',
            });
			document.fr.bo_content.focus();
			return;
		}
		
		document.fr.submit();
	}
	
	
</script>

    <!-- 사이드바 --> 
<style>


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

</style>
<!-- 사이드바 --> 

    <!-- 배경색 -->
    <style> 
    .bg-light {
    background: #f8f9fa !important;
}
    </style>
	<!-- 배경색 -->

</head>
<body>
	<div id="wrap">
		<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp" />
		<!-- 헤더들어가는 곳 -->


		<!--  -->
		<section class="hero-wrap hero-wrap-2 js-fullheight"
			style="background-image: url('images/bg_6.jpg');"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
					<div class="col-md-9 ftco-animate pb-5">
						<p class="breadcrumbs">
							<span class="mr-2"><a href="./ReservationMain.rez">Home <i
									class="ion-ios-arrow-forward"></i></a></span> <span>고객센터 <i
								class="ion-ios-arrow-forward"></i></span>
						</p>
						<h1 class="mb-3 bread">수정제안</h1>
					</div>
				</div>
			</div>
		</section>
		<!--  -->

		<!-- left -->
		<section class="ftco-section contact-section bg-light">
			<div class="container">
				<div class="row d-flex mb-5 contact-info">

				<!-- @@@@@@@@@@@@여기부터 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
					<jsp:include page="../inc/sidebar.jsp" />
				<!-- @@@@@@@@@@@@여기까지 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->

						<!-- 우측 -->
						<div class="col-md-8 block-9 mb-md-5">
							<section class="notice_main">
								<form action="./ProposalWriteAction.bo" method="post" enctype="multipart/form-data" name="fr">
									<div class="board_wrap">
										<div class="board_title">
											<strong>수정제안</strong>
											<p>타이소의 버그와 불만사항을 신고해주세요</p>
										</div>
										<div class="board_write_wrap">
											<div class="board_write">
												<div class="title">
													<!-- 여기까지 위쪽 틀 아래는 변수 -->

										               <input type="hidden" name="bo_num" value="${param.bo_num }">
											           <input type="hidden" name="mem_id" value="${param.mem_id }">
											           <input type="hidden" name="bo_re_ref" value="${param.bo_re_ref }">
											           <input type="hidden" name="bo_re_seq" value="${param.bo_re_seq }">
											           <input type="hidden" name="bo_re_lev" value="${param.bo_re_lev }">
											           <input type="hidden" name="bo_cate" value="6">
											           
											           <dl>

														<dt>작성일</dt>
														<dd>
															<input type="text" id="todaybirthday" readonly="readonly">
														</dd>
														<dt>제목</dt>
														<dd>
															<input type="text" name="bo_title"
																placeholder="입력해주세요">
														</dd>
<!-- 														<dt>작성자</dt> -->
<!-- 														<dd> -->
<%-- 															<input type="text" value="${sessionScope.mem_id }" --%>
<!-- 																name="mem_id" readonly="readonly"> -->
<!-- 														</dd> -->
														<dt>비밀번호</dt>
														<dd>
															<input type="password" name="bo_pass"
																placeholder="입력해주세요">
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
											</div>
											<br>
											<!-- 버튼 -->
											<div class="d-grid gap-8 col-8 formbtncenter">
												<input type="button" value="작성완료" class="btn btn-primary2"
													onclick="QuestionWrite()" > 
												<input type="button" value="작성취소" class="btn btn-primary2"
													onclick="location.href='./ProposalList.bo';">
											</div>
											
											
										</div>
									</div>	
								</form>
							</section>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>
<script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>
</body>
</html>