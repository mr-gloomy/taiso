<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

<script type="text/javascript">
// function check(){
	var IMP = window.IMP; // 생략가능
	IMP.init('imp06006038'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

	 IMP.certification({ // param
		merchant_uid: "00000", // 주문 번호
		
	 }, function(rsp) {
		    if ( rsp.success ) {
		    	
			   $.ajax({
						type : 'POST',
						url : "./MemberJoinPhoneAction.me",
// 						dataType: 'json',
						headers: "Content-Type": "json",
						data : {
							imp_uid : rsp.imp_uid
						},
				   		alert('인증에 성공했습니다.');
				});
		   
	   		} else {
		    	 // 인증취소 또는 인증실패
	   			 alert("인증에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
		    }
	});
// }
</script>

</head>
<body>

<!-- <button onclick="check();">본인인증</button> -->

</body>
</html>