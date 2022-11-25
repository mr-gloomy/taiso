<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>FAQ</title>
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

<style>
 
 /** ---------------------- style.css ---------------------------- */
 
	.panel {
  padding: 20px;
  
}
.accordionMainTitle {
  background:#c1e3ff;
  border: 2px solid #ddd;
  border-radius: 10px 10px 0 0;
  padding: 20px 35px;
  font-family: 'Raleway', sans-serif;
  font-size: 25px;
}

.acc-header {
  cursor: pointer;
  padding: 25px;
  color: #397BB5;
  border-radius: 10px;
  font-weight: bold;
  background-color: #FAFAFA;
  display: block;
  font-family: 'Raleway', sans-serif;
  margin-bottom:0px;
  border-bottom: none !important;
}


.acc-body {
    padding: 20px;
    line-height: 1.9;
    background-color: #FAFAFA;
    border-radius: 0 0 10px 10px;
    font-family: 'Raleway', sans-serif;
}
#accordion .acc-body{
   display : none;
}

#accordion .active .acc-body {
   display : block;
}

#panel-wrapper {
  border: 2px solid #DDD;
  border-top: none;
  border-radius: 0 0 10px 10px;
  display: block;
}
.iconFixer {
  float: right;
}
.acc-header:hover{
  background-color: #397BB5 !important;
  color: white !important;
}

.panel:hover .acc-header {
    background-color: #397BB5 !important;
    color: white !important;
    
}

/** demo.css */
@import url('https://fonts.googleapis.com/css?family=Roboto&display=swap');
@import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
*{ margin: 0; padding: 0;}
body{
  font-family: 'Roboto', sans-serif;
  font-style: normal;
  font-weight: 300;
  font-smoothing: antialiased;
-webkit-font-smoothing: antialiased;
-moz-osx-font-smoothing: grayscale;
  font-size: 15px;
/*   background: #eee; */
}
.intro{
   background: #fff;
   padding: 60px 30px;
   color: #333;
   margin-bottom: 15px;
   line-height: 1.5;
   text-align: center;
}
.intro h1 {
   font-size: 18pt;
   padding-bottom: 15px;

}
.intro p{
   font-size: 14px;
}

.action{
   text-align: center;
   display: block;
   margin-top: 20px;
}

a.btn {
  text-decoration: none;
  color: #666;
   border: 2px solid #666;
   padding: 10px 15px;
   display: inline-block;
   margin-left: 5px;
}
a.btn:hover{
   background: #666;
   color: #fff;
    transition: .3s;
-webkit-transition: .3s;
}
.btn:before{
  font-family: FontAwesome;
  font-weight: normal;
  margin-right: 10px;
}
.github:before{content: "\f09b"}
.down:before{content: "\f019"}
.back:before{content:"\f112"}
.credit{
    background: #fff;
    padding: 12px;
    font-size: 9pt;
    text-align: center;
    color: #333;
    margin-top: 40px;

}
.credit span:before{
   font-family: FontAwesome;
   color: #e41b17;
   content: "\f004";


}
.credit a{
   color: #333;
   text-decoration: none;
}
.credit a:hover{
   color: #1DBF73; 
}
.credit a:hover:after{
    font-family: FontAwesome;
    content: "\f08e";
    font-size: 9pt;
    position: absolute;
    margin: 3px;
}
main{
  background: #fff;
  padding:: 20px;
  
}

article li{
   color: #444;
   font-size: 15px;
   margin-left: 33px;
   line-height: 1.5;
   padding: 5px;
}
article h1,
article h2,
article h3,
article h4,
article p{
   padding: 14px;
   color: #333;
}
article p{
   font-size: 15px;
    line-height: 1.5;
}
 
@media only screen and (min-width: 720px){
    main{
      max-width: 720px;
      margin-left: auto;
      margin-right: auto; 
      padding: 24px;
    }


}

.set-overlayer,
.set-glass,
.set-sticky {
	cursor: pointer;
	height: 45px;
	line-height: 45px;
	padding: 0 15px;
	color: #333;
	font-size: 16px;
}
.set-overlayer:after,
.set-glass:after,
.to-active:after,
.set-sticky:after {
	font-family: FontAwesome;
	font-size: 18pt;
	position: relative;
	float: right;
}
.set-overlayer:after,
.set-glass:after,
.set-sticky:after {
	content: "\f204";
	transition: .6s;
}

.to-active:after {
	content: "\f205";
	color: #008080;
	transition: .6s;
}
.set-overlayer,
.set-glass,
.set-sticky,
.source,
.theme-tray {
	margin: 10px;
	background: #f2f2f2;
	border-radius: 5px;
	border: 2px solid #f1f1f1;
	box-sizing: border-box;
}
/* Syntax Highlighter*/

pre.prettyprint {
	padding: 15px !important;
   margin: 10px;
	border: 0 !important;
  background: #f2f2f2;
  overflow: auto;
}

.source {
	white-space: pre;
	overflow: auto;
	max-height: 400px;
}
code{
    border:1px solid #ddd;
    padding: 2px;
    border-radius: 2px;
}

/** ---------------------- demo.css ------------------------------- */
	
	</style>
  </head>
  <body>
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
            <h1 class="mb-3 bread">FAQ</h1>
          </div>
        </div>
      </div>
    </section>
	<!--  -->
	 
	<!-- left -->
    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
        	
				<!-- @@@@@@@@@@@@여기부터 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
					<jsp:include page="../inc/sidebar.jsp" />
				<!-- @@@@@@@@@@@@여기까지 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
   	 <!-- 우측 -->
     <!-- 여기부터는 틀이라서 건드리면 안 됨  --> 
            <div class="col-md-8 block-9 mb-md-5">


						<div class="accord">
							<div id="accordion">
								<div class="accordionMainTitle">
									<span>FAQ</span>
								</div>
								<div id="panel-wrapper">
									<div class="panel active">
										<div class="acc-header">
											<span>What is Codehim?</span> <i
												class="fa fa-chevron-down iconFixer"></i>
										</div>
										<div class="acc-body">
											<p>CodeHim is one of the BEST developer websites that
												provide web designers and developers with a simple way to
												preview and download a variety of free code &amp; scripts.</p>
										</div>
									</div>
									<div class="panel">
										<div class="acc-header">
											<span>Lorem Ipsum is simply dummy text</span> <i
												class="fa fa-chevron-down iconFixer"></i>
										</div>
										<div class="acc-body">
											<p>But I must explain to you how all this mistaken idea
												of denouncing pleasure and praising pain was born and I will
												give you a complete account of the system, and expound the
												actual teachings of the great explorer of the truth, the
												master-builder of human happiness. No one rejects, dislikes,
												or avoids pleasure itself, because it is pleasure, but
												because those who do not know how to pursue pleasure
												rationally encounter consequences that are extremely
												painful.</p>
										</div>
									</div>
									<div class="panel">
										<div class="acc-header">
											<span class="acc-header-title">Lorem Ipsum is simply
												dummy text</span> <i class="fa fa-chevron-down iconFixer"></i>
										</div>
										<div class="acc-body">
											<p>But I must explain to you how all this mistaken idea
												of denouncing pleasure and praising pain was born and I will
												give you a complete account of the system, and expound the
												actual teachings of the great explorer of the truth, the
												master-builder of human happiness. No one rejects, dislikes,
												or avoids pleasure itself, because it is pleasure, but
												because those who do not know how to pursue pleasure
												rationally encounter consequences that are extremely
												painful.</p>
										</div>
									</div>
								</div>

							</div>
						</div>


						<!--           <div class="col-md-8 block-9 mb-md-5"> -->
<!--             <form action="#" class="bg-light p-5 contact-form"> -->
<!--               <div class="form-group"> -->
<!--                 <input type="text" class="form-control" placeholder="Your Name"> -->
<!--               </div> -->
<!--               <div class="form-group"> -->
<!--                 <input type="text" class="form-control" placeholder="Your Email"> -->
<!--               </div> -->
<!--               <div class="form-group"> -->
<!--                 <input type="text" class="form-control" placeholder="Subject"> -->
<!--               </div> -->
<!--               <div class="form-group"> -->
<!--                 <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea> -->
<!--               </div> -->
<!--               <div class="form-group"> -->
<!--                 <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5"> -->
<!--               </div> -->
<!--             </form> -->
          
<!--           </div> -->
<!--         </div> -->
<!--         <div class="row justify-content-center"> -->
<!--         	<div class="col-md-12"> -->
<!--         		<div id="map" class="bg-white"></div> -->
<!--         	</div> -->
        </div>
      </div>
     </div>
    </section>
	 <!-- 우측 -->
	
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="./js/google-map.js"></script>
	<script src="./js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    
  </body>
</html>