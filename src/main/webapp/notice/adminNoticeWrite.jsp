<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
<link rel="stylesheet" href="./css/board.css">
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
function insertBoard(seq) {
	Swal.fire({
	  title: '글을 등록하시겠습니까?',
	  // text: "삭제하시면 다시 복구시킬 수 없습니다.",
	  icon: 'info',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: 'grey',
	  confirmButtonText: '등록',
	  cancelButtonText: '취소'
	}).then((result) => {
	  if (result.value) {
          //"등록" 버튼을 눌렀을 때 작업할 내용을 이곳에 넣어주면 된다. 
	 		if(document.fr.bo_title.value == ""){
	 		    Swal.fire({
	 		    	icon: 'error',
					text: '제목을 입력해주세요'
				})
	 			document.fr.bo_title.focus();
	 			return;
	 		}
	 		if(document.fr.bo_pass.value == ""){
	 		    Swal.fire({
	 		    	icon: 'error',
					text: '비밀번호를 입력해주세요'
				})
	 			document.fr.bo_pass.focus();
	 			return;
	 		}
	 		if(document.fr.bo_content.value == ""){
	 			Swal.fire({
	 		    	icon: 'error',
					text: '내용을 입력해주세요'
				})
	 			document.fr.bo_content.focus();
	 			return;
	 		}
			
		    document.fr.submit();
	        self.close();
	  }

	})

}

function backBoard(){
	Swal.fire({
	  title: '이전페이지로 돌아가시겠습니까?',
	  // text: "삭제하시면 다시 복구시킬 수 없습니다.",
	  icon: 'info',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: 'grey',
	  confirmButtonText: '네',
	  cancelButtonText: '아니오'
	}).then((result) => {
	  if (result.value) {
          //"등록" 버튼을 눌렀을 때 작업할 내용을 이곳에 넣어주면 된다. 
		  document.fr.submit();
	      self.close();
	  }
	  
	})
}

function back(){
	history.back();
}
	
</script>
</head>
<body>
	<div id="wrap">
		<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp" />

		<section class="hero-wrap hero-wrap-2 js-fullheight"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="./AdminMain.mb">admin <i class="ion-ios-arrow-forward"></i></a></span> 
						<span>관리자 메인 <i class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">관리자 글쓰기</h1>
				</div>
			
			</div>
		</section>
		<!-- 헤더들어가는 곳 -->

		<!-- 메인 -->
		<section class="notice_main">
			<form action="./AdminNoticeWriteAction.nb" method="post"
				enctype="multipart/form-data" name="fr">
				<div class="board_wrap3">
					<div class="board_title">
						<strong>공지사항 글쓰기</strong>
						<p>관리자가 공지사항을 작성하는 페이지 입니다.</p>
					</div>
					<div class="board_write_wrap">
						<div class="board_write">
							<div class="title">
								<dl>
									<input type="hidden" value="0" name="bo_cate">
									<dt>작성일</dt>
									<dd>
										<input type="text" id="todaybirthday" readonly="readonly">
									</dd>
									<dt>제목</dt>
									<dd>
										<input type="text" name="bo_title" placeholder="제목을 입력해주세요">
									</dd>
									<dt>작성자</dt>
									<dd>
										<input type="text" value="${sessionScope.mem_id }" name="mem_id" readonly="readonly">
									</dd>
									<dt>비밀번호</dt>
									<dd>
										<input type="password" name="bo_pass" placeholder="비밀번호를 입력해주세요">
									</dd>
								</dl>
								<hr>
							</div>
							<div class="cont">
								<textarea style="width: 100%;" name="bo_content" id="bo_content"></textarea>
							</div>
							<br>
							<div class="input-group">
								<input type="file" id="inputGroupFile04" value="첨부파일" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
							</div>
						</div>
						<br>
						<!-- 버튼 -->
						<div class="form-group" align="center">
							<input type="button" value="작성완료" class="btn btn-primary py-2 px-3" onclick="return insertBoard()">
							<input type="button" value="작성취소" class="btn btn-primary py-2 px-3" onclick="backBoard();">
						</div>
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
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="20px" height="20px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
  
  </body>
</html>