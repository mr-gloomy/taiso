<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<article>
<h1> 관리자 예약 조회 및 취소 상세 리스트 </h1>
<h1></h1>
<%-- ${adminGoodsList } --%>
<table id="notice">
		<tr>
			<th>고객아이디</th>
			<th>예약번호</th>
			<th>예약상태</th>
			<th>차종</th>
			<th>대여일시</th>
			<th>반납일시</th>
			<th>관리</th>
		</tr>

		<c:forEach var="dto" items="${totalList }">
			<tr>
				<td>${dto.gno }</td>
				<td class="left">${dto.category }</td>
				<td>
					<img src="./upload/${dto.image.split(',')[0] }" width="50" height="50"> 
					<!-- 서버실제경로입력하면안됨(보안위험) 대신에 가상의 주소를 사용할 것이다. 
						 "./가상주소"이면 ./ 은 webapp폴더이다.-->
				</td>
				<td>${dto.price }</td>
				<td>${dto.amount }</td>
				<td>
					<fmt:formatDate value="${dto.date }" />
				</td>
				<td>
				 <a href="./AdminGoodsModify.ag?rez_Num=${rezDTO.rez_uqNum }">예약정보상세조회</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
<div id="table_search">
	<input type="button" value="관리자메인페이지로이동" class="btn"
		onclick=" location.href='./여기에가상주소입력';"
	>
</div>


<div class="clear"></div>
<div id="page_control">
</div>
</article>
</body>
</html>