<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<!-- 헤더들어가는곳 -->
<head>
<title>타이소-관리자</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
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
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">

    <script src="sweetalert2.all.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="sweetalert2.all.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>	
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="jquery.loading.js"></script> <!-- 저장된 loading.js 경로 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


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

</script>
<style type="text/css">
/* 월별현황 */
.list {
	width: 450px;

}
table {
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: white;
}
/* 월별현황 */

/* 사이드바 */ 


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
.dropdownlink {
	padding: 15px 20px 15px 12px;
}


/* 사이드바 */ 
</style>



</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<!-- 헤더 끝-->

	<!-- 상단 -->
	<section class="hero-wrap hero-wrap-2 js-fullheight"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="./AdminMain.mb">admin <i
								class="ion-ios-arrow-forward"></i></a></span> <span>admin main <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">관리자 메인페이지</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- 상단 -->
	
	<!-- 로그인 제어 -->
	
	<%
		String mem_id = (String) session.getAttribute("mem_id");
		if(mem_id==null || !mem_id.equals("admin")){
			response.sendRedirect("./ReservationMain.rez");
			System.out.println(" 비정상적 접근 발생! IP : "+request.getRemoteAddr());
		}
	%>

	<!-- 로그인 제어 -->

	
	<!-- left -->
	<section class="ftco-section contact-section">
		<div class="container">
			<div class="row d-flex mb-5 contact-info">
				<div class="col-md-4">


					<!-- 프로필 -->
					<div class="row mb-5">
						<div class="profile">
							<div class="txt">
								<img src="./images/person_4.jpg">
								<h5><p>${sessionScope.mem_id } 님</p></h5>
								<h6>IT | 사원(2215953)</h6>
							</div>
						</div>

						<!-- 프로필 -->
						
						
						<!-- 메뉴바 -->
								<ul class="accordion-menu" >
								  <li>
								    <div class="dropdownlink" ><i class="fa-solid fa-bolt fa-fw" aria-hidden="true"></i>　회원관리
								      <i class="fa fa-chevron-down fa-pull-right" aria-hidden="true"></i>
								    </div>
								    <ul class="submenuItems">	
								      <li ><a href="./AdminMemberList.mb">회원조회</a></li>
								    </ul>
								  </li>
								  <li>
								    <div class="dropdownlink"><i class="fa-solid fa-car fa-fw" aria-hidden="true"></i>　 차량관리
								      <i class="fa fa-chevron-down fa-pull-right"  aria-hidden="true"></i>
								    </div>
								    <ul class="submenuItems">
								      <li><a href="./AdminCarList.ad">차량리스트</a></li>
									  <li><a href="./AdminReviewList.adr">차량리뷰조회</a></li>
								    </ul>
								  </li>
								  <li>
								    <div class="dropdownlink"><i class="fa-solid fa-comments fa-fw" aria-hidden="true"></i>　 예약관리
								      <i class="fa fa-chevron-down fa-pull-right" aria-hidden="true"></i>
								    </div>
								    <ul class="submenuItems">
								      <li><a href="./AdminReservationList.rez">예약현황</a></li>
								    </ul>
								  </li>
								  <li>
								    <div class="dropdownlink"><i class="fa-solid fa-comment fa-fw" aria-hidden="true"></i>　 고객센터
								      <i class="fa fa-chevron-down fa-pull-right" aria-hidden="true"></i>
								    </div>
								    <ul class="submenuItems">
								      <li><a href="./AdminNoticeList.nb">공지사항</a></li>
									  <li><a href="./QuestionList.bo">1:1문의사항</a></li>
									  <li><a href="./FaqList.bo">FAQ</a></li>
								    </ul>
								  </li>
								</ul>
					</div>
				</div>
				<!-- 메뉴바 -->

				<!-- 11월 현황표 -->
				<div class="list">
					<h5>11월 현황</h5>
					<table>
						<tr>
							<th><a href="./AdminMemberList.mb">회원 수</a></th>
							<th><a href="./AdminReservationList.rez">예약건수</a></th>
							<th><a href="./AdminReservationList.rez">취소건수</a></th>
							<th><a href="./AdminCarList.ad">차량 수</a></th>
						</tr>
						<tr>
							<td>${requestScope.totalCnt1 }</td>
							<td>${requestScope.totalCnt6 }</td>
							<td>${requestScope.totalCnt7 }</td>
							<td>${requestScope.totalCnt5 }</td>
						</tr>
					</table><br>
				<!-- 11월 현황표 --> 


				<!-- 문의/제안내역 --> 
					<h5>고객관리</h5>
					<table>
						<tr>
							<th><a href="./QuestionList.bo">1:1문의사항</a></th>
							<th><a href="./AdminReviewList.adr">차량리뷰</a></th>
							<th><a href="./ProposalList.bo">수정/제안</a></th>
							<th>장기렌트</th>
						</tr>
						<tr>
							<td>${requestScope.totalCnt2 }</td>
							<td>${requestScope.totalCnt4 }</td>
							<td>${requestScope.totalCnt3 }</td>
							<td>1</td>
						</tr>
					</table><br>
					<!-- 문의/제안내역 --> 
					
						
					<!-- 업무메모장 --> 
					<h5>업무일정관리</h5>
					
					<div class="container">
					    <div class="row-24">
					        <div class="col-md-14">
					            <div class="card card-white">
					                <div class="card-body">
					                    <form action="javascript:void(0);">
					                        <input type="text" class="form-control add-task" placeholder="new task...">
					                    </form>
					                    <div class="todo-list">
					                        <div class="todo-item">
					                            <div class="checker"><span class=""><input type="checkbox"></span></div>
					                            <span>22/11/28 장기렌트 고객 방문 예정</span>
					                            <a href="javascript:void(0);" class="float-right remove-todo-item"><i class="icon-close"></i></a>
					                        </div>
					                        <div class="todo-item">
					                            <div class="checker"><span class=""><input type="checkbox"></span></div>
					                            <span>22/11/29 과장님께 보고서 컨펌받기 </span>
					                            <a href="javascript:void(0);" class="float-right remove-todo-item"><i class="icon-close"></i></a>
					                        </div>
					                    </div>
					                </div>
					            </div>
					        </div>
					    </div>
					</div>
				</div>
				<!-- 일일 현황표 --> 
					
				
				
				<!-- 달력 -->
				<div class="calendar_main">
					<div class="calendar">
						<div class="header">
							<div class="year-month"></div>
							<div class="nav">
								<button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
								<button class="nav-btn go-today" onclick="goToday()">Today</button>
								<button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
							</div>
						</div>
						<div class="main">
							<div class="days">
								<div class="day">일</div>
								<div class="day">월</div>
								<div class="day">화</div>
								<div class="day">수</div>
								<div class="day">목</div>
								<div class="day">금</div>
								<div class="day">토</div>
							</div>
							<div class="dates"></div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- 우측 -->
	
	<!-- 로그아웃 -->
	
	
	
	
	<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	<!-- 푸터 끝 -->

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
    <circle class="path-bg" cx="24" cy="24" r="22" fill="none"stroke-width="4" stroke="#eeeeee" />
    <circle class="path" cx="24" cy="24" r="22" fill="none"stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>
	<script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>
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
	<script src="./js/main.js"></script>
	<script src="./js/calendar.js"></script>
	<script src="./js/taskList.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
   <script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>
      <script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>

</body>
</html>
