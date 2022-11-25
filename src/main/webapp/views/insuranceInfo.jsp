<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
    <style>

.site-table {
  border: 1px #a39485 solid;
  font-size: .9em;
  box-shadow: 0 2px 5px rgba(0,0,0,.25);
  width: 100%;
  border-collapse: collapse;
  border-radius: 5px;
  overflow: hidden;
}

.site-th {
  padding: 1em .5em;
/*   padding: */
}
  
.site-thead {
  font-weight: bold;
  color: #fff;
  background: #1089FF;
}
  
.site-td, site-th {
  padding: 1em .5em;
  vertical-align: middle;
}
  
.site-td {
  border-bottom: 1px solid rgba(0,0,0,.1);
  background: #fff;
}

@media all and (max-width: 768px) {
    
.site-table, site-thead, tbody, th, td, tr {
  display: block;
}
  
.site-th {
  text-align: right;
}
  
.site-table {
  position: relative; 
  padding-bottom: 0;
  border: none;
  box-shadow: 0 0 10px rgba(0,0,0,.2);
}
  
.site-thead {
  float: left;
  white-space: nowrap;
}
  
.site-tbody {
  overflow-x: auto;
  overflow-y: hidden;
  position: relative;
  white-space: nowrap;
}
  
.site-tr {
  display: inline-block;
  vertical-align: top;
}
  
.site-th {
  border-bottom: 1px solid #a39485;
}
  
.site-td {
  border-bottom: 1px solid #e5e5e5;
}
</style>

  </head>
  <body>
    
    
	<!-- header -->
	<jsp:include page="../inc/top.jsp"/>
	<!-- header -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Car details <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">Car Details</h1>
          </div>
        </div>
      </div>
    </section>
		

<!-- 		<section class="ftco-section ftco-car-details"> -->
      <div class="container">
      	<div class="row">
      		<div class="col-md-12 pills">
						<div class="bd-example bd-example-tabs">
							<div class="d-flex justify-content-center">
							  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

							    <li class="nav-item">
							      <a class="nav-link" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true">지점안내</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" id="pills-manufacturer-tab" data-toggle="pill" href="#pills-manufacturer" role="tab" aria-controls="pills-manufacturer" aria-expanded="true">이용안내</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link active" id="pills-review-tab" data-toggle="pill" href="#pills-review" role="tab" aria-controls="pills-review" aria-expanded="true">보험안내</a>
							    </li>
							  </ul>
							</div>

						  <div class="tab-content" id="pills-tabContent">
						    <div class="tab-pane fade" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
						    	<div class="site-infobox">
										<div class="positionRelative" style="padding-bottom: 50px";>
											<div id="map"></div>
										</div>						    		
						    		<div class="site-info">
	    								<select id="sido_select">
									          <option value="" selected disabled hidden>==지역을 선택하세요==</option>	
									          <option value="경상/부산/대구/울산">경상/부산/대구/울산</option>
									          <option value="제주">제주</option>
									          <option value="서울">서울</option>
									          <option value="인천/경기">인천/경기</option>
									          <option value="강원도">강원도</option>
									          <option value="충청/대전">충청/대전</option>
									          <option value="전라/광주">전라/광주</option>
										</select>
										<select id="site_select">
									          <option value="" selected disabled hidden>==지점을 선택하세요==</option>	
										</select>
<!-- 										<input type="submit" value="검색" class="btn btn-secondary" id="site_search"> -->
										<button type="button" class="btn btn-secondary" id="site_search">검색</button>
										<div class="site-list" style="padding-top: 20px";>
											<table class="site-table" border="1">
												<thead class="site-thead">
													<tr class="site-tr">
														<th class="site-th">지역</th>
														<th class="site-th">지점명</th>
														<th class="site-th">주소</th>
														<th class="site-th">전화번호</th>
													</tr>
												</thead>
												<tbody class="table-select">
												
												
												</tbody>
<!-- 												<div class="table-select" id="table-select"> -->
<!-- 												</div> -->
											</table>
										</div>
						    		</div>
						    	</div>
						    </div>

						    <div class="tab-pane fade" id="pills-manufacturer" role="tabpanel" aria-labelledby="pills-manufacturer-tab">
						    	<h3>대여자격</h3>
								<li>소/중형/7/9인승 승합차 - 만 21세 이상, 운전경력 1년 이상</li>
								<li>10인승 이상 승합차 - 만 21세 이상, 운전경력 1년 이상</li>
								<li>15인승 승합차 - 만 26세 이상, 운전경력 1년 이상</li>
								<p>운전면허 적성검사 유효기간이 대여기간 內 남아있어야 대여가 가능함</p>
								<p>제 2운전자 등록을 원하실 경우 차량 픽업시 운전면허증을 지참하시어 동행하신 경우에 한해 등록이 가능함 (사전체크인을 통한 운전자 등록 시 예외 가능)</p>
								<p>외국인일 경우 본인확인을 위한 여권 및 국제운전면허증 필수 지참(차량운전자가 위의 대여자격조건에 맞지 않을 경우 현장에서 차량인수가 불가할 수도 있으니 필히 대여자격을 확인해 주시기 바랍니다.)</p>
								<h3>운전면허</h3>
								<p>운전면허증(차량인수시 필히 지참) 없으면 안빌려줌</p>
								<p>도로교통법상 유효한 운전면허소지자</p>
						    </div>

						    <div class="tab-pane fade show active" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab">
								<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
								<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
							</div>
		   			   </div>	<!-- tab-content -->
				</div>
			</div>
		</div>
      </div>
    </section>

    <section class="ftco-section ftco-no-pt">
    </section>
    

    <!-- footer -->
    <jsp:include page="../inc/bottom.jsp"/>
    <!-- footer -->
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
<!--   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
<!--   <script src="js/google-map.js"></script> -->
  <script src="js/main.js"></script>
  
  <!-- 카카오지도API -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4f2b3314b4b648f582b93600574cd923"></script>
  <script src="http://code.jquery.com/jquery-latest.js"></script> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<script type="text/javascript">
	$(function() {
		$("#sido_select").change(function(){
			var sido=$(this).val();
	// 		alert("sido : "+sido);
			$("#site_select option").remove();
			$.ajax({
				url : "site.json",
				type : "get",
				datatype : "json",
				success : function(data) {
	// 				alert('success');
	// 				let str = JSON.stringify(data);	// 데이터 확인
	// 				alert(str);
					$(data).each(function(i){
						if(sido==data[i].sido){
	// 						alert('일치');
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
	
		// 지도 생성
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(35.1586, 129.0621),
			level: 3
		};
		
		var map = new kakao.maps.Map(container, options);
		
		// 마커 생성
		var markerPosition  = new kakao.maps.LatLng(35.1586, 129.0621); 
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		marker.setMap(map);
		
		// 인포윈도우 생성
		var iwContent = '<div style="padding:2px;">아이티윌지점</div>',
	    iwPosition = new kakao.maps.LatLng(35.1586, 129.0621);
		var infowindow = new kakao.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		infowindow.open(map, marker);

 	</script>
 	
 	<script type="text/javascript">
 	$(function(){
 		  $("button[id='site_search']").click(function () {
				var name = $('select#site_select').val();
// 				alert(jb);
				$.ajax({
					url : "site.json",
					type : "get",
					datatype : "json",
					success : function(data) {
// 						alert('success');
// 						let str = JSON.stringify(data);	// 데이터 확인
						$(data).each(function(i){
							if(name==data[i].name){
								// 지도 이동
								var moveLatLon = new kakao.maps.LatLng(data[i].lat, data[i].lng);
								map.setCenter(moveLatLon);
								// 마커 생성
								var markerPosition  = new kakao.maps.LatLng(data[i].lat, data[i].lng); 
								var marker = new kakao.maps.Marker({
								    position: markerPosition
								});
								marker.setMap(map);
								// 인포윈도우 생성
								var iwContent = '<div style="padding:2px;">'+data[i].name+'</div>',
							    iwPosition = new kakao.maps.LatLng(data[i].lat, data[i].lng);
								var infowindow = new kakao.maps.InfoWindow({
								    position : iwPosition, 
								    content : iwContent 
								});
								infowindow.open(map, marker);
								$('.table-select').empty();
								$('.table-select').append("<tr><td>"+data[i].sido+"</td><td>"+data[i].name+"</td><td>"+data[i].addr+"</td><td>"+data[i].tel+"</td><tr>");
							}
						});
					},
					error : function() {
						alert('error');			
					}
				});	// ajax 끝
		  });
 	});
 	</script>
    
  </body>
</html>