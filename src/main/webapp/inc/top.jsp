<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<nav
	class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
	id="ftco-navbar">
	<div class="container">
		<!-- 	      <a class="navbar-brand" href="index.html">Car<span>Book</span></a> -->
		<a href="./ReservationMain.rez"> <img src="./images/logo.png" width="100" height="50">
		</a>
		<button 
			class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>
		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<div class="btn-group">
					<div class="collapse navbar-collapse" id="ftco-nav">
						<div class="dropdown">
							<button type="button" class="btn dropdown-toggle"
								data-toggle="dropdown" style="color:white;">사이트소개</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="./SiteInfo.rez">지점안내</a> 
								<a class="dropdown-item" href="./UseInfo.rez">이용안내</a>
								<a class="dropdown-item" href="./InsuranceInfo.rez">보험안내</a>
							</div>
						</div>
						<div class="dropdown">
							<button type="button" class="btn dropdown-toggle"
								data-toggle="dropdown" style="color:white;">렌트하기</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="./ReservationMain.rez">단기렌트</a>
								<a class="dropdown-item" href="./LongTerm.rez">장기렌트</a>
								<a class="dropdown-item" href="./CarListAll.ca">차량목록</a>
							</div>
						</div>
						<div class="dropdown">
							<button type="button" class="btn dropdown-toggle"
								data-toggle="dropdown" onclick="location.href='./NoticeList.nb'" style="color:white;">고객센터</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="./NoticeList.nb">공지사항</a>
								<a class="dropdown-item" href="./FaqList.bo">FAQ</a>
								<a class="dropdown-item" href="./QuestionList.bo">1:1 문의</a>
							</div>
						</div>
						<div class="dropdown">
						<c:choose>
							
							<c:when test="${mem_id==null || mem_id!='admin' }">
								<button type="button" class="btn dropdown-toggle" data-toggle="dropdown" onclick="location.href='./Mypage.bo'" style="color:white;">
										<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
			  							<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
			  					</button>
		  					</c:when>
		  					<c:when test="${mem_id!=null || mem_id=='admin' }">
								<button type="button" class="btn dropdown-toggle" data-toggle="dropdown" onclick="location.href='./AdminMain.mb'" style="color:white;">
										<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
			  							<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
			  					</button>
		  					</c:when>
	  					</c:choose>

						<div class="dropdown-menu">
						    <c:if test="${mem_id==null}">
								<a class="dropdown-item" href="./MemberLogin.me">로그인</a>
						        <a class="dropdown-item" href="./MemberJoin.me">회원가입</a>
						    </c:if>
						    <c:choose>
						    	<c:when test="${mem_id=='admin'}">
							        <a class="dropdown-item" href="./AdminMain.mb">${mem_id }님의 info</a>
						    	</c:when>
						    	<c:when test="${mem_id!=null}">
							        <a class="dropdown-item" href="./Mypage.bo">${mem_id }님의 info</a>
						    	</c:when>
						    </c:choose>
						    <c:choose>
						    	<c:when test="${mem_id=='admin'}">
							       <a class="dropdown-item" href="./AdminMemberLogout.mb">logout</a>
						    	</c:when>
						    	<c:when test="${mem_id!=null}">
							        <a class="dropdown-item" href="./MemberLogout.me">logout</a>
							    </c:when>
						    </c:choose>
<%-- 					    	<c:if test="${mem_id!=null | mem_id=='admin' }"> --%>
<!-- 						        <a class="dropdown-item" href="./MemberLogout.me">logout</a> -->
<%-- 					    	</c:if> --%>
						</div>
					</div>
					</div>
				</div>
			</ul>
		</div>
	</div>
</nav>
<!-- END nav -->