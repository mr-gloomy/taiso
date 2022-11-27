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
	
<div class="formbold-main-wrapper">
  <!-- Author: FormBold Team -->
  <!-- Learn More: https://formbold.com -->
  <div class="formbold-form-wrapper">
    <div class="formbold-form-title">
        <h3>비밀번호를 재입력해주세요</h3>
        <p>비밀번호를 재입력하시면 회원정보 수정페이지로 이동합니다.</p>
    </div>
    <form action="./MemberUpdatePwAction.me" method="POST">
        <input type="password" name="mem_repw" id="mem_repw" placeholder="비밀번호" class="formbold-form-input"/>

        <button class="formbold-btn">수정하기</button>
 	   <input type="hidden" name="mem_id" id="mem_id" value="${sessionScope.mem_id}" />
    </form>
  </div>
</div>


<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
body {
  font-family: "Inter", sans-serif;
}
.formbold-main-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 150px;
}

.formbold-form-wrapper {
  margin: 0 auto;
  max-width: 550px;
  width: 100%;
  background: white;
}

.formbold-form-title {
  margin-bottom: 40px;
}
.formbold-form-title h3 {
    color: #07074D;
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

</style>

</body>
</html>