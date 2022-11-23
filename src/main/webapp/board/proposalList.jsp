<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="./css/admin_my.css">


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
							<span class="mr-2"><a href="./ReservationMain.rez"">Home <i
									class="ion-ios-arrow-forward"></i></a></span> <span>고객센터 <i
								class="ion-ios-arrow-forward"></i></span>
						</p>
						<h1 class="mb-3 bread">수정제안</h1>
					</div>
				</div>
			</div>
		</section>
		<!--  -->

   <!-- 전달된 정보 확인 -->
   
<%--    <%=request.getAttribute("boardListAll") %> --%>
<%--	${requestScope.QuestionList } --%>
	
		<!-- left -->
		<section class="ftco-section contact-section">
			<div class="container">
				<div class="row d-flex mb-5 contact-info">
					<div class="col-md-4">

						<!-- 프로필 -->
						<div class="row mb-5">

							<!-- 프로필 -->

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
					</div>
		
		<!-- @@@@@@@@@@@@@@@@@우측@@@@@@@@@@@@@@@@ -->
					<div class="col-md-8 block-9 mb-md-5">
							<div class="board_wrap">
								<div class="board_title">
								   <strong>수정제안</strong>
								 	<div align="right">
											<input type="submit" value="작성하기" class="btn btn-primary" onclick=" location.href='./ProposalWrite.bo'; ">
									</div>	
									<!--  검색 폼 -->
									<p>전체 글 개수 : ${requestScope.cnt } 개</p>	
									<div class="n_search" border="1" width="90%">
										<div align="right">
											<input type="text" name="search"> 
											<input type="submit" value="Search" class="btn btn-outline-secondary" >
										</div>
									</div>
								</div>
		
	
						<div class="board_list_wrap">
							<div class="board_list">
								<div class="top">
									<div class="num">번호</div>
									<div class="title">제목</div>
									<div class="mem_id">작성자</div>
									<div class="date">작성일</div>
								</div>
										<c:forEach var="bodto" items="${ProposalList }">
											<div>
												<div class="num">${bodto.bo_num }</div>
												<div class="title">
													 <a href="./ProposalDetail.bo?bo_num=${bodto.bo_num }&pageNum=${pageNum}">${bodto.bo_title }</a>
												</div>
												<div class="mem_id">${bodto.mem_id }</div>
												<div class="date">${bodto.bo_sysdate }</div>
											</div>
										</c:forEach>

									</div>
								</div>
							</div>
						</div>								
		<!-- 이 안이 변동사항 아래는 외부 틀이라서 필수 -->			
			</div>
<!-- 				<div class="row justify-content-center"></div> -->
			</div>
		</section>
		
		<!-- @@@@@@@@@@@@@@@@@우측@@@@@@@@@@@@@@@@ -->
	            
	 		<!-- 페이지처리 -->
            <div class="n_page"> 
	  		 <c:if test="${cnt != 0}">
                <!-- 페이지번호 -->
                <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
		         	 <a href="./QuestionList.bo?pageNum=${i }" class="btn btn-outline-primary" >${i }</a> 
		    	</c:forEach>  
			  </c:if>
		  	 </div>	
		   	<!-- 페이지처리 -->
		   
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

</body>
</html>