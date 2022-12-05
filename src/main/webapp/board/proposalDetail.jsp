<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>타이소</title>
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

		<section class="hero-wrap hero-wrap-2 js-fullheight "
			style="background-image: url('images/bg_6.jpg');"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
					<div class="col-md-5 ftco-animate pb-5">
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
		<!-- 헤더들어가는 곳 -->

		<!-- 아래 컨테이너 틀 -->
		<section class="ftco-section contact-section bg-light">
			<div class="container">
				<div class="row d-flex mb-5 contact-info">
<!-- 					<div class="col-md-4"> -->
					
					
				<!-- @@@@@@@@@@@@여기부터 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
					<jsp:include page="../inc/sidebar.jsp" />
				<!-- @@@@@@@@@@@@여기까지 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
		
		

		<!-- @@@@@@@@@@@@@@@@@우측@@@@@@@@@@@@@@@@ -->
		<div class="col-md-8 block-9 mb-md-5">
		<div class="board_wrap">
			<div class="board_title">
            <strong>수정제안</strong>
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
									<option value="6"
										<c:if test="${bodto.bo_cate eq '6'}">selected="selected"</c:if>>수정제안</option>
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
							<dd><a href="./file/fileDown1.jsp?file_name=${bodto.bo_file }">${bodto.bo_file }</a></dd></dl>
<%-- 							<dd><a href="./upload/${bodto.bo_file }">${bodto.bo_file }</a></dd></dl> --%>
							
							<dl>
							<dt>비밀번호</dt>
							<dd><input type="password" value="${bodto.bo_pass }" disabled="disabled"></dd>
							</dl>
					</div>
				</div>
				<br>
			 </div>
				
				<!-- 버튼 -->
				<div align="center" >
					<div class=>
						<a href="./ProposalList.bo" class="btn btn-primary">목록이동</a>
					<!-- 답변은 관리자만 가능 -->
						<c:choose>
					    	<c:when test="${mem_id=='admin'}">
							<a href="./AdminQuestionReWrite.bo?bo_num=${bodto.bo_num }&pageNum=${pageNum}&bo_re_ref=${bodto.bo_re_ref}&bo_re_lev=${bodto.bo_re_lev}&bo_re_seq=${bodto.bo_re_seq}"
								class="btn btn-primary">답변하기</a> 	
					    	</c:when>
					    </c:choose>
  					<!-- 답변은 관리자만 가능 -->
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
<script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>
</body>
</html>