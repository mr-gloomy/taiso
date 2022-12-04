<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>타이소</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />

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
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.dcom/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">


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

    <style>
	.site-table {
	  font-size: 18px;
 	  box-shadow: none;
	  width: 100%;
	  border-collapse: collapse;
	  border-radius: 5px;
	  overflow: hidden;
	  color:#2E2E2E;
	}
	.site-th {
	  padding: .5em .5em;
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
	
	<style>
	.mainicon:before {
	    content: "\f071";
	    font-family: FontAwesome;
	    line-height: 1;
	    font-size:20px;
	/*     color:#F8F9FA; */
	     -webkit-font-smoothing: antialiased;
	     -moz-osx-font-smoothing: grayscale;
	}
	
	.level_01_span{
	    font-size:20px ;
	    font-weight:600;
		border-left: 8px solid;
		border-color:#1089FF;
		padding: 0 15px 5px 10px;
		font-weight: bold;
		margin-left:2%;
		color:#2e2e2e; !important
	}
    .sls {
	    border:1px solid #2E2E2E;
	    padding:5px; 
	    font-size:17px;
	    font-weight:600; 
	    color:#2E2E2E;
	    width:200px;
    }
	</style>
	
	<style type="text/css">#whole_wrap{padding:0px; margin:0px; margin-top:1%; width:100%; line-height:2em; font-family: Malgun Gothic,맑은 고딕;}
	#whole_wrap ul { margin-left:1%;padding:0}
	.top_img{width:100%; margin-bottom:3em; text-align:center; background-size:100% auto; vertical-align: bottom;}
	
	.level_01_01{width:90%; color:#2e2e2e; font-size:1.1em; margin-left:2%; font-weight:bold; margin-top:1%; text-align:left; margin-bottom:2em; !important}
	.level_01_li{list-style:decimal; margin-left:1%; line-height: 2; color:#2E2E2E;}
	
	.level_02{color:#fe3f00; font-size:1.3em; font-weight:bold; margin-left:3%;}
	.level_02_span{border-bottom: solid 2px #af9b63; padding-bottom:0.2em; color:#2e2e2e;}
	.level_02_01{width:90%; color:#2e2e2e; font-size:1.1em; text-align:left; margin-left:5%; margin-top:1em; margin-bottom:2em;}
		.level_02_01_box{ width:90%; font-size:1.1em; margin-left:5%; margin-top:1em; text-align:left; margin-bottom:2em; background-color:#e1f4ea; border:1px solid #e1e1e1; color:#484e65; padding:1%;}
		.level_02_subt{font-weight:bold; color:#3d50ae;}
	.level_02 ul{ margin:0; padding-left:5%;}
	.level_02_li{list-style:decimal;}
	.inner_table { color:#737373; width:100%;  text-align:left;}
	.inner_table td{border:solid 1px #e1e1e1; padding:1%; line-height:1.8em;}
	.inner_table li{list-style:circle; margin-left:1%;}
	.inner_table .l_td{ background-color:#f6f6f6; color:#8c8c8c; font-weight:bold; padding:1em; text-align:center; width:40%; border:solid 1px #ccc3aa; }
	
	.inner_table .r_td{border:solid 1px #e1e1e1; line-height:2em;}
	.inner_table .t_title{background-color:#3d50ae; text-align:center; font-size:1.4em; font-weight:bold; color:#ffffff; padding:5%;}
	.inner_table .l_td_2{ background-color:#f5f5f5; font-weight:bold; text-align:left; }
	.inner_table .td_s{background-color:#ffffff; text-align:center; }
	.inner_table .td_s2{background-color:#eef6f5; text-align:center;}
	</style>
  </head>
  <body>
    
    
	<!-- header -->
	<jsp:include page="../inc/top.jsp"/>
	<!-- header -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_6.jpg'); data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="./ReservationMain.rez"">Home <i class="ion-ios-arrow-forward"></i></a></span> <span><a href="./SiteInfo.rez">사이트소개 <i class="ion-ios-arrow-forward"></i></a></span></p>
            <h1 class="mb-3 bread">지점안내</h1>
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
					      <a class="nav-link active" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true" style="font-size: 25px;">지점안내</a>
					    </li>
					  </ul>
					</div>
					
				  <div class="tab-content" id="pills-tabContent">
				  
				  <!-- ---------------------------------- 1) 지점안내 시작 ------------------------------------ -->
				    <div class="tab-pane fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
				    	<div class="site-infobox">
								<div class="positionRelative" style="padding-bottom: 50px";>
									<div id="map"></div>
								</div>						    		
				    		<div class="site-info">
   								<select id="sido_select" class="sls">
							          <option value="" selected disabled hidden>지역을 선택하세요</option>		
							          <option value="부산/울산/경남/대구">부산/울산/경남/대구</option>
							          <option value="제주">제주</option>
							          <option value="서울">서울</option>
							          <option value="인천/경기">인천/경기</option>
							          <option value="강원도">강원도</option>
							          <option value="충청/대전">충청/대전</option>
							          <option value="전라/광주">전라/광주</option>
								</select>
								<select id="site_select" class="sls">
							          <option value="" selected disabled hidden>지점을 선택하세요</option>	
								</select>
								<button type="button" class="btn btn-secondary" id="site_search" style="height:38px;">검색</button>
								<button type="button" class="btn btn-secondary" id="site_search2" style="height:38px;">내 주변 지점</button>
								<div class="site-msg"></div>
								<div class="site-list" style="padding-top: 20px";>
									<table class="site-table" style="border:1 solid;">
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
									</table>
								</div>
				    		</div>
				    	</div>
				    </div>
				<!-- ---------------------------------- 1) 지점안내 끝 ------------------------------------ -->
				
	   			   </div>
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
  <!-- sweetalert -->
  <script src="sweetalert2.all.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
  
  <!-- 카카오지도API -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4f2b3314b4b648f582b93600574cd923"></script>
  <script src="http://code.jquery.com/jquery-latest.js"></script> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <script type="text/javascript">
  // 좌표간 거리 구하기
	function getDistance(lat1, lon1, lat2, lon2, unit) {
		var radlat1 = Math.PI * lat1/180;
		var radlat2 = Math.PI * lat2/180;
		var radlon1 = Math.PI * lon1/180;
		var radlon2 = Math.PI * lon2/180;
		var theta = lon1-lon2;
		var radtheta = Math.PI * theta/180;
		var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
		dist = Math.acos(dist);
		dist = dist * 180/Math.PI;
		dist = dist * 60 * 1.1515;
		if (unit=="K") { dist = dist * 1.609344 }
		if (unit=="N") { dist = dist * 0.8684 }
		return dist;
	}
  </script>
  
  <script type="text/javascript">
 	
 	// 지도 기본 위치로 생성
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

 	$(function(){

 		// select box
 		$(function() {
 			$("#sido_select").change(function(){
 				var sido=$(this).val();
 				$("#site_select option").remove();
 				$.ajax({
 					url : "site.json",
 					type : "get",
 					datatype : "json",
 					success : function(data) {
 						$(data).each(function(i){
 							if(sido==data[i].sido){
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
 		
 		  // 지점 선택
 		  $("button[id='site_search']").click(function () {
				var name = $('select#site_select').val();
				$.ajax({
					url : "site.json",
					type : "get",
					datatype : "json",
					success : function(data) {
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
								$('.site-msg').empty();
								$('.table-select').empty();
								$('.table-select').append("<tr><td>"+data[i].sido+"</td><td> "+data[i].name+"</td><td> "+data[i].addr+"</td><td> "+data[i].tel+"</td><tr>");
							}
						});
					},
					error : function() {
						alert('error');			
					}
				});	// ajax 끝
		  });
 		  
 		  // 내 주변 지점
 		  $("button[id='site_search2']").click(function(){
 				Swal.fire({
 	                icon: 'info',
 	                text: '정보가 뜨지 않는다면 위치 액세스 권한을 허용해주세요',
 	            });
 			  
 			  	$.ajax({
					url : "site.json",
					type : "get",
					datatype : "json",
					success : function(data) {
						let str = JSON.stringify(data);	// 데이터 확인
// 						alert(str);
						// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
						if (navigator.geolocation) {
						    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
						    navigator.geolocation.getCurrentPosition(function(position) {
						        
						        var lat = position.coords.latitude,		// 위도
						            lng = position.coords.longitude;	// 경도
						            
						         for(let i=0; i<data.length;i++){
						        	 let distance = getDistance(lat, lng, data[i].lat, data[i].lng, "K");
// 						        	 console.log(distance);
									data[i].distance = distance;
						         }
						          
						         let newData = data.sort(function (a, b){
					        		  if (a.distance > b.distance) {
					        		    return 1;
					        		  }
					        		  if (a.distance < b.distance) {
					        		    return -1;
					        		  }
					        		  return 0;
				        		  });
// 						         console.log(newData[0].name);
						         
								var moveLatLon = new kakao.maps.LatLng(newData[0].lat, newData[0].lng);
								map.setCenter(moveLatLon);
								// 마커 생성
								var markerPosition  = new kakao.maps.LatLng(newData[0].lat, newData[0].lng); 
								var marker = new kakao.maps.Marker({
								    position: markerPosition
								});
								marker.setMap(map);
								// 인포윈도우 생성
								var iwContent = '<div style="padding:2px;">'+newData[0].name+'</div>',
							    iwPosition = new kakao.maps.LatLng(newData[0].lat, newData[0].lng);
								var infowindow = new kakao.maps.InfoWindow({
								    position : iwPosition, 
								    content : iwContent 
								});
								
								infowindow.open(map, marker);
								$('.site-msg').empty();
								$('.site-msg').append("고객님의 위치에서 가장 가까운 지점입니다.");
								$('.table-select').empty();
								$('.table-select').append("<tr><td>"+newData[0].sido+"</td><td> "+newData[0].name+"</td><td> "+newData[0].addr+"</td><td> "+newData[0].tel+"</td><tr>");
					      	});
						    
						} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
						    ㄴ
						    var locPosition = new kakao.maps.LatLng(35.1586, 129.0621),    
						        message = '위치 정보를 받아올 수 없습니다'
						        
						    displayMarker(locPosition, message);
						}
						
					},	// success
					error : function() {
						alert('error');			
					}
				});	// ajax 끝
		  });
 	});
 	</script>
    
  </body>
</html>