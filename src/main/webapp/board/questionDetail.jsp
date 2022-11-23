<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>noticeDetail</title>
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

</head>
<body>
	<div id="wrap">
		<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp" />

		<section class="hero-wrap hero-wrap-2 js-fullheight"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
					<div class="col-md-5 ftco-animate pb-5">
						<p class="breadcrumbs">
							<span class="mr-2"><a href="./ReservationMain.rez"">Home <i
									class="ion-ios-arrow-forward"></i></a></span> <span>notice <i
								class="ion-ios-arrow-forward"></i></span>
						</p>
						<h1 class="mb-3 bread">고객센터</h1>
					</div>
				</div>
			</div>
		</section>
		<!-- 헤더들어가는 곳 -->

		<!-- 아래 컨테이너 틀 -->
		<section class="ftco-section contact-section">
			<div class="container">
				<div class="row d-flex mb-5 contact-info">
					<div class="col-md-4">
		<!-- 아래 컨테이너 틀 -->			
		
		<!-- 메뉴바 -->

 
    <div class="middle-md-12">
        <div class="menu">
            <ul id="noul">
                <li class="buttonitem" id="profile" >
                    <a href="#profile" class="menubtn" ><i class="fa fa-cog"></i> 렌트 내역</a>
                    <div class="smenu" >
                        <a href="">1</a>
                        <a href="">2</a>
                    </div>
                </li>

                <li class="buttonitem" id="messages">
                    <a href="#messages" class="menubtn"><i class="fa fa-user"></i> 나의 게시글 모음 </a>
                    <div class="smenu" style="display:block;">
                        <a href="./QuestionList.bo" id="smenu">1:1 문의 내역</a>
                        <a href="./ProposalList.bo">수정제안</a>
                    </div>
                </li>

                <li class="buttonitem" id="settings">
                    <a href="#settings" class="menubtn"><i class="fa fa-cog"></i> 회원정보 관리</a>
                    <div class="smenu">
                        <a href="./MemberUpdate.me">회원정보 변경(탈퇴)</a>
<!--                         <a href="">비밀번호 변경</a> -->
                    </div>
                </li>
                
               </ul>
             </div>
            </div>
		<!-- 메뉴바 -->
					</div>
		

		<!-- @@@@@@@@@@@@@@@@@우측@@@@@@@@@@@@@@@@ -->
		<div class="col-md-8 block-9 mb-md-5">
		<div class="board_wrap">
			<div class="board_title">
            <strong>1:1 문의하기</strong>
        	</div>
			<div class="board_view_wrap">
				<div class="board_view">
					<div class="title">
					${bodto.bo_title }
					</div>
					<div class="info">
						<dl>
							<dt>번호</dt>
							<dd>${bodto.bo_num }</dd>
						</dl>
						<dl>
							<dt>작성자</dt>
							<dd>${bodto.mem_id }</dd>
						</dl>
						<dl>
							<dt>카테고리 </dt>
							<dd>
								<select class="form-select form-select-sm" id="bo_cate"
									name="bo_cate" aria-label=".form-select-sm example">
									<option value="1"
										<c:if test="${bodto.bo_cate eq '1'}">selected="selected"</c:if>>이용안내</option>
									<option value="2"
										<c:if test="${bodto.bo_cate eq '2'}">selected="selected"</c:if>>예약/결제</option>
									<option value="3"
										<c:if test="${bodto.bo_cate eq '3'}">selected="selected"</c:if>>취소/환불</option>
									<option value="4"
										<c:if test="${bodto.bo_cate eq '4'}">selected="selected"</c:if>>보험/사고</option>
									<option value="5"
										<c:if test="${bodto.bo_cate eq '5'}">selected="selected"</c:if>>기타</option>
								</select>
							</dd>
						</dl>
						<dl>
							<dt>작성일</dt>
							<dd>${bodto.bo_sysdate }</dd>
						</dl>
					</div>
					<div class="cont">
							${bodto.bo_content }
					</div>
					<div class="info2" >
							<dl> 
							<dt>첨부파일</dt>
							<dd><a href="../file/fileDown1.jsp?file_name=${bodto.bo_file }">${bodto.bo_file }</a></dd>
							<dd><a href="../upload/${bodto.bo_file }">${bodto.bo_file }</a></dd>
							</dl>
							<dl>
							<dt>비밀번호</dt>
							<dd>${bodto.bo_pass }</dd>
							</dl>
					</div>
				</div>
				<br>
			 </div>
				
				<!-- 버튼 -->
				<div align="center" >
					<div class=>
						<a href="./QuestionList.bo" class="btn btn-primary">목록이동</a>
						<a href="./QuestionUpdate.bo?bo_num=${bodto.bo_num }&pageNum=${pageNum}"
							class="btn btn-primary">수정하기</a> 
						<a href="./QuestionDelete.bo?bo_num=${bodto.bo_num }&pageNum=${pageNum}"
							class="btn btn-primary">삭제하기</a> 
					
						<!-- 답변은 관리자만 가능 -->
						<a href="./AdminQuestionReWrite.bo?bo_num=${bodto.bo_num }&pageNum=${pageNum}&bo_re_ref=${bodto.bo_re_ref}&bo_re_lev=${bodto.bo_re_lev}&bo_re_seq=${bodto.bo_re_seq}"
							class="btn btn-primary">답변하기</a> 	
		
						
						<!--  <input type="button" value="수정하기" -->
						<%-- onclick=" location.href='./QuestionUpdateAction.bo?bo_num=${bodto.bo_num}'; "> --%>
					</div>
				</div>
			</div>
		</div>
	</div>
	
		<!-- 메인 -->
			</div>
			
<!-- 				<div class="row justify-content-center"></div> -->
		</section>


		<div class="clear"></div>
		<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp" />
		<!-- 푸터들어가는 곳 -->
	</div>
	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="20px" height="20px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

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

</body>
</html>