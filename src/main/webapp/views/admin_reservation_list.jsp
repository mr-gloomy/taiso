<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<%-- 				<td>${rezDTO.rez_rentalDate }</td> --%>
<%-- 				<td>${rezDTO.rez_returnDate }</td> --%>
				<td>${rezDTO.rez_totalDate }</td>
				<td>
				 <a href="./AdminReservationDetailListAction.rez?rez_uqNum=${rezDTO.rez_uqNum }">예약정보상세조회</a>
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
			<a href="./AdminReservationListAction.rez?pageNum=${startPage - pageBlock  }">[이전]</a>
		</c:if>	
			
		<!-- 페이지 번호(1,2,3) -->
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<a href="./AdminReservationListAction.rez?pageNum=${i }">${i }</a>
		</c:forEach>	
			
		<!-- 다음 -->
		<c:if test="${endPage < pageCount }">
			<a href="./AdminReservationListAction.rez?pageNum=${startPage+pageBlock }">[다음]</a>
		</c:if>
	</c:if>

<div class="clear"></div>
<div id="page_control">
</div>
</article>
</body>
</html>