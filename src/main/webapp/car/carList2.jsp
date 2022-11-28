<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>차량 목록</title>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
   href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
   rel="stylesheet">

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
<link rel="stylesheet" href="./css/nav.css">
</head>
<body>

   <!-- 헤더들어가는 곳 -->
   <jsp:include page="../inc/top.jsp" />
   <!-- 헤더들어가는 곳 -->

   <section class="hero-wrap hero-wrap-2 js-fullheight"
      style="background-image: url('images/bg_3.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div
            class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="index.html">Home <i
                        class="ion-ios-arrow-forward"></i></a></span> <span>Cars <i
                     class="ion-ios-arrow-forward"></i></span>
               </p>
               <h1 class="mb-3 bread">차량 목록</h1>
            </div>
         </div>
      </div>
   </section>


   <section class="ftco-section bg-light">

      <div class="container">
         <div>
            <a class="btn btn-primary" href="./CarListAll.ca">전체</a>
            <a class="btn btn-primary" href="./CarListAll.ca?item=small">소형</a>
            <a class="btn btn-primary" href="./CarListAll.ca?item=compact">준중형</a>
            <a class="btn btn-primary" href="./CarListAll.ca?item=middle">중형</a> 
            <a class="btn btn-primary" href="./CarListAll.ca?item=large">대형</a> 
            <a class="btn btn-primary" href="./CarListAll.ca?item=suv">suv</a>
            <a class="btn btn-primary" href="./CarListAll.ca?item=foreign">수입차</a>
         </div>
         <div>ㅤ</div>
         <div class="row">
            <c:forEach var="cars" items="${carsList }">
               <div class="col-md-4">
                  <div class="car-wrap rounded ftco-animate">
                     <div class="img rounded d-flex align-items-end"
                        style="background-image: url(./upload/${cars.car_file.split(',')[0] });">
                     </div>
                     <div class="text">
                        <h2 class="mb-0">
                           <a href="car-single.html">${cars.car_name }</a>
                        </h2>
                        <div class="d-flex mb-3">
                           <span class="cat">${cars.car_brand }</span>
                           <p class="price ml-auto">
                              <fmt:formatNumber value="${cars.car_price }" />
                              원
                           </p>
                        </div>
                        <p class="d-flex mb-0 d-block">
<%--                            <a href="./ReservationAction.rez?car_code=${cars.car_code }" --%>
<!--                               class="btn btn-primary py-2 mr-1">예약하기</a> -->
                               <a
                              href="./ReviewList.rev?car_code=${cars.car_code }&car_name=${cars.car_name }"
                              class="btn btn-secondary py-2 ml-1">차량상세정보 </a>
                        </p>
                     </div>
                  </div>
               </div>
            </c:forEach>
         </div>
         
         

         <!-- 페이지처리 -->

         <!--        <div class="row mt-5"> -->
         <!--           <div class="col text-center"> -->
         <!--             <div class="block-27"> -->
         <%--             <c:if test="${totalCnt != 0}"> --%>
         <!--                 페이지번호 -->
         <%--                 <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1"> --%>
         <%--                    <a href="./CarList.ca?pageNum=${i }" class="btn btn-outline-primary" >${i }</a>  --%>
         <%--              </c:forEach>   --%>
         <%--           </c:if> --%>
         <!--          </div>    -->
         <!--           </div> -->
         <!--           </div> -->
         <c:if test="${totalCnt != 0 }">

            <!-- 이전 -->
<%--             <c:if test="${startPage > pageBlock }"> --%>
<%--                <a href="./CarListAll.ca?pageNum=${startPage-pageBlock }">[이전]</a> --%>
<%--             </c:if> --%>
            <!--        <div class="row mt-5"> -->
            <div class="col text-center">
               <div class="block-27">
                  <ul>
                  <c:if test="${startPage > pageBlock }">
		               <a href="./CarListAll.ca?pageNum=${startPage-pageBlock }">[이전]</a>
		          </c:if>
                     <!-- 페이지 번호(1,2,3...) -->
                     <c:forEach var="i" begin="${startPage }" end="${endPage }"
                        step="1">
                     

                           <li <c:if test="${pageNum == i }">class="active" </c:if>
                              
                           >
                        <span>
                        <a href="./CarListAll.ca?pageNum=${i }">${i }</a>
                        </span>
                        </li>
                        

                     </c:forEach>
                     <c:if test="${endPage < pageCount }">
		               <a href="./CarListAll.ca?pageNum=${startPage+pageBlock }">[다음]</a>
		            </c:if>
                  </ul>
               </div>
            </div>

            <!-- 다음 -->
<%--             <c:if test="${endPage < pageCount }"> --%>
<%--                <a href="./CarListAll.ca?pageNum=${startPage+pageBlock }">[다음]</a> --%>
<%--             </c:if> --%>

         </c:if>


         <!--        <div class="row mt-5"> -->
         <!--           <div class="col text-center"> -->
         <!--             <div class="block-27"> -->
         <!--               <ul> -->
         <!--                 <li><a href="#">&lt;</a></li> -->
         <!--                 <li class="active"><span>1</span></li> -->
         <!--                 <li><a href="#">2</a></li> -->
         <!--                 <li><a href="#">3</a></li> -->
         <!--                 <li><a href="#">4</a></li> -->
         <!--                 <li><a href="#">5</a></li> -->
         <!--                 <li><a href="#">&gt;</a></li> -->
         <!--               </ul> -->
         <!--             </div> -->
         <!--           </div> -->
         <!--         </div> -->
      </div>
   </section>

		<!-- 하단 네비바 -->
         <!--       <div class="r-horizon">
         <div class="r-horizon-bar">
            <div class="r-horizon-button"></div>
         </div>
          <div class="r-horizon-content">
             <table class="r-table">
                <tbody>
                   <tr>
                      <th><span class="r-h-info r-h-infoA">대여지점</span></th>
                      <th><span class="r-h-info r-h-infoB">대여일시</span></th>
                      <th><span class="r-h-info r-h-infoC">픽업시간</span></th>
                   </tr>
                   <tr>
                      <td>
                         <p class="r-horizon-text" id="h-rental_branch">${rez_site }</p>
                      </td>
                      <td>
                         <p class="r-horizon-text" id="h-redDate">${rez_pick_date } ~ ${rez_off_date }</p>
                      </td>
                      <td class="ellipsis">
                         <p class="r-horizon-text ellipsis" id="h-car_name">${rez_pick_time }</p>
                      </td>
                   </tr>
                </tbody>
             </table>
          </div>
      </div> -->
	<!-- 하단 네비바 -->

   <!-- 푸터들어가는 곳 -->
   <jsp:include page="../inc/bottom.jsp" />
   <!-- 푸터들어가는 곳 -->



   <!-- loader -->
   <div id="ftco-loader" class="show fullscreen">
      <svg class="circular" width="48px" height="48px">
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
   <script src="./js/rt.js"></script>
   <script  src="./js/jquery-3.6.1.min.js"></script>
</body>
</html>
