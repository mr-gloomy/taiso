<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<title>타이소</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="./reservationDate.jsp" rel="stylesheet">

<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">


<!-- 블로그 로딩 코드 start -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
#waiting {
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    position: fixed;
    display: flex;
    background: white;
    z-index: 999;
    opacity: 0.9;
}
#waiting > img {
    display: flex;
    width: fit-content;
    height: fit-content;
    margin: auto;
}
</style>
<div id="waiting">
   <img src="./img/loading.gif">
</div>

<script type="text/javascript">
    $(window).on('load', function() {
        setTimeout(function(){
            $("#waiting").fadeOut();
        }, 300);
    });
</script>
<!-- 블로그 로딩 코드 end -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>


<!-- 블로그 로딩 코드 start -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
#waiting {
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    position: fixed;
    display: flex;
    background: white;
    z-index: 999;
    opacity: 0.9;
}
#waiting > img {
    display: flex;
    width: fit-content;
    height: fit-content;
    margin: auto;
}
</style>
<div id="waiting">
   <img src="./img/loading.gif">
</div>

<script type="text/javascript">
    $(window).on('load', function() {
        setTimeout(function(){
            $("#waiting").fadeOut();
        }, 300);
    });
</script>
<!-- 블로그 로딩 코드 end -->


</head>


	<!-- 본문 시작 -->
	<section class="ftco-section contact-section">
		<div class="container">
	
	<div id="naver_id_login"></div>
			
<script type="text/javascript">
var naver_id_login = new naver_id_login("wmfagQjB6wykoV0oZUGH","http://localhost:8088/project_taiso/MemberNaverLoginAction.me");
//접근 토큰 값 출력
// alert(naver_id_login.oauthParams.access_token);
//네이버 사용자 프로필 조회
naver_id_login.get_naver_userprofile("naverSignInCallback()");
//네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function

function naverSignInCallback() {
	
	var id = naver_id_login.getProfileData('id');
	var name = naver_id_login.getProfileData('name');
	var nickname = naver_id_login.getProfileData('nickname');
	var email = naver_id_login.getProfileData('email');
	var birthday = naver_id_login.getProfileData('birthday');
// 	var birthyear = naver_id_login.getProfileData('birthyear');
// 	var mobile = naver_id_login.getProfileData('mobile');
	
// 	alert(id);
// 	alert(name);
// 	alert(nickname);
// 	alert(email);
// 	alert(birthday);
// 	alert(birthyear);
// 	alert(mobile);

 	$.ajax({
		url: "./MemberNaverLoginAction.me",
		type: 'post',
// 		dataType: 'json',
// 		contentType : 'json',           
		data : {
			id:naver_id_login.getProfileData('id'),
			name:naver_id_login.getProfileData('name'),
			nickname:naver_id_login.getProfileData('nickname'),
			email:naver_id_login.getProfileData('email'),
			birthday:naver_id_login.getProfileData('birthday')
// 			birthyear:naver_id_login.getProfileData('birthyear'),
// 			mobile:naver_id_login.getProfileData('mobile')
		},
//  		success:function(data){
// //  		alert('성공');
//  		},
		error:function(){
// 			alert('이동');
		location.href='./ReservationMain.rez';
 		}
	})
 	
};


		
// 		data:{

// 			id:naver_id_login.getProfileData('id'),
// 			name:naver_id_login.getProfileData('name')
// 			nickname:naver_id_login.getProfileData('nickname'),
// 			email:naver_id_login.getProfileData('email'),
// 			birthyear:naver_id_login.getProfileData('birthyear'),
// 			birthday:naver_id_login.getProfileData('birthday'),
// 			mobile:naver_id_login.getProfileData('mobile')
// 	  }
//  	});
// }

</script>
<!-- 네이버 로그인 관련 -->		
	
	 
		</div>
	</section>
		<!-- 본문 끝 -->

<!-- 본문 css -->
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

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


.panel-heading {
	text-align: center;
	margin-bottom: 10px
}

#forgot {
	margin-left: 10px;
	text-decoration: none;
	font-size: 12px;
}

a:hover {
	text-decoration: none
}

.form-inline label {
	padding-left: 10px;
	margin: 0;
	cursor: pointer;
	font-size: 12px;
}

.btn.btn-primary {
	margin-top: 20px;
	border-radius: 5px
}

.panel {
	min-height: 380px;
	box-shadow: 20px 20px 80px rgb(218, 218, 218);
	border-radius: 8px;
    margin-bottom:  6em;
}

.input-field {
	border-radius: 5px;
	padding: 5px;
	display: flex;
	align-items: center;
	cursor: pointer;
	border: 1px solid #ddd;
	color: #1089FF;
}

input[type='text'], input[type='password'] {
	width: 100%;
    border-radius: 5px;
    border: 0px solid #dde3ec;
    background: #ffffff;
    font-weight: 500;
    font-size: 12px;
    color: #536387;
    outline: none;
    resize: none;
    margin-left: 8px;
}

.fa-eye-slash.btn {
	border: none;
	outline: none;
	box-shadow: none
}

img {
	width: 40px;
	height: 40px;
	object-fit: cover;
	border-radius: 50%;
	position: relative
}

a[target='_blank'] {
	position: relative;
	transition: all 0.1s ease-in-out
}

.bordert {
	border-top: 1px solid #aaa;
	position: relative
}

.bordert:after {
	content: "SNS 로그인";
	font-size: 14px;
	position: absolute;
	top: -13px;
	left: 37%;
	background-color: #fff;
	padding: 0px 8px
}

@media ( max-width : 360px) {
	#forgot {
		margin-left: 0;
		padding-top: 10px
	}
	body {
		height: 100%
	}
	.container {
		margin: 30px 0
	}
	.bordert:after {
		left: 25%
	}
}

.textstyle {
    color: #b1b3b6;
    font-size: 14px;
    line-height: 2px;
    display: block;
    text-align: center;
    padding: 15px;
}

.aforgot{
	text-align: center;
}

</style>
<!-- 본문 css -->

<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 끝 -->

	<!-- loader -->
	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px"> 
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
		</svg>
	</div>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>