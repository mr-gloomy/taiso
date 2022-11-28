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
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="jquery.loading.js"></script> <!-- 저장된 loading.js 경로 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<script type="text/javascript">
$(function() {
	  var Accordion = function(el, multiple) {
	    this.el = el || {};
	    // more then one submenu open?
	    this.multiple = multiple || false;
	    
	    var dropdownlink = this.el.find('.dropdownlink');
	    dropdownlink.on('click',
	                    { el: this.el, multiple: this.multiple },
	                    this.dropdown);
	  };
	  
	  Accordion.prototype.dropdown = function(e) {
	    var $el = e.data.el,
	        $this = $(this),
	        //this is the ul.submenuItems
	        $next = $this.next();
	    
	    $next.slideToggle();
	    $this.parent().toggleClass('open');
	    
	    if(!e.data.multiple) {
	      //show only one menu at the same time
	      $el.find('.submenuItems').not($next).slideUp().parent().removeClass('open');
	    }
	  }
	  
	  var accordion = new Accordion($('.accordion-menu'), false);
	})

	 
	function deleteBoard(seq){
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
			  location.href='./ReviewDelete.rev?rez_uqNum='+seq;
		  }
		})
	}
	
	// 글 작성하는 팝업
	function writeOpen(value){
		
		var result = value.split(",");
		
		var car_code = result[0];
		var rez_uqNum = result[1];
		
	    var _width = '500';
	    var _height = '700';
	 
	    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	    var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 

 		// 새 창 열기
 		document.domain = "localhost"; //document.domain 값이 팝업과 부모창 동일해야 합니다.
 		window.open("./ReviewWrite.rev?car_code="+car_code+"&rez_uqNum="+rez_uqNum,"",'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
 		 

	}
	
	// 글 내용 수정하는 팝업
	function updateOpen(rez_uqNum){
	    var _width = '500';
	    var _height = '700';
	 
	    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	    var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 
 		// 새 창 열기
 		document.domain = "localhost"; //document.domain 값이 팝업과 부모창 동일해야 합니다.
 		window.open("./ReviewUpdate.rev?rez_uqNum="+rez_uqNum,"",'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
	}
	
</script>



<!-- 블로그 로딩 코드 start -->
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
    
    
    <!-- css 초기화 -->
    

    
    <!-- css 초기화 -->


    <!-- 배경색 -->
    <style> 
    .bg-light {
    background: #f8f9fa !important;
}
    </style>
	<!-- 배경색 -->
	
	
	   
<!-- 사이드바 --> 
<style>


ul {
  list-style: none;
  padding-inline-start: -40px;
}

#a-menu{
color: #fffff !important; 
}

h2 {
/*   text-align: center; */
/*   margin: 20px auto; */
  color: #fff;
}

.accordion-menu {
  
  width: 100%;
    max-width: 300px;
    margin: 20px 0px 0px 0px;
  background: #fff;
  border-radius: 4px;
  box-shadow: rgb(0 0 0 / 15%) 0px 5px 15px 0px;
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
    padding: 15px 20px 15px 0px;
    font-size: 16px;
/*   border-bottom: 1px solid #ccc; */
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
    padding: 15px 20px 15px 0px;
    font-size: 16px;
/*     border-bottom: 1px solid #ccc; */
    color: #ffffff !important;
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
	
	
  </head>
 
  
  
  
  <body>

<%--  ${sessionScope.mem_id} --%>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp"/>
	<!-- 헤더들어가는 곳 -->

	    
    <!--  -->
    <section class="hero-wrap hero-wrap-2 js-fullheight " data-stellar-background-ratio="0.5">
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
	
	<!-- 로그인 제어 -->
	
	<%
		String mem_id = (String) session.getAttribute("mem_id");
		if(mem_id==null || mem_id.equals("admin")){
			response.sendRedirect("./ReservationMain.rez");
			System.out.println(" 비정상적 접근 발생! IP : "+request.getRemoteAddr());
		}
	%>

	<!-- 로그인 제어 -->
	
	 
    <section class="ftco-section contact-section bg-light" >
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
        
        
	<!-- left -->
			<jsp:include page="../inc/mysidebar.jsp"/>
	
	<!-- left -->

   	 <!-- 우측 -->
   	 <div class="col-md-8 block-9 mb-md-5">
   	 
 		<section class="ftco-section2 bg-light">
			<h3>예약정보 조회</h3>
<!-- 			<div class="row"> -->
				<div class="col-md-4-2">
					<div class="car-wrap rounded ftco-animate">
									<c:choose>
										<c:when test="${empty reservationList }">

											<h3>예약내역이 없습니다.</h3>

										</c:when>

										<c:when test="${not empty reservationList }">
											<c:forEach var="rez" items="${reservationList }" end="3"
												step="1">
												<div class="text">
													<div class="d-flex mb-3">
														<span class="cat">단기렌트</span> <span class="cat"
															style="text-align: right; width: 90%;">예약번호 :
															${rez.rez_uqNum }</span>

													</div>

													<h2 class="mb-0">
														<c:if test="${rez.rez_status == 1}">
															<a href="car-single.html">${rez.car_name }</a>ㅤ<input
																type="button" class="btn btn-primary py-1 mr-1"
																value="예약 완료">
														</c:if>
														<c:if test="${rez.rez_status == 0}">
															<a href="car-single.html">${rez.car_name }</a>ㅤ<input
																type="button" class="btn btn-primary3 py-1 mr-1"
																value="예약 취소">
														</c:if>
													</h2>
													<div class="d-flex mb-3">
														<span class="cat">${rez.rez_rentalDate} ~
															${rez.rez_returnDate}</span>
													</div>

													<div class="d-flex mb-3"
														style="display: flex; justify-content: center;">
														<input type="button" class="btn btn-primary2 py-2 mr-1"
															value="예약 상세 조회"
															onclick="location.href='./ReservationInfo.rez?rez_uqNum=${rez.rez_uqNum }';">ㅤ
														<c:set var="loop_flag" value="false" />
														<c:set var="check" value="0" />
														<c:forEach var="rev" items="${reviewList }"
															varStatus="status">
															<c:if test="${not loop_flag }">
																<c:if test="${check == 0}">
																	<c:if test="${rev.rez_uqNum == rez.rez_uqNum }">
																		<input type="button" class="btn btn-primary py-2 mr-1"
																			value="리뷰수정" onclick="updateOpen(${rez.rez_uqNum});">
																		<input type="button" class="btn btn-primary py-2 mr-1"
																			value="리뷰삭제" onclick="deleteBoard(${rez.rez_uqNum});">
																		<c:set var="loop_flag" value="true" />
																		<c:set var="check" value="1" />
																	</c:if>
																</c:if>
															</c:if>
														</c:forEach>
														<c:if test="${check != 1}">
														</c:if>
														<input type="button" class="btn btn-primary py-2 mr-1"
															value="리뷰작성"
															onclick="writeOpen(${rez.car_code}+','+${rez.rez_uqNum});">
														<c:set var="loop_flag" value="true" />
													</div>
												</div>
											</c:forEach>
										</c:when>

									</c:choose>
									<hr>
				</div>
			</div>
<!-- 			</div> -->
		</section>
		
			</div>
			<hr>
	</div>
	</div>
	</section>
	 <!-- 우측 -->
	
	<div class="clear"></div>
	<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->
	</div>
	
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
   <script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>
      <script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>
  </body>
</html>