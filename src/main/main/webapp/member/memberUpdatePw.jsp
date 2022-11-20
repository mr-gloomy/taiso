<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div class="formbold-main-wrapper">
  	<!-- Author: FormBold Team -->
  	<!-- Learn More: https://formbold.com -->
  		<div class="formbold-form-wrapper">
  		
    		<form action="./MemberUpdatePwAction.me" method="POST" >
      			<div class="formbold-email-subscription-form">
        			<input type="password" name="mem_pw" id="mem_pw" placeholder="비밀번호를 재입력해주세요." class="formbold-form-input"/>
       				<button class="submit"> 수정하기 </button>
       			</div>
    		</form>
    		
    			<input type="hidden" name="mem_id" id="mem_id" value="${sessionScope.mem_id}" />
    		
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
	padding: 48px;
}

.formbold-form-wrapper {
	margin: 0 auto;
	max-width: 550px;
	width: 100%;
	background: white;
}

.formbold-form-input {
	width: 80%;
	padding: 13px 22px;
	border-radius: 5px;
	border: 1px solid #dde3ec;
	background: #ffffff;
	font-weight: 500;
	font-size: 12px;
	color: #536387;
	outline: none;
	resize: none;
}

.formbold-form-input:focus {
	border-color: #6a64f1;
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.submit {
	display: inline-flex;
	align-items: center;
	gap: 8px;
	font-size: 14px;
	border-radius: 5px;
	padding: 5px 5px;
	border: none;
	font-weight: 500;
	background-color: #1089FF;
	color: white;
	cursor: pointer;
}

.submit:hover {
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-email-subscription-form {
	display: flex;
	gap: 15px;
}

.textstyle {
	color: #b1b3b6;
	font-size: 14px;
	line-height: 2px;
	display: block;
	text-align: center;
}
</style>

</body>
</html>