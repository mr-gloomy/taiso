<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    
	<!-- header -->
	<jsp:include page="../inc/top.jsp"/>
	<!-- header -->
    <div class="hero-wrap ftco-degree-bg" style="background-image: url('images/bg_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
          <div class="col-lg-8 ftco-animate">
          	<div class="text w-100 text-center mb-md-5 pb-md-5">
	            <h1 class="mb-4">TAISO</h1>
	            <p style="font-size: 18px;">타이소타이소타이소타이소</p>
            </div>
          </div>
        </div>
      </div>
    </div>


<!--      <section class="ftco-section ftco-no-pt bg-light"> -->
		<section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row no-gutters">
    			<div class="col-md-12 featured-top">
					<form action="./ReservationDate.rez" method="post" name="fr" class="request-form ftco-animate bg-primary" onSubmit="return checkForm()">
					
		          		<h2>예약하기</h2>
    					<div class="d-flex">
							<div class="form-group mr-2">
						        <label for="" class="label">대여일</label><br>
						        <input type="text" class="form-control" name="rez_pick_date" id="start_date" placeholder="Date">
							</div>
							<div class="form-group mr-3">
						        <label for="" class="label">반납일</label><br>
						        <input type="text" class="form-control" name="rez_off_date" id="off_date" placeholder="Date">
								<input type="hidden" name="totalDate" value="">
							</div>
						</div>	       		
						<label for="" class="label" id="datealert">
							<h7>단기렌트는 28일까지만 가능합니다.</h7>
						</label><br>
						<div class="d-flex">
							<div class="form-group mr-2">
								<label for="" class="label">대여시간</label>
								<input type="text" class="form-control" name="rez_pick_time" id="time_pick" placeholder="픽업시간을 선택하세요">
<!-- 								<input type="time" name="rez_pick_time" placeholder="대여시간을 선택하세요"> -->
							</div>
							<div class="form-group mr-2">
								<label for="" class="label">반납시간</label>
<!-- 								<input type="text" class="form-control" name="rez_off_time" id="time_off" placeholder="반납시간을 선택하세요"> -->
									<input type="text" class="form-control" name="rez_off_time" id="time_off" placeholder="대여시간과 동일하게 설정됩니다" readonly>
<!-- 								<input type="time" name="rez_off_time" placeholder="대여시간을 선택하세요"> -->
							</div>
						</div>
			    		<div class="form-group">
							<label for="" class="label">이용지점</label>
							<select id="sido_select">
						          <option value="" selected disabled hidden>==지역을 선택하세요==</option>	
						          <option value="제주">제주</option>
						          <option value="서울">서울</option>
						          <option value="인천/경기">인천/경기</option>
						          <option value="강원도">강원도</option>
						          <option value="충청/대전">충청/대전</option>
						          <option value="전라/광주">전라/광주</option>
						          <option value="경상/부산/대구/울산">경상/부산/대구/울산</option>
							</select>
							<select id="site_select" name="rez_site">
						          <option value="" selected disabled hidden>==지점을 선택하세요==</option>	
							</select>
						</div>           
						<div class="form-group">
							<input type="submit" value="차량 검색" class="btn btn-secondary py-3 px-4">
						</div>
		    		</form>
	  				</div>
				</div>
				</div>
    </section>

    <section class="ftco-section ftco-no-pt bg-light">
    	<div class="container">
    		<div class="row justify-content-center">
          <div class="col-md-12 heading-section text-center ftco-animate mb-5">
          	<span class="subheading">최고의 차</span>
            <h2 class="mb-2">추천합니다</h2>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-12">
    				<div class="carousel-car owl-carousel">
  					<c:forEach var="i" begin="0" end="${carList.size()-1 }" step="1">
					<c:set var="rCar" value="${carList[i]}"/>
    					<div class="item">
    						<div class="car-wrap rounded ftco-animate">
		    					<div class="img rounded d-flex align-items-end" style="background-image: url(./upload/${rCar.car_file.split(',')[0] });">
		    					</div>
		    					<div class="text">
		    						<h2 class="mb-0"><a href="#">${rCar.car_brand }</a></h2>
		    						<div class="d-flex mb-3">
			    						<span class="cat">${rCar.car_name }</span>
			    						<p class="price ml-auto">${rCar.car_price }원 <span>/day</span></p>
		    						</div>
		    						<p class="d-flex mb-0 d-block">
<!-- 			    						<a href="#" class="btn btn-primary py-2 mr-1">Book now</a> -->
			    						<a href="./ReviewListAction.rev?car_code=${rCar.car_code }"
											class="btn btn-secondary py-2 ml-1">차량상세정보</a>
									</p>
		    					</div>
		    				</div>
    					</div>
   					</c:forEach>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>
    
    
    <section class="ftco-section testimony-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
          	<span class="subheading">최고의 후기</span>
            <h2 class="mb-3">추천합니다</h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
            
	<c:forEach var="i" begin="0" end="${rList.size()-1 }" step="1">
	<c:set var="rReview" value="${rList[i]}"/>
              <div class="item">
                <div class="testimony-wrap rounded text-center py-4 pb-5">
                  <div class="user-img mb-2" style="background-image: url(./upload/${rReview.rev_image.split(',')[0] })">
                  </div>
                  <div class="text pt-4">
                    <p class="mb-4">${rReview.rev_content }</p>
                    <p class="name">${rReview.rev_subject }</p>
                    <span class="position">${rReview.mem_nickName }</span>
                  </div>
                </div>
              </div>
     </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </section>



   
    <section class="ftco-counter ftco-section img bg-light" id="section-counter">
			<div class="overlay"></div>
    	<div class="container">
    		<div class="row">
          <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text text-border d-flex align-items-center">
                <strong class="number" data-number="1">0</strong>
                <span>년의 <br>역사</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text text-border d-flex align-items-center">
                <strong class="number" data-number="${carCnt }">0</strong>
                <span>대의 <br>차량</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text text-border d-flex align-items-center">
                <strong class="number" data-number="${mCnt }">0</strong>
                <span>명의 <br>고객</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text d-flex align-items-center">
                <strong class="number" data-number="${rezCnt }">0</strong>
                <span>건의 <br>예약</span>
              </div>
            </div>
          </div>
        </div>
    	</div>
    </section>	    
    
    <!-- footer -->
    <jsp:include page="../inc/bottom.jsp"/>
    <!-- footer -->
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<!--   <script src="js/jquery.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="./js/bootstrap-datepicker.js"></script>
  <script src="./js/bootstrap-datepicker.ko.js"></script>


<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script> -->
<!-- <script src="js/bootstrap-datepicker.ko.js"></script> -->

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
  <script src="./js/jquery.timepicker.min.js"></script>
  <script src="./js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="./js/google-map.js"></script>
  <script src="./js/main.js"></script>
  
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>


   <script type="text/javascript">
// daterangepicker
$(function() {
	
// 	  $('#book_range_date').daterangepicker({
// 	    opens: 'bottom'
// 	  }, function(start, end, label) {
// 	    console.log("A new date selection was made:" + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
// 	  });
	  
		$('#start_date').datepicker({
			  format: "yyyy-mm-dd",
			  autoclose : true,	
// 			  calendarWeeks : false,
// 			  clearBtn : false, 
// 			  showWeekDays : true ,
// 			  todayHighlight : true ,
			  language : "ko" ,
			  startDate: new Date(),
		}).on("changeDate", function(){
			  var start_date = new Date($("#start_date").val());
			  var off_date = new Date(start_date);
			  var off_date2 = new Date(start_date);
			  off_date.setDate(start_date.getDate()+1);
			  off_date2.setDate(start_date.getDate()+28);
		  $("#off_date").datepicker("setStartDate", off_date);
		  $("#off_date").datepicker("setEndDate", off_date2)
		});
		  
		$('#off_date').datepicker({
			  format: "yyyy-mm-dd",
			  autoclose : true,	
// 			  calendarWeeks : false,
// 			  clearBtn : false, 
// 			  showWeekDays : true ,
// 			  todayHighlight : true ,
			  language : "ko",
		}).on("changeDate", function(){
			var off_date2 = new Date($("#off_date").val());
		  	$("#start_date").datepicker("setEndDate", off_date2);
// 		  	alert('성공');
			var rpick_d = new Date(document.fr.rez_pick_date.value);
			var roff_d = new Date(document.fr.rez_off_date.value);
			var ch = roff_d.getTime()-rpick_d.getTime();
			var totalDate = ch/(1000*60*60*24);
// 			$('#datealert').append("<h7>대여기간 : "+charDay+"일</h7>");
// 			$('#datealert').remove();
			if(totalDate <= 28){
// 		 		alert("단기렌트는 28일까지만 가능합니다.");
				$('#datealert').empty();
// 				$('#datealert').append("<h7>단기렌트는 28일까지만 가능합니다.</h7>");
				$('#datealert').append("<h7>대여기간 : 총 "+totalDate+"일</h7>");
				document.fr.totalDate.value = totalDate;
// 				return false;
				return;
// 			} else {
// 				$('#datealert').remove();
				
// 				return false;
// 				return;
			}
		});
		
// 		$('#off_date').change(function(){
// // 			console.log(a);
// 			alert('성공');
// 			var rpick_d = new Date(document.fr.rez_pick_date.value);
// 			var roff_d = new Date(document.fr.rez_off_date.value);
// 			var ch = roff_d.getTime()-rpick_d.getTime();
// 			var charDay = ch/(1000*60*60*24);
// // 			if(charDay > 28){
// // 		 		alert("단기렌트는 28일까지만 가능합니다.");
// // 				$('#datealert').remove();
// // 				$('#datealert').append("<h7>단기렌트는 28일까지만 가능합니다.</h7>");
// // 				return false;
// 				return;
// // 			} else {
// // 				$('#datealert').remove();
// // 				$('#datealert').append("<h7>대여기간 : 총 "+charDay+"일</h7>");
// // 				return false;
// // 				return;
// // 			}
// 		});

		$('#time_pick').timepicker({
			minTime: '9:00 am',
		    maxTime: '9:00 pm',
// 		    format: "hh:mm:ss"
		});
		
		$('#time_pick').change(function(){
			document.fr.rez_off_time.value = document.fr.rez_pick_time.value;
		});
		
		$("#sido_select").change(function(){
			var sido=$(this).val();
//	 		alert("sido : "+sido);
			$("#site_select option").remove();
			$.ajax({
				url : "site.json",
				type : "get",
				datatype : "json",
				success : function(data) {
//	 				alert('success');
//	 				let str = JSON.stringify(data);	// 데이터 확인
//	 				alert(str);
					$(data).each(function(i){
						if(sido==data[i].sido){
//	 						alert('일치');
							$('#site_select').append("<option>"+data[i].name+"</option>");
						}
					});
				},
				error : function() {
					alert('error');			
				}
			});	// ajax 끝
		});	// selectBox_test 끝
});



function checkForm(){
	if(document.fr.rez_pick_date.value==""){
		alert("대여일을 선택해주세요");
		document.fr.rez_pick_date.focus();
		return false;
	}
	if(document.fr.rez_off_date.value==""){
		alert("반납일을 선택해주세요");
		document.fr.rez_off_date.focus();
		return false;
	}
	if(document.fr.rez_pick_time.value==""){
		alert("대여시간을 선택해주세요");
		document.fr.rez_pick_time.focus();
		return false;
	}
	if(document.fr.sido_select.value=="" || document.fr.site_select.value==""){
		alert("이용지점을 선택해주세요");
		document.fr.site_select.focus();
		return false;
	}
}

</script>  
    
</html>