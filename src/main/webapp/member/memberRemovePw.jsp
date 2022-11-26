<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>


<script type="text/javascript">
function remove(){
	setTimeout(
        Swal.fire({
  		  title: '정말 탈퇴하시겠습니까?',
  		  text: "탈퇴시 더이상 타이소를 이용하실 수 없습니다. .",
  		  icon: 'error',
  		  showCancelButton: true,
//   		  confirmButtonColor: '#3085d6',
//   		  cancelButtonColor: 'grey',
  		  confirmButtonText: '탈퇴하기',
  		  cancelButtonText: '취소하기'
  		}).then((result) => {
  		  if (result.value) {
  			  location.href='./MemberRemoveAction.me';
  		  }else{
  			location.href='./ReservationDate.rez.me';
  		  }
  		})
  	, 500);
 
}

</script>


</head>

<body>
	<div class="formbold-main-wrapper">
  	<!-- Author: FormBold Team -->
  	<!-- Learn More: https://formbold.com -->
  		<div class="formbold-form-wrapper">
  		
    		<form action="./MemberRemoveAction.me" method="POST" >
      			<div class="formbold-email-subscription-form">
        			<input type="password" name="mem_repw" id="mem_repw" placeholder="비밀번호를 재입력해주세요." class="formbold-form-input"/>
       				<button class="submit" onclick="remove()"> 탈퇴하기 </button>
       			</div>
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

.swal2-title {
    position: relative;
    max-width: 100%;
    margin: 0;
    padding: 0.8em 1em 0;
    color: inherit;
    font-size: 20PX;
    font-weight: 600;
    text-align: center;
    text-transform: none;
    word-wrap: break-word;
}

.swal2-styled.swal2-confirm {
    border: 0;
    border-radius: 0.25em;
    background: initial;
    background-color: #1089FF;
    color: #fff;
    font-size: 1em;
}
  
</style>

</body>
</html>