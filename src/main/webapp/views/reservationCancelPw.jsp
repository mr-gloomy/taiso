<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이소</title>
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


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


<script type="text/javascript">

function cancelRez(seq){ 
	Swal.fire({
	  title: '예약을 취소하시겠습니까?',
	  icon: 'info',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: 'grey',
	  confirmButtonText: '예약 취소',
	  cancelButtonText: '돌아가기'
	}).then((result) => {
	  if (result.value) {      
	    	   if(document.fr.cancel_reason.selectedIndex==0){
	    	      Swal.fire({         
	    	           title : '취소사유를 입력하세요!',
	    	           icon: 'warning',
	    	          confirmButtonText: '확인'
	    	       })
	    	      document.fr.cancel_reason.focus();
	    	      return;
	    	   }
	    	   
	    	   if(document.fr.mem_pw.value == ""){
	  		      Swal.fire({         
	  		            title : '비밀번호를 입력해주세요!',
	  		             icon: 'warning',
	  		            html: '예약 취소를 위해 고객님의 비밀번호가 필요합니다.',
	  		            confirmButtonText: '확인'
	  		         })          
	  		          document.fr.mem_pw.focus();
	  		     		return;
	    		}
	    	   
				var f= document.forms.fr;
				document.domain = "localhost"; 
			    opener.name = "openerNames";
			    f.target = opener.name;
			    
		        fr.submit();
		        self.close();
	       } 
	     }) 
	} 

 </script>

</head>
<body>
	<form action = "./ReservationCancel.rez" class="bg-light p-5 contact-form" method="post" id="rez"
		name="fr">
		<div class="col-md-8 block-9 mb-md-5">
				<div class="form-group">
					<h3>
						<b>예약 취소 확인</b>
					</h3>
				</div>

				<article>
					<label>취소사유　　　　 :　</label> 
					<select name="cancel_reason">
						<option value="0">취소사유를 선택하세요</option>
						<option>취소 후 재예약</option>
						<option>여행 일정 변경</option>
						<option>이중 계약</option>
						<option>가격 불만</option>
						<option>기타 사유</option>
					</select> 
					
					<br> 
					
					<label>환불금액　　　　 :　</label> 
						<input type="text" name="cancel_commission" value="${param.pay_total}" readonly="readonly"> 원
					<label>　　　　　　　　　　( 결제 금액에서 10% 차감된 금액으로 환불됩니다)　</label> 
					<br> 
					<label>아이디 　　　　　:　</label> 
						<input type="text" name="mem_id" value="${sessionScope.mem_id }" readonly="readonly"> 
					<br> 
					<label>예약번호　　　　 :　</label>
						<input type="text" name="rez_uqNum" value="${param.rez_uqNum }" readonly="readonly"> 
					<br> 
					<label>비밀번호 　　　　:　</label>
						<input type="password" name="mem_pw" value="" placeholder="비밀번호를 입력해주세요"><br>
					<br>
					<img src="./images/cancelpic.png" height="250" width="400" >
					<div class="clear">
					</div>
			</article>
<!-- 			</article> -->
　

			<br>
			<div id="buttons">
               <input type="button" value="취소하기"  class="btn btn-primary py-2 px-3" onclick="return cancelRez();">
            </div>

			<div style="display: none">
				<input type="file" id="input-file" name="rev_image" /> <br>
				<br>
			</div>
		</div>
	</form>
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
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
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
</body>
</html>