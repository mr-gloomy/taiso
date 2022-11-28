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
    .sls {border:1px solid;
	    padding:5px; 
	    font-size:18px ;
	    font-weight:600; 
	    font-family: "Poppins", Arial, sans-serif;
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
	
  </head>
  <body>
    
    
	<!-- header -->
	<jsp:include page="../inc/top.jsp"/>
	<!-- header -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_6.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="./ReservationMain.rez"">Home <i class="ion-ios-arrow-forward"></i></a></span> <span><a href="./UseInfo.rez">사이트소개 <i class="ion-ios-arrow-forward"></i></a></span></p>
            <h1 class="mb-3 bread">이용안내</h1>
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
					      <a class="nav-link active" id="pills-manufacturer-tab" data-toggle="pill" href="#pills-manufacturer" role="tab" aria-controls="pills-manufacturer" aria-expanded="true" style="font-size: 20px;">이용안내</a>
					    </li>
					    <li class="nav-item">
					      <a class="nav-link" id="pills-review-tab" data-toggle="pill" href="#pills-review" role="tab" aria-controls="pills-review" aria-expanded="true" style="font-size: 20px;">보험안내</a>
					    </li>
					  </ul>
					</div>
					
				  <div class="tab-content" id="pills-tabContent">
				<!-- ---------------------------------- 2) 이용안내 시작 ------------------------------------ -->
			    <div class="tab-pane fade show active" id="pills-manufacturer" role="tabpanel" aria-labelledby="pills-manufacturer-tab">
			        <div id="subpageouter">
			        <div class="subpagecontent">
			        <div class="divEtcinfoHTML" >
			                
					<div class="level_01"><span class="level_01_span">렌트카 대여조건</span></div><br>
					<h5 style="color:#1089FF; margin-left:3%;">(주)TAISO의 대여 자격은 다음의 조건을 갖춘 유효한 운전 면허증(국제 운전면허증)을 소지한 분께 대여가 가능합니다.</h5>
					<div class="level_01_01">
					1) 운전연령 : 만 21세 이상<br>
					2) 운전경력 : 1년 이상<br>
					3) 면허소지 : 도로교통법상 유효한 면허증(국제 운전면허증) 소지자<br>
					<table cellpadding="0" cellspacing="0" class="inner_table">
						<tbody>
							<tr>
								<td class="l_td" style="text-align: left; color:#2E2E2E";>
								<ul>
									<li style="list-style: decimal;">승용차 : 나이가 만 21세 이상으로 2종 보통운전면허 이상 소지자이며 면허 운전경력 1년 이상인 고객</li>
									<li style="list-style: decimal;">고급 대형차 : 나이가 만 21세 이상으로 2종보통운전면허 이상 소지자이며 운전경력 1년 이상인 고객</li>
									<li style="list-style: decimal;">7/9인승 이하 승합 : 나이가 만 21세이상으로 2종보통운전면허 이상 소지자이며 운전경력 1년 이상인 고객</li>
									<li style="list-style: decimal;">12인승 승합 : 나이가 만21세이상으로 1종 보통운전면허 이상 소지자이며 운전경력2년 이상인 고객</li>
									<li style="list-style: decimal;">LPG 승용 차량 : 나이가 만 21세이상으로 2종 보통운전면허 이상 소지자이며 운전경력 1년 이상인 고객</li>
									<li style="list-style: square; color:#FF4200">고객은 교통법규를 준수하여야 하며, 차량 임차중에 발생한 교통법규 위반에 관한 사항은 임차인의 책임입니다.</li>
									<li style="list-style: square; color:#FF4200">주의사항 : 운전면허증을 반드시 지참하여 주시고, 실사용자와 예약자명을 분명히 밝혀주셔야 만일의 사태에 불이익이 없습니다.</li>
								</ul>
								</td>
							</tr>
						</tbody>
					</table>
					</div>
					
					<div class="level_01"><span class="level_01_span">렌트카 대여약관</span></div>
					<div class="level_01_01">
					<ul style="margin: auto; padding: 0px; line-height:2;">
						<li style="list-style: decimal; margin-left:3%; ">연료대금, 공항주차요금은 임차인 부담입니다. (차량반납시 연료초과분은 환불이 안됩니다.)</li>
						<li style="list-style: decimal; margin-left:3%; ">임차중에 발생된 제반교통법규에 관한 사항은 임차인의 책임이며 반환후에도 유효합니다.</li>
						<li style="list-style: decimal; margin-left:3%; ">대여차량은 차량손해보험(자차)을 제외한 종합보험(대인, 대물, 자손)에 가입되어 있습니다. (차량손해보험 가입은 고객 선택사항입니다.)</li>
						<li style="list-style: decimal; margin-left:3%; ">차량운행중 임차인의 귀책사유로 사고가 발생시 사고차량의 수리비와 위 차량수리기간 동안의 휴차보상료(1일요금의 50%)는 임차인이 부담하셔야 합니다. (단, 차량손해보험 가입시 면책금 50,000원과 휴차료만 부담)</li>
						<li style="list-style: decimal; margin-left:3%; ">무단연장사용 또는 본 계약서에 기재된 계약자이외 사용시 종합보험혜택을 받지 못하며 기타 이에 상응하는 불이익 조치를 취하여도 이의 제기를 하지 못합니다.</li>
						<li style="list-style: decimal; margin-left:3%; ">차량대여 및 반납은 당사 근무시간에만 가능합니다.</li>
						<li style="list-style: decimal; margin-left:3%; ">기타 모든 조건은 대여계약서의 대여약관에 준합니다.</li>
						<li style="list-style: square; color:#FF4200; margin-left:3%;">이 차량은 만 21세 이하 운행사고시 보험혜택을 받으실 수 없습니다.</li>
					</ul>
					
				    </div>
				    </div>
				    </div>
				    </div>
			    </div>
				<!-- ---------------------------------- 2) 이용안내 끝 ------------------------------------ -->
				
				
				
				<!-- ---------------------------------- 3) 보험안내 시작 ------------------------------------ -->
		        <div class="tab-pane fade" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab">
		        <div id="subpageouter">
		        <div class="subpagecontent">
		        <div class="divEtcinfoHTML" >
			               
		        <div class="level_01"><span class="level_01_span">렌트카 보험안내</span></div>
				
				<div class="level_01_01">
				<ul style="margin: auto; padding: 0px;">
					<li class="level_01_li" style="margin-left:3%; ">모든차량은 종합보험(대인, 대물, 자손)에 가입되어 있습니다	</li>
						<div style="color: rgb(255, 66, 0); margin-left:3%;">보상한도 : 대물(2,000만원), 대인(무한), 자손(1,500만원)</div>
					<li class="level_01_li" style="color:#1089FF; margin-left:3%;">차량손해(자차)보험은 이용자의 선택사항입니다.</li>
					<li class="level_01_li" style="margin-left:3%;">보험 보상과 관련하여 임대차 계약서 뒷면 약관에 기재된 내용을 숙지바랍니다.
					<table cellpadding="0" cellspacing="0" class="inner_table">
						<tbody>
							<tr>
								<td class="l_td" style="text-align: left;"><span style="color:#1089FF; font-weight: bold;">※ 교통법규</span>
								<ul>
				<!-- 				<ul style="color: rgb(115, 115, 115); font-weight: normal;"> -->
									<li class="level_01_li" style="list-style: square;">차량 운전자는 교통법규를 준수하셔야 하며, 제반사항은 임차인의 책임입니다.</li>
									<li class="level_01_li" style="list-style: square;">사고의 경우 도로교통법 위반 시에는 보험보상의 일부 혜택을 받지 못할 수도 있습니다.</li>
								</ul>
								<span style="color:#1089FF; font-weight: bold;">※ 계약연장</span>
				
								<ul>
				<!-- 				<ul style="color: rgb(115, 115, 115); font-weight: normal;"> -->
									<li class="level_01_li" style="list-style: square;">계약기간을 연장하여 사용코자 할 경우에는 사전에 동의를 받아야 합니다.</li>
									<li class="level_01_li" style="list-style: square;">사전 동의 없이 연장사용 중에 발생한 보험 및 차량 손해에 대해서는 보상이나 면책을 받지 못할 수 있습니다.</li>
								</ul>
								</td>
							</tr>
						</tbody>
					</table>
					</li>
				</ul>
				</div>
				
				<div class="level_01"><span class="level_01_span">차량손해면책 제도</span></div>
				
				<div class="level_01_01">
					<ul>
						<li class="level_01_li" style="list-style: square;">운전자 과실에 의한 차량 손해(손, 망실)는 임차인의 책임입니다.</li>
						<li class="level_01_li" style="list-style: square;">차량대여 계약시 사용자와 렌트카 회사간의 약정에 따라 사용자의 책임을 감면해주는 제도로서, 사고 발생시에는 고객님께서 차종에 따른 면책금을 따로 지불하셔야 하며, 보상한도는 보험회사에서 보상해주는 차량보험가액까지이며, 만일 이 금액을 초과하는 사고 발생에 대한 부분은 고객님께서 보상하셔야 합니다.</li>
						<li class="level_01_li" style="list-style: square;">사고발생 후 <span style="color:#FF4200;">자차과실이 50%이상일 경우 </span>계약해지가 될 수 있으며, 잔여기간에 대한 대여료는 반환되지 않습니다.</li>
						<li class="level_01_li" style="list-style: square;">차량사고 발생시 자사 지정정비업소에서 최초견적을 내며 견적비용에 의의가 있을시에는 고객이 영업소 관할구역내에 1급자동차정비업소에 견적의뢰하며 견적이 차이가 많이 나는경우 지정정비업소에서 재견적을 받아 조정하거나 고객과 협의하여 정비업소등을 결정한다.</li>
						<li class="level_01_li" style="list-style: square;">일반자차면책 : 사고 시 차종별 한도금액 내에서 최대 50만원의 면책금과 휴차보상료 부담</li>
							<div style="line-height: 2;">&nbsp;&nbsp;&nbsp;- 고급차량 :&nbsp;면책금 최대50만원+휴차보상료</div>
							<div style="line-height: 2;">&nbsp;&nbsp;&nbsp;- 기타차량 :&nbsp;면책금 최대30만원+휴차보상료</div>
						<li class="level_01_li" style="list-style: square;">완전자차면책 : 보상한도 내 수리비 및 휴차보상료 부담금액 없음. <span style="color:#FF4200;"><u>단, 과실100% 사고시 휴차보상료는 임차인이 부담</u></span>
						<li class="level_01_li" style="list-style: square;">자차면책 보상한도 : 차량별 한도금액이 있으며 한도외 수리금액은 임차인이 부담</li>
							<div style="line-height: 2;"><span style="color:#1089FF;">&nbsp;&nbsp;&nbsp;- 차종별 한도 상이 (한도금액은 업체로 문의 바랍니다.)</span></div>
					</ul>
				</div>
				
				<div class="level_02"><span class="level_02_span"><div class="mainicon">&nbsp;&nbsp;다음의 경우는 보험처리 및 차량손해(자차) 면책처리가 불가능합니다.</span></div></div>
				
				<div class="level_02_01">
				<table cellpadding="0" cellspacing="0" class="inner_table">
					<tbody>
						<tr>
							<td class="l_td" style="text-align: left; color:#2E2E2E";>
							<ul>
								<li style="list-style: decimal;">임차인의 고의로 인한 사고</li>
								<li style="list-style: decimal;">무면허 운전사고</li>
								<li style="list-style: decimal;">음주운전, 약물중독운전 사고</li>
								<li style="list-style: decimal;">렌트카를 범죄에 이용하거나 영업용이나 경기용, 연습용, 테스트용으로 사용하던 중 발생한 사고</li>
								<li style="list-style: decimal;">임차인(임차인과 기록된 공동임차인 포함) 이외의 제3자가 렌트카를 사용하여 발생한 사고</li>
								<li style="list-style: decimal;">본인 부주의로 인한 차량도난사고</li>
								<li style="list-style: decimal;">정원초과로 인한 사고</li>
								<li style="list-style: decimal;">사고 후 당사 미보고 사고</li>
								<li style="list-style: decimal; color:#1089FF;"><span style="color:#1089FF;">1사고 1건 초과 사고 (자차는 1회소멸성)</span></li>
								<li style="list-style: decimal; color:#1089FF;"><span style="color:#1089FF;">도외반출(추자도,우도포함)시 발생하는 모든 사고.</span></li>
								<li style="list-style: decimal; color:#1089FF;"><span style="color:#1089FF;">차키, 체인, 휠, 실내부품, 네비게이션, 타이어펑크 및 타이어파손 비용, 사고견인, 현장출동(배터리방전,키분실 등)비용은 자차에 적용되지 않습니다. (고객부담)</span></li>
							</ul>
							</td>
						</tr>
					</tbody>
				</table>
				</div>
				
				<div class="level_02"><span class="level_02_span"><div class="mainicon">&nbsp;&nbsp;11대 중과실 항목 위반시에도 면책처리가 불가능합니다.</span></div></div>
				
				<div class="level_02_01">
				<table cellpadding="0" cellspacing="0" class="inner_table">
					<tbody>
						<tr>
							<td class="l_td" style="text-align:left; color:#2E2E2E";">
							<ul>
								<li style="list-style: decimal;">신호 및 지시 위반</li>
								<li style="list-style: decimal;">중앙선침범, 불법유턴</li>
								<li style="list-style: decimal;">제한속도보다 20KM이상 과속</li>
								<li style="list-style: decimal;">앞지르기 방법 위반</li>
								<li style="list-style: decimal;">철길건널목 통과방법위반</li>
								<li style="list-style: decimal;">횡단보도사고</li>
								<li style="list-style: decimal;">무면허운전</li>
								<li style="list-style: decimal;">음주운전</li>
								<li style="list-style: decimal;">보도 침범 및 보도 횡단방법 위반</li>
								<li style="list-style: decimal;">승객추락방지 의무 위반</li>
								<li style="list-style: decimal;">어린이보호구역 안전운전 의무 위반</li>
							</ul>
							</td>
						</tr>
					</tbody>
				</table>
				</div>
				</div>
				</div>
				</div>
			    </div>
				<!-- ---------------------------------- 3) 보험안내 끝 ------------------------------------ -->
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
    
  </body>
</html>