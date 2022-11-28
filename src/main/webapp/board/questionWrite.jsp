<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>TAISO</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">

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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>

// $().ready(function(){
// 			var a = ${sessionScope.mem_id};
// // 		if(${sessionScope.mem_id} != null) {
// // 		alert(${sessionScope.mem_id});
// 			alert(a);
// // 		}
// });		

</script>

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
// 	function deleteBoard(seq){
// 		Swal.fire({
// 		  title: '글을 삭제하시겠습니까???',
// 		  text: "삭제하시면 다시 복구시킬 수 없습니다.",
// 		  icon: 'warning',
// 		  showCancelButton: true,
// 		  confirmButtonColor: '#3085d6',
// 		  cancelButtonColor: '#d33',
// 		  confirmButtonText: '삭제',
// 		  cancelButtonText: '취소'
// 		}).then((result) => {
// 		  if (result.value) {
//               //"삭제" 버튼을 눌렀을 때 작업할 내용을 이곳에 넣어주면 된다. 
// 		  }
// 		})
// 	}
	
	function Login() {
		var mem_id = ${sessionScope.mem_id }
		if(mem_id==null) {
		alert("로그인이 필요합니다!");
		location.href="./MemberLogin.me";
		}
	}
	
	
	function QuestionWrite() {
		var bo_cate = $('.form-select').val();
		if(bo_cate==""){
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

<script src="https://cdn.ckeditor.com/ckeditor5/11.0.1/classic/ckeditor.js"></script>

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

	<!-- input 태그 -->
	<style>
	.sls {
	padding:5px; 
	font-size:15px;
 	  color: #757575;
	}
	</style>	
	<!-- input 태그 -->
</head>



<body>
	
<%-- 	%> --%>

	<div id="wrap">
		<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp" />
		<!-- 헤더들어가는 곳 -->


		<!--  -->
		<section class="hero-wrap hero-wrap-2 js-fullheight"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
					<div class="col-md-9 ftco-animate pb-5">
						<p class="breadcrumbs">
							<span class="mr-2"><a href="index.html">고객센터 <i
									class="ion-ios-arrow-forward"></i></a></span> <span>1:1 문의하기 <i
								class="ion-ios-arrow-forward"></i></span>
						</p>
						<h1 class="mb-3 bread">고객센터
						</h1>
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
				<form action="./QuestionWriteAction.bo" method="post" enctype="multipart/form-data" name="fr">
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
							           <input type="hidden" name="mem_id" value="${param.mem_id }">
							           <input type="hidden" name="bo_re_ref" value="${param.bo_re_ref }">
							           <input type="hidden" name="bo_re_seq" value="${param.bo_re_seq }">
							           <input type="hidden" name="bo_re_lev" value="${param.bo_re_lev }">
							           
							           <dl>
						               <dt>카테고리</dt> 
						               		<dd><select class="sls" aria-label="Default select example" name="bo_cate">
												  <option selected value="">분류</option>
												  <option value="1">이용안내</option>
												  <option value="2">예약/결제</option>
												  <option value="3">취소/환불</option>
												  <option value="4">보험/사고</option>
												  <option value="5">기타</option>
											</select></dd>
										<dt>작성일</dt>
										<dd>
											<input type="text" id="todaybirthday" readonly="readonly" style="color:#757575;">
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
												placeholder="&nbsp;&nbsp;&nbsp;비밀번호를 입력해주세요" style="width:35%;">
										</dd>
									</dl>
									<hr>
								</div>
								<div class="cont">
<!-- 								    <textarea name="bo_content" id="editor"></textarea> -->
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