
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>관리자</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="./css/animate.css">
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


<script type="text/javascript">
    $(window).on('load', function() {
        setTimeout(function(){
            $("#waiting").fadeOut();
        }, 300);
    });
</script>
 <script type ="text/javascript">
    	function carCheck(){
    		
    		if(document.fr.car_site.value == ""){
    			alert('지점을 선택하세요!');
    			document.fr.car_site.focus();
    			return false;
    		}
    		
    		if(document.fr.car_brand.value == ""){
    			alert('차량 브랜드를 입력하세요 ! ');
    			document.fr.car_brand.focus();
    			return false;
    		}
    		if(document.fr.car_price.value == ""){
    			alert('차량 렌트가격을 입력하세요 ! ');
    			document.fr.car_price.focus();
    			return false;
    		}
    		if(document.fr.car_op.value == ""){
    			alert('차량 옵션을 입력하세요 ! ');
    			document.fr.car_op.focus();
    			return false;
    		}
    		if(document.fr.car_category.value == ""){
    			alert('차량 카테고리를 입력하세요 ! ');
    			document.fr.car_category.focus();
    			return false;
    		}
    		if(document.fr.car_year.value == ""){
    			alert('차량 연식을 입력하세요 ! ');
    			document.fr.car_year.focus();
    			return false;
    		}
    		if(document.fr.car_fuel.value == ""){
    			alert('차량 연료타입을 입력하세요 ! ');
    			document.fr.car_fuel.focus();
    			return false;
    		}
    		if(document.fr.car_category.value == ""){
    			alert('차량 카테고리를 입력하세요 ! ');
    			document.fr.car_category.focus();
    			return false;
    		}
    	}
    
    </script>
<!-- 블로그 로딩 코드 end -->
    
<style type="text/css">
.table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 50%;
  border: 1px solid #f2f2f2;
  min-width: 700px !important;
  width: 100%;
}

.table tbody tr td {
    vertical-align: middle;
    padding: 2px 0;
    border-bottom: 1px solid rgba(0, 0, 0, 0.05) !important;
	width: 9em;

tr:nth-child(even) {
  background-color: #f2f2f2;
}

/* list */
#inputFiled {
	width: 350px;
	height: 46px;
	border: 1px solid black;
	outline: none;
	font-size: 40px;
	vertical-align: middle;
}

.to-dos {
	margin-top: 25px;
}

/* task list */
</style>

  </head>
 <body>
 <div id="waiting">
   <img src="./img/loading.gif">
</div>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
	<jsp:include page="../inc/top.jsp"/>
    <section class="hero-wrap hero-wrap-2 js-fullheight" 
    style="background-image: url('images/bg_6.jpg');"
    data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
      	<div
			class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-5">
				<p class="breadcrumbs">
					<span class="mr-2"><a href="./AdminMain.mb">admin <i
							class="ion-ios-arrow-forward"></i></a></span> <span>Contact<i
						class="ion-ios-arrow-forward"></i></span>
				</p>
				<h1 class="mb-3 bread">차량 등록하기</h1>
			</div>
		</div>
      </div>
    </section>
	<!-- 헤더들어가는 곳 -->
	
	<!-- 메인페이지  -->
		<section class="ftco-section contact-section">
			<div class="container">
				<div class="row d-flex mb-3 contact-info">
					<div class="col-md-4">
						<div class="board_title">
							<strong>[관리자]차량 정보 등록</strong>
						</div>

						<!-- 프로필 -->
						<div class="row mb-6">
							<div class="profile">
								<div class="txt">
									<img src="./images/user.png">
									<p>admin님</p>
									<p>관리자 차량등록페이지</p>
								</div>
							</div>

							<!-- 프로필 -->

						</div>
					</div>
					<!-- 우측 -->
					<div class="col-md-3 block-1 mb-md-1" align="center">
					  <form action="./AdminCarAddAction.ad" class="bg-light p-5 contact-form" method="post" enctype="multipart/form-data"
            		name="fr" onsubmit="return carCheck();">	
					  	<table class="table">
							<tbody class="tbody">
							<tr align="center">
							<td><p>이용지점 </p></td>
							<td><select id="sido_select" class="sls" style="width:200px;">
						          <option value="" selected disabled hidden>&nbsp;지역을 선택하세요</option>	
						          <option value="부산/울산/경남/대구">부산/울산/경남/대구</option>
						          <option value="제주">제주</option>
						          <option value="서울">서울</option>
						          <option value="인천/경기">인천/경기</option>
						          <option value="강원도">강원도</option>
						          <option value="충청/대전">충청/대전</option>
						          <option value="전라/광주">전라/광주</option>
							</select>
							<select id="site_select" name="rez_site" class="sls" style="width:200px;">
						          <option value="" selected disabled hidden>&nbsp;지점을 선택하세요</option>	
							</select></td>
						</tr> 
						<tr align="center">
									<td><p>카테고리</p></td>
									<td><div class="form-check form-check-inline" align="right">
								<input type = "radio" name="car_category" class="sls" value="small">소형
								<input type = "radio" name="car_category" class="sls" value="compact">준중형  
								<input type = "radio" name="car_category" class="sls" value="middle"> 중형 
								<input type = "radio" name="car_category" class="sls" value="large"> 대형 
								<input type = "radio" name="car_category" class="sls" value="suv"> SUV 
								<input type = "radio" name="car_category" class="sls" value="foreign"> 수입차 
							</div></td>
								</tr>
								<tr align="center">
									<td><p>브랜드</p></td>
									<td><input type="text" name="car_brand" class="form-control" ></td>
								</tr>
								<tr align="center">
									<td><p>차량명</p></td>
									<td><input type="text" name="car_name" class="form-control" ></td>
								<tr align="center">
									<td><p>렌트가격(/day)</p></td>
									<td><input type="text" name="car_price" class="form-control" ></td>
								</tr>
								<tr align="center">
									<td><p>차량옵션</p></td>
									<td><input type="text" name="car_op" class="form-control" ></td>
								</tr>
								
								<tr align="center">
									<td><p>연식</p></td>
									<td><input type="text" name="car_year" class="form-control" ></td>
								</tr>
								<tr align="center">
									<td><p>연료</p></td>
									<td><input type="text" name="car_fuel" class="form-control" ></td>
								</tr>
								<tr align="center">
									<td><p>상품 이미지</p></td>
									<td><input type="file" name="car_file" class="form-control"></td>
								</tr>
							</tbody>
						</table>
						<input type="submit" value="등록하기"  class="btn btn-primary py-1 px-2">
						<input type="reset" value="초기화하기"  class="btn btn-primary py-1 px-2">
					  </form>
					</div>
				</div>
			</div>
		</section>


	<!-- 메인페이지  -->

   	
	<div class="clear"></div>
	<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->
	</div>
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="./js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    <script src="./js/taskList.js"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>

	 <script type="text/javascript">
	   $(function() {
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
	   </script>        
  </body>
</html>