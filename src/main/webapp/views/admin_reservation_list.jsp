<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TAISO</title>
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
    <link rel="stylesheet" href="./css/adminReservation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
  
</head>

<article>
<h1> 관리자 예약 조회 리스트 </h1>
<h1> admin_reservation_list.jsp </h1>

<table border="1" >
      <tr>
         <th>고객아이디</th>
         <th>예약번호</th>
         <th>예약상태</th>
         <th>대여일시</th>
         <th>반납일시</th>
         <th>총예약일시</th>
         <th>관리</th>
      </tr>

      <c:forEach var="rezDTO" items="${adminRezList }">
         <tr>
            <td>${rezDTO.mem_id }</td>
            <td>${rezDTO.rez_uqNum }</td>
            <td>${rezDTO.rez_status }</td>
            <td>${rezDTO.rez_rentalDate }</td>
            <td>${rezDTO.rez_returnDate }</td>
<%--             <td>${rezDTO.rez_rentalDate }</td> --%>
<%--             <td>${rezDTO.rez_returnDate }</td> --%>
            <td>${rezDTO.rez_totalDate }</td>
            <td>
             <a href="./AdminReservationDetailList.rez?rez_uqNum=${rezDTO.rez_uqNum }">예약정보상세조회</a>
            </td>
         </tr>
      </c:forEach>
   </table>
   
<div id="table_search">
   <input type="button" value="관리자메인페이지로이동" class="btn"
      onclick=" location.href='./여기에가상주소입력';"
   >
</div>


   <c:if test="${totalCnt != 0 }">
      <!-- 이전 -->
      <c:if test="${startPage > pageBlock }">
         <a href="./AdminReservationList.rez?pageNum=${startPage - pageBlock  }">[이전]</a>
      </c:if>   
         
      <!-- 페이지 번호(1,2,3) -->
      <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
         <a href="./AdminReservationList.rez?pageNum=${i }">${i }</a>
      </c:forEach>   
         
      <!-- 다음 -->
      <c:if test="${endPage < pageCount }">
         <a href="./AdminReservationList.rez?pageNum=${startPage+pageBlock }">[다음]</a>
      </c:if>
   </c:if>

<div class="clear"></div>
<div id="page_control">
</div>
</body>
</html>