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

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript">
	
	    function commentOpen(rev_num){
	    	
		    var _width = '500';
		    var _height = '500';
		    
		    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
		    var _left = Math.ceil(( window.screen.width - _width )/2);
		    var _top = Math.ceil(( window.screen.height - _height )/2); 
		
			// 새 창 열기
			document.domain = "localhost"; //document.domain 값이 팝업과 부모창 동일해야 합니다.
			window.open("./ReviewComment.rev?rev_num="+rev_num,"",'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
	    	
	    }
	    
	    var imgCommonPreview = new Image();
	    function viewPic(filepath) {
	    	if(filepath == "") {
	    		alert('등록된 이미지가 없습니다.');
	    		return;
	    	}
	
	    	imgCommonPreview.src = filepath;
	    	setTimeout("createPreviewWin(imgCommonPreview)", 100);
	    }
	
	    function createPreviewWin(imgCommonPreview) {
	    	if(!imgCommonPreview.complete) {
	    		setTimeout("createPreviewWin(imgCommonPreview)", 100);
	    		return;
	    	}
	
	    	var scrollsize = 17;
	    	var swidth = screen.width - 10;
	    	var sheight = screen.height - 90;
	    	var wsize = imgCommonPreview.width
	    	var hsize = imgCommonPreview.height;
	
	    	if(wsize < 50) wsize = 50;		// 가로 최소 크기
	    	if(hsize < 50) hsize = 50;		// 세로 최소 크기
	    	if(wsize > swidth) wsize = swidth;	// 가로 최대 크기
	    	if(hsize > sheight) hsize = sheight;	// 세로 최대 크기
	
	    	// 세로가 최대크기를 초과한경우 세로스크롤바 자리 확보
	    	if((wsize < swidth-scrollsize) && hsize >= sheight) wsize += scrollsize;
	
	    	// 가로가 최대크기를 초과한경우 가로스크롤바 자리 확보
	    	if((hsize < sheight-scrollsize) && wsize >= swidth) hsize += scrollsize;
	
	    	// IE 6,7 전용 : 가로세로 크기가 보통일때 세로 스크롤바 자리 확보
	    	if((wsize < swidth-scrollsize) && hsize < sheight 
	    		&& (navigator.userAgent.indexOf("MSIE 6.0") > -1
	    		|| navigator.userAgent.indexOf("MSIE 7.0") > -1))wsize += scrollsize; 
	
	    	// 듀얼 모니터에서 팝업 가운데 정렬하기
	    	var mtWidth = document.body.clientWidth;	// 현재 브라우저가 있는 모니터의 화면 폭 사이즈
	    	var mtHeight = document.body.clientHeight;	// 현재 브라우저가 있는 모니터의 화면 높이 사이즈
	    	var scX = window.screenLeft;			// 현재 브라우저의 x 좌표(모니터 두 대를 합한 총 위치 기준)
	    	var scY = window.screenTop;			// 현재 브라우저의 y 좌표(모니터 두 대를 합한 총 위치 기준)
	    	var popX = scX + (mtWidth - wsize) / 2 - 50;	// 팝업 창을 띄울 x 위치 지정(모니터 두 대를 합한 총 위치 기준)
	    	var popY = scY + (mtHeight - hsize) / 2 - 50;	// 팝업 창을 띄울 y 위치 지정(모니터 두 대를 합한 총 위치 기준)
	    	
	        // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	        var _left = Math.ceil(( window.screen.width - wsize )/2);
	        var _top = Math.ceil(( window.screen.height - hsize )/2); 
	
	    	// window.open('주소', '이름(공란가능)', '속성');
	    	imageWin = window.open("", "", "top=" + _top
	    				+ ",left=" + _left
	    				+ ",width=" + wsize
	    				+ ",height=" + hsize
	    				+",scrollbars=no,resizable=yes,status=no");
	    	imageWin.document.write("<html><title>Preview</title><style>body{overflow-x:hidden; overflow-y:hidden;}</style><body style='margin:0;cursor:pointer;' title='Close' onclick='window.close()'>");
	    	imageWin.document.write("<img src='" + imgCommonPreview.src + "'>");
	    	imageWin.document.write("</body></html>");
	    }
  </script>
  </head>
  <body>
    
	 <jsp:include page="../inc/top.jsp"></jsp:include>
    
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
		

		<section class="ftco-section ftco-car-details">
      <div class="container">
      	<div class="row justify-content-center">
      		<div class="col-md-12">
      			<div class="car-details">
      				<div class="img rounded" style="background-image: url(images/bg_1.jpg);"></div>
      				<div class="text text-center">
      					<span class="subheading">Cheverolet</span>
      					<h2>Mercedes Grand Sedan</h2>
      				</div>
      			</div>
      		</div>
      	</div>
      	<div class="row">
      		<div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="media-body py-md-4">
              	<div class="d-flex mb-3 align-items-center">
	              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-dashboard"></span></div>
	              	<div class="text">
		                <h3 class="heading mb-0 pl-3">
		                	Mileage
		                	<span>40,000</span>
		                </h3>
	                </div>
                </div>
              </div>
            </div>      
          </div>
          <div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="media-body py-md-4">
              	<div class="d-flex mb-3 align-items-center">
	              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-pistons"></span></div>
	              	<div class="text">
		                <h3 class="heading mb-0 pl-3">
		                	Transmission
		                	<span>Manual</span>
		                </h3>
	                </div>
                </div>
              </div>
            </div>      
          </div>
          <div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="media-body py-md-4">
              	<div class="d-flex mb-3 align-items-center">
	              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-car-seat"></span></div>
	              	<div class="text">
		                <h3 class="heading mb-0 pl-3">
		                	Seats
		                	<span>5 Adults</span>
		                </h3>
	                </div>
                </div>
              </div>
            </div>      
          </div>
          <div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="media-body py-md-4">
              	<div class="d-flex mb-3 align-items-center">
	              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-backpack"></span></div>
	              	<div class="text">
		                <h3 class="heading mb-0 pl-3">
		                	Luggage
		                	<span>4 Bags</span>
		                </h3>
	                </div>
                </div>
              </div>
            </div>      
          </div>
          <div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="media-body py-md-4">
              	<div class="d-flex mb-3 align-items-center">
	              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-diesel"></span></div>
	              	<div class="text">
		                <h3 class="heading mb-0 pl-3">
		                	Fuel
		                	<span>Petrol</span>
		                </h3>
	                </div>
                </div>
              </div>
            </div>      
          </div>
      	</div>
      	<div class="row">
      		<div class="col-md-12 pills">
						<div class="bd-example bd-example-tabs">
							<div class="d-flex justify-content-center">
							  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

							    <li class="nav-item">
							      <a class="nav-link active" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true">Features</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" id="pills-manufacturer-tab" data-toggle="pill" href="#pills-manufacturer" role="tab" aria-controls="pills-manufacturer" aria-expanded="true">Description</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" id="pills-review-tab" data-toggle="pill" href="#pills-review" role="tab" aria-controls="pills-review" aria-expanded="true">Review</a>
							    </li>
							  </ul>
							</div>
							
						  <!-- 옵션정보 -->
						  <div class="tab-content" id="pills-tabContent">
						    <div class="tab-pane fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
						    	<div class="row">
								<c:set var = "num" value="1"/>
								<c:set var = "name" value = ""/>
									<c:forEach var="option" items="${cDTO.car_op.split(',') }">
										<div class="col-md-4">
											<ul class="features">
												<c:if test="${not empty option }">
													<li class="check"><span class="ion-ios-checkmark"></span>${option }</li>
													<c:set var = "num" value = "${num+1 }"/>
												</c:if>
												<c:if test="${empty option }">
													<c:set var="name" value="${num }op"/>
													<li class="remove">
													<span class="ion-ios-close"></span>
														<c:if test="${name eq '1op' }">
															에어백
														</c:if>
														<c:if test="${name eq '2op' }">
															GPS
														</c:if>
														<c:if test="${name eq '3op' }">
															블랙박스
														</c:if>
														<c:if test="${name eq '4op' }">
															전동시트
														</c:if>
														<c:if test="${name eq '5op' }">
															블루투스
														</c:if>
														<c:if test="${name eq '6op' }">
															네비게이션
														</c:if>
														<c:if test="${name eq '7op' }">
															등받이
														</c:if>
														<c:if test="${name eq '8op' }">
															엉따
														</c:if>
														<c:if test="${name eq '9op' }">
															엉차
														</c:if>
													</li>
													<c:set var = "num" value = "${num+1 }"/>
												</c:if>
											</ul>
										</div>
									</c:forEach>
						    	</div>
						    </div>
							<!-- 옵션정보 -->
							
							<!-- 쓸데없는 글 -->
						    <div class="tab-pane fade" id="pills-manufacturer" role="tabpanel" aria-labelledby="pills-manufacturer-tab">
						      <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
									<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
						    </div>
							<!-- 쓸데없는 글 -->
							
							<!-- 리뷰 -->
						    <div class="tab-pane fade" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab">
						      <div class="row">
							   		<div class="col-md-7">
							   			<c:set var = "dto" value="${reviewList }"/>
							   			<h3 class="head">${requestScope.cnt}개의 리뷰</h3>
										<c:forEach var="dto" items="${reviewList }">
											<c:choose>
												<c:when test="${dto.rev_lev == 2 }">
													<div class="review d-flex">
														<div class="user-img"></div>
														<div class="user-img"></div>
														<div class="user-img"></div>
														<div class="desc">
															<h4>
																<span class="text-left">${dto.mem_nickName }</span>
																<span class="text-right">${dto.rev_date }</span>
															</h4>
															<span> </span>
															<span class="text-right"> </span>
															<p>${dto.rev_content}</p>
														</div>
													</div>
												</c:when>
												<c:when test="${dto.rev_lev == 1 }">
													<div class="review d-flex">
														<div class="user-img"></div>
														<div class="user-img"></div>
														<div class="desc">
															<h4>
																<span class="text-left">${dto.mem_nickName }</span>
																<span class="text-right">${dto.rev_date }</span>
															</h4>
															<span> </span>
															<span class="text-right"> </span>
															<p>${dto.rev_content}</p>
														</div>
													</div>
												</c:when>
												<c:when test="${dto.rev_lev == 0 }">
													<div class="review d-flex">
														<div class="user-img" style="background-image: url(./upload/${dto.rev_image.split(',')[0] })" OnClick="javascript:viewPic('./upload/${dto.rev_image.split(',')[0] }')"></div>
														<div class="desc">
															<h4>
																<span class="text-left">
																<h5>${dto.mem_nickName }</h5> <br>
																${dto.rev_subject }
																</span>
																<span class="text-right">${dto.rev_date }</span>
															</h4>
															<p class="star">
																<span> 
																	<c:forEach begin="1" end="${dto.rev_star }" step="1">
																		<i class="ion-ios-star"></i>
																	</c:forEach>
																</span>
																<span class="text-right">
																	<a href="javascript:commentOpen(${dto.rev_num });" class="reply">
																	<i class="icon-reply"></i>
																	</a>
																</span>
															</p>
															<p>${dto.rev_content }</p>
														</div>
													</div>
												</c:when>
											</c:choose>
										</c:forEach>
							   		</div>
							   		
							   		
							   		<!-- 별점 -->
							   		<div class="col-md-5">
							   			<div class="rating-wrap">
								   			<div class="wrap">
												<p class="star">
													<c:set var = "star1" value = "0" />
													<c:set var = "star2" value = "0" />
													<c:set var = "star3" value = "0" />
													<c:set var = "star4" value = "0" />
													<c:set var = "star5" value = "0" />
													
													<c:forEach var="dto" items="${reviewList }">
														<c:if test="${dto.rev_star == 1 }">
															<c:set var= "star1" value="${star1 + 1}"/>
														</c:if>
													</c:forEach>
													<c:forEach var="dto" items="${reviewList }">
														<c:if test="${dto.rev_star == 2 }">
															<c:set var= "star2" value="${star2 + 1}"/>
														</c:if>
													</c:forEach>
													<c:forEach var="dto" items="${reviewList }">
														<c:if test="${dto.rev_star == 3 }">
															<c:set var= "star3" value="${star3 + 1}"/>
														</c:if>
													</c:forEach>
													<c:forEach var="dto" items="${reviewList }">
														<c:if test="${dto.rev_star == 4 }">
															<c:set var= "star4" value="${star4 + 1}"/>
														</c:if>
													</c:forEach>
													<c:forEach var="dto" items="${reviewList }">
														<c:if test="${dto.rev_star == 5 }">
															<c:set var= "star5" value="${star5 + 1}"/>
														</c:if>
													</c:forEach>
													<span>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													</span>
													<span>${star5} 개의 리뷰</span>
												</p>
												<p class="star">
													<span>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													</span>
													<span>${star4 } 개의 리뷰</span>
												</p>
												<p class="star">
													<span>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													</span>
													<span>${star3 } 개의 리뷰</span>
												</p>
												<p class="star">
													<span> 
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													</span>
													<span>${star2 } 개의 리뷰</span>
												</p>
												<p class="star">
													<span>
													<i class="ion-ios-star"></i>
													</span>
													<span>${star1 } 개의 리뷰</span>
												</p>
									   		</div>
								   		</div>
							   		</div>
							   		<!-- 별점 -->
							   		
							   	</div>
						    </div>
						    <!-- 리뷰끝 -->
						  </div>
						  <!-- 옵션정보끝 -->
						</div>
		      </div>
				</div>
      </div>
    </section>

    <section class="ftco-section ftco-no-pt">
    	<div class="container">
    		<div class="row justify-content-center">
          <div class="col-md-12 heading-section text-center ftco-animate mb-5">
          	<span class="subheading">Choose Car</span>
            <h2 class="mb-2">Related Cars</h2>
          </div>
        </div>
        <div class="row">
        	<div class="col-md-4">
    				<div class="car-wrap rounded ftco-animate">
    					<div class="img rounded d-flex align-items-end" style="background-image: url(images/car-1.jpg);">
    					</div>
    					<div class="text">
    						<h2 class="mb-0"><a href="car-single.html">Mercedes Grand Sedan</a></h2>
    						<div class="d-flex mb-3">
	    						<span class="cat">Cheverolet</span>
	    						<p class="price ml-auto">$500 <span>/day</span></p>
    						</div>
    						<p class="d-flex mb-0 d-block"><a href="#" class="btn btn-primary py-2 mr-1">Book now</a> <a href="car-single.html" class="btn btn-secondary py-2 ml-1">Details</a></p>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-4">
    				<div class="car-wrap rounded ftco-animate">
    					<div class="img rounded d-flex align-items-end" style="background-image: url(images/car-2.jpg);">
    					</div>
    					<div class="text">
    						<h2 class="mb-0"><a href="car-single.html">Range Rover</a></h2>
    						<div class="d-flex mb-3">
	    						<span class="cat">Subaru</span>
	    						<p class="price ml-auto">$500 <span>/day</span></p>
    						</div>
    						<p class="d-flex mb-0 d-block"><a href="#" class="btn btn-primary py-2 mr-1">Book now</a> <a href="car-single.html" class="btn btn-secondary py-2 ml-1">Details</a></p>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-4">
    				<div class="car-wrap rounded ftco-animate">
    					<div class="img rounded d-flex align-items-end" style="background-image: url(images/car-3.jpg);">
    					</div>
    					<div class="text">
    						<h2 class="mb-0"><a href="car-single.html">Mercedes Grand Sedan</a></h2>
    						<div class="d-flex mb-3">
	    						<span class="cat">Cheverolet</span>
	    						<p class="price ml-auto">$500 <span>/day</span></p>
    						</div>
    						<p class="d-flex mb-0 d-block"><a href="#" class="btn btn-primary py-2 mr-1">Book now</a> <a href="car-single.html" class="btn btn-secondary py-2 ml-1">Details</a></p>
    					</div>
    				</div>
    			</div>
        </div>
    	</div>
    </section>
    

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2"><a href="#" class="logo">Car<span>book</span></a></h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Services</a></li>
                <li><a href="#" class="py-2 d-block">Term and Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
                <li><a href="#" class="py-2 d-block">Privacy &amp; Cookies Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Customer Support</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">FAQ</a></li>
                <li><a href="#" class="py-2 d-block">Payment Option</a></li>
                <li><a href="#" class="py-2 d-block">Booking Tips</a></li>
                <li><a href="#" class="py-2 d-block">How it works</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>