<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>마이페이지</title>
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
    <link rel="stylesheet" href="./css/admin_my.css">
    <script src="sweetalert2.all.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="sweetalert2.all.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>	

	<script type="text/javascript">
	
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
		
	function Login() {
		var mem_id = sessionStorage.getItem('mem_id'); // -> tang 반환
		
		if(mem_id==null) {
			Swal.fire({
				text : "텍스트",
				closeOnClickOutside : false // 백그라운드 클릭해도 안꺼짐
			})
			.then(function(result){ //  창 꺼질때 실행할 함수
				console.log(result);
				// background 클릭 => null
				// 확인버튼 클릭 => true
			    
			    if(result) {
			    	location.href = "./MemberLogin.me";
			    }
			})
			}
	};
	
	Login();
// 		swal({
// 			text : "텍스트",
// 			closeOnClickOutside : false // 백그라운드 클릭해도 안꺼짐
// 		})
// 		.then(function(result){ //  창 꺼질때 실행할 함수
// 			console.log(result);
// 			// background 클릭 => null
// 			// 확인버튼 클릭 => true
		    
// 		    if(result) {
// 		    	location.href = "/";
// 		    }
		    
// 		})
    </script>
    
  </head>
  <body>
  
  
<%--  ${sessionScope.mem_id} --%>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp"/>
	<!-- 헤더들어가는 곳 -->

	    
    <!--  -->
    <section class="hero-wrap hero-wrap-2 js-fullheight" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Contact <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">마이페이지</h1>
          </div>
        </div>
      </div>
    </section>
	<!--  -->
	 
	<!-- left -->
    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
    	<div class="col-md-4">
        	
     	<!-- 프로필 -->
     	<div class="row mb-5">
			<div class="membercard">
			  <div align="right">			
				<button type="button" class="btn btn-secondary btn-sm" id="minibtn" onclick="location.href='./MemberUpdatePw.me' ">내 정보</button>
			  </div>
				<div class="text">
					<img src="./images/user.png">
					<h5>${mDTO.mem_nickName}</h5>
					<p>문의사항　　|　　나의 리뷰</p>
					<div align="center">${myqnacnt }　　　　|　　　　 ${myreviewcnt }</div>	　　　
						
				</div>
			</div>
     	<!-- 프로필 -->
		
		<!-- 메뉴바 -->

    <div class="middle-md-12">
        <div class="menu">
            <ul id="noul">
                <li class="buttonitem" id="profile" >
                    <a href="#profile" class="menubtn" ><i class="fa fa-cog"></i> 렌트 내역</a>
                    <div class="smenu" >
                        <a href="./ReservationList.rez">예약/취소 조회</a>
<!--                         <a href="./FaqList2.bo">2</a> -->
                    </div>
                </li>

                <li class="buttonitem" id="messages">
                    <a href="#messages" class="menubtn"><i class="fa fa-user"></i> 나의 게시글 모음 </a>
                    <div class="smenu" style="display:block;">
                        <a href="./MyQuestionList.bo" id="smenu">1:1 문의 내역</a>
                        <a href="./ProposaList.bo">수정제안</a>
                    </div>
                </li>

                <li class="buttonitem" id="settings">
                    <a href="#settings" class="menubtn"><i class="fa fa-cog"></i> 회원정보 관리</a>
                    <div class="smenu">
                        <a href="./MemberUpdate.me">개인정보 수정</a>
                        <a href="./MemberRemove.me">회원 탈퇴</a>
                    </div>
                </li>
                
               </ul>
             </div>
            </div>
  		</div> 
		<!-- 메뉴바 -->
   	 </div> 
   	 <!-- 우측 -->
   	 <div class="col-md-8 block-9 mb-md-5">
     <section class="ftco-section2 bg-light">
			<h2>예약정보 조회</h2>
<!-- 			<div class="row"> -->
				<div class="col-md-4-2">
					<div class="car-wrap rounded ftco-animate">
					
						<c:forEach var = "rez" items="${reservationList }" step="1">
							<div class="text">
								<div class="d-flex mb-3">
									<span class="cat">단기렌트</span>
									<span class="cat" style="text-align:right;width:90%;">${rez.rez_uqNum }</span>
			
								</div>
								<div class="d-flex mb-3">
									<span class="cat"></span>
								</div>
								<div class="d-flex mb-3">
									<span class="cat"></span>
								</div>
								<h2 class="mb-0">
									<c:if test="${rez.rez_status == 1}">
										<a href="car-single.html">${rez.car_name }</a>ㅤ<input type = "button" class="btn btn-primary py-1 mr-1" value="예약 완료">
									</c:if>
									<c:if test="${rez.rez_status == 0}">
										<a href="car-single.html">${rez.car_name }</a>ㅤ<input type = "button" class="btn btn-primary3 py-1 mr-1" value="예약 취소">
									</c:if>	
								</h2>
								<div class="d-flex mb-3">
									<span class="cat">${rez.rez_rentalDate} ~ ${rez.rez_returnDate}</span>
								</div>
								<div class="d-flex mb-3">
									<span class="cat"></span>
								</div>
								<div class="d-flex mb-3">
									<span class="cat"></span>
								</div>
								<div class="d-flex mb-3" style="display: flex; justify-content: center;">
									<input type = "button" class="btn btn-primary2 py-2 mr-1" value = "예약 상세 조회" onclick="location.href='./ReservationInfoAction.rez?rez_uqNum=${rez.rez_uqNum }';" >ㅤ
									<c:set var="loop_flag" value="false"/>
									<c:set var="check" value ="0"/>
									<c:forEach var="rev" items="${reviewList }" varStatus="status">
										<c:if test="${not loop_flag }">
											<c:if test="${check == 0}">
												<c:if test="${rev.rez_uqNum == rez.rez_uqNum }">
													<input type = "button" class="btn btn-primary py-2 mr-1" value = "리뷰수정" onclick="updateOpen(${rez.rez_uqNum});">
													<input type = "button" class="btn btn-primary py-2 mr-1" value = "리뷰삭제" onclick="deleteBoard(${rez.rez_uqNum});">
													<c:set var="loop_flag" value="true"/>
													<c:set var="check" value ="1"/>
												</c:if>
											</c:if>
										</c:if>
									</c:forEach>
										<c:if test="${check != 1}">
											<input type = "button" class="btn btn-primary py-2 mr-1" value = "리뷰작성" onclick="writeOpen(${rez.car_code}+','+${rez.rez_uqNum});">
											<c:set var="loop_flag" value="true"/>
										</c:if>
								</div>
							</div>
						</c:forEach>
				</div>
			</div>
		</section>
		
			</div>
	</div>
	</section>
	 <!-- 우측 -->
	
	<div class="clear"></div>
	<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->
	</div>
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</section> -->
	
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="./js/google-map.js"></script>
	<script src="./js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
       <script src="sweetalert2.all.min.js"></script>
       <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
   
  </body>
</html>