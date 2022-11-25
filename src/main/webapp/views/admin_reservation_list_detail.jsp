<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<article>
<h1> 관리자 예약 조회 및 취소 상세 리스트 </h1>

<table border="1" >
      <tr>
         <th>고객아이디</th>
         <th>예약번호</th>
         <th>예약상태</th>
         <th>차종</th>
         <th>대여일시</th>
         <th>반납일시</th>
         <th>관리</th>
      </tr>
   
      <c:set var="dto" value="${rezDTO }" />
         <tr>
            <td>${dto.mem_id }</td>
            <td>${dto.rez_uqNum}</td>
            <td>${dto.rez_status}</td>
            <td>${dto.rez_rentalDate }</td>
            <td>${dto.rez_returnDate }</td>
            <td>
<%--                <fmt:formatDate value="${dto.date }" /> --%>
            </td>
            <td>
             <a href="./AdminGoodsModify.ag?rez_Num=${rezDTO.rez_uqNum }&pageNum=${pageNum}">예약정보상세조회</a>
            </td>
         </tr>
   </table>
   
<div id="table_search">
   <input type="button" value="관리자메인페이지로이동" class="btn"
      onclick=" location.href='./여기에가상주소입력';"
   >

</div>
</section>
	<!-- 푸터들어가는 곳 -->
	<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->



<div class="clear"></div>
<div id="page_control">
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
</body>
</html>