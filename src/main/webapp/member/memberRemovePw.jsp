<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<!-- 로그인제어 -->
<%
	String mem_id = (String) session.getAttribute("mem_id");
	if(mem_id == null){
		response.sendRedirect("./MemberLogin.me");
		System.out.println(" 비정상적 접근 발생! IP : "+request.getRemoteAddr());
	}
%>
	<!-- 로그인제어 -->
	
<section class="bg-light">
<div class="formbold-main-wrapper">
  <!-- Author: FormBold Team -->
  <!-- Learn More: https://formbold.com -->
  <div class="formbold-form-wrapper">
    <div class="formbold-form-title">
        <h3>비밀번호를 재입력해주세요</h3>
        <p>비밀번호를 재입력하시면 회원탈퇴가 완료됩니다.</p>
    </div>
    <form action="./MemberRemoveAction.me" method="POST">
        <input type="password" name="mem_repw" id="mem_repw" placeholder="비밀번호" class="formbold-form-input"/>
        <button class="formbold-btn" onclick="remove()"> 탈퇴하기 </button>
	<div></div>
 	    <input type="hidden" name="mem_id" id="mem_id" value="${sessionScope.mem_id}" />
    </form>
  </div>
</div>
</section>


<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
body {
	font-family: 'InfinitySans-RegularA1';
	font-weight: normal;
    font-style: normal;
}
.formbold-main-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 150px;
}

.formbold-form-wrapper {
	margin: 0 auto;
    max-width: 570px;
    width: 100%;
    background: white;
    padding: 40px;
    border-radius: 14px;
    box-shadow: 20px 20px 80px rgb(218 218 218 / 47%)
}

.formbold-form-title {
  margin-bottom: 40px;
}
.formbold-form-title h3 {
    color: #000000;
    font-weight: 700;
    font-size: 28px;
    line-height: 35px;
    margin-bottom: 20px;
    text-align: center;
}
.formbold-form-title p {
    font-size: 16px;
    line-height: 24px;
    color: #536387;
    text-align: center;
}
.formbold-form-input {
  text-align: center;
  width: 100%;
  padding: 14px 22px;
  border-radius: 6px;
  border: 1px solid #DDE3EC;
  background: #FAFAFA;
  font-weight: 500;
  font-size: 16px;
  color: #536387;
  outline: none;
  resize: none;
}
.formbold-form-input:focus {
  border-color: #1089FF;
  box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-btn {
  text-align: center;
  width: 100%;
  font-size: 16px;
  border-radius: 5px;
  padding: 14px 25px;
  border: none;
  font-weight: 500;
  background-color: #1089FF;
  color: white;
  cursor: pointer;
  margin-top: 15px;
}
.formbold-btn:hover {
  box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.bg-light {
    background: #f8f9fa !important;
}
</style>

</body>
</html>