
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<!-- 헤더들어가는곳 -->
  <head>
  <link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
    <title>타이소</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
<!-- sweetalert -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>

   
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
    <link rel="stylesheet" href="./css/style2.css">
 

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
   
<style>
.rezform-1{
border: none;
background: transparent;
 	  color: #212121;
    font-family: 'InfinitySans-RegularA1';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff') format('woff');
}
.rezform-2{
border: none;
 	  height: 40px;
	  width: 200px;
	  background: #fff !important;
 	  color: #212121;
	  border: 1px solid #ced4da;
	  margin:10px;
	  font-size: 15px;
	  padding : 0.375rem 0.75rem;
	  border-radius: 5px;
	  -webkit-box-shadow: none !important;
	  box-shadow: none !important;
    font-family: 'InfinitySans-RegularA1';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff') format('woff');
}
.form-group,label{
margin:0;
}
.form-group2{
/* margin-bottom: 30px; */
line-height:40px;
}
    .submitbtn {
    color:#fff;
    font-weight:600; 
    background-color: #1089FF;
    text-align: center;
    border:none;
    margin:5px;
    border-radius:3px;
    font-size:18px;
    width:100px; height:40px;
    }
</style>


 <script type="text/javascript">
    
   // 하이픈입력하기
   const autoHyphen = (target) => { // 00-00-000000-00
       target.value = target.value
         .replace(/[^0-9]/g, '')
         .replace(/^(\d{2})(\d{2})(\d{6})(\d{2})$/, `$1-$2-$3-$4`);
      }

 
   // 보험 상세보기 
   function Detail1(){
      Swal.fire({
         title : '일반자차 선택 시',
          icon: 'info',
         html: '<p>타이소는 사고 발생 시 청구될 수리비를<br/>최소화하고자 자차보험 가입을 권장드리고 있습니다.</p><p><b>청구요금 :</b> 10,000 원 <br/> <b>보상한도 :</b> 200 만원 <br/> <b>자기부담금 :</b> 50 만원 <br/> <b>면허취득일 :</b> 1년 이상</p>',
         confirmButtonText: '확인'
         
      })
   }
    
    
   function Detail2(){   
      Swal.fire({         
         title : '완전자차 선택 시',
          icon: 'info',
         html: '<p>타이소는 사고 발생 시 청구될 수리비를<br/>최소화하고자 자차보험 가입을 권장드리고 있습니다.</p><p><b>청구요금 :</b> 20,000 원 <br/> <b>보상한도 :</b> 200 만원 <br/> <b>자기부담금 :</b> 0 원 <br/> <b>면허취득일 :</b> 1년 이상</p>',
         confirmButtonText: '확인'
      })
   }         
   
   // 보험 요금 계산
   function insr1(){ // 일반자차 onclick 시 
	      var insr = document.fr.insuranceCharge.value="10000";
	      var insfee = parseInt(insr);
	      var rfee = parseInt(document.fr.car_price.value);
	      document.fr.pay_total.value=insfee+rfee;
	   }
   
   function insr2(){ // 완전자차 onclick 시 
      var insr = document.fr.insuranceCharge.value="20000";
      var insfee = parseInt(insr);
      var rfee = parseInt(document.fr.car_price.value);
      document.fr.pay_total.value=insfee+rfee;
   }
   
   </script>
   
   
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>  

   <script type="text/javascript">
   function requestPay() {

       var IMP = window.IMP; // 생략 가능
       IMP.init("imp46187616");
       IMP.request_pay({ 
          pg: "html5_inicis",
          merchant_uid: "${mDTO.mem_num}"+new Date().getTime(),   // 예약번호+시간날짜정보
          name: "${mDTO.mem_num}"+"_"+"${carDTO.car_name}"+" "+"${sessionScope.rez_totalDate }"+"일",
          buyer_email: "${mDTO.mem_email }",
          buyer_name: "${mDTO.mem_name }",
          buyer_tel: "${mDTO.mem_phone }",
          amount: 100                  // 숫자타입
       }, function(rsp) {
           if (rsp.success) {
              $.ajax({
                 url: "./ReservationProAction.rez",
                 type: 'POST',
                 dataType: 'json',
                 data:{
					rez_rentalDate:document.fr.rez_rentalDate.value,
					rez_returnDate:document.fr.rez_returnDate.value,
					rez_totalDate:document.fr.rez_totalDate.value,
					rez_rentTime:document.fr.rez_pick_time.value,
					rez_site:document.fr.rez_site.value,
					car_name:document.fr.car_name.value,
					car_code:${carDTO.car_code},
					car_insurance:document.fr.car_insurance.value,
					mem_id:document.fr.mem_id.value,
					license_num:document.fr.license_num.value,
					license_issueDate:document.fr.license_issueDate.value,
					license_type:document.fr.license_type.value,
					merchant_uid : rsp.merchant_uid,   // 회원번호+시간날짜정보
					pay_uqNum : rsp.imp_uid,         // 거래고유번호(주문번호)
					pay_total : rsp.paid_amount,      // 총 결제금액
					pay_method : rsp.pay_method,      // 결제방식
					pay_status : rsp.status         // 결제상황
                 }
              });
                   location.href="./ReservationChk.rez?pay_uqNum="+rsp.imp_uid;

           } else {
               var msg = '결제에 실패하였습니다.';
               msg += '\nerror : ' + rsp.error_msg;
               alert(msg);
               location.href="./ReservationMain.rez";   // 세션초기화도 하고싶엉
          }
       });
    }
    </script>   
    

<!-- 예약결제확인하기 -->
    <script type="text/javascript">
    
       function checkRez(){ 
       
          
       if(document.fr.license_issueDate.value == ""){
          
          Swal.fire({         
                title : '면허증 발급일자를 입력하세요!',
                 icon: 'warning',
                confirmButtonText: '확인'
             })
          document.fr.license_issueDate.focus();          
          return;
          
       }   
          
       if(document.fr.license_type.value == ""){
          
          Swal.fire({   
              title : '면허 종류를 입력하세요!',
               icon: 'warning',
              confirmButtonText: '확인'
           })
         document.fr.license_type.focus();
         return;
         
       }
       
       if(document.fr.license_num.value == ""){         
          
          Swal.fire({   
                title : '면허증 번호를 입력하세요!',
                 icon: 'warning',
                confirmButtonText: '확인'
             })
          document.fr.license_num.focus();
          return;
          
       }   
       
       
      // 면허증 번호 12자리 확인
      if(document.fr.license_num.value.length != 15){
         Swal.fire({   
               title : '면허증 번호는 12자리 입니다!',
               icon: 'warning',
               html : '<h4>12자리를 정확하게 입력해주세요!</h4>',
              confirmButtonText: '확인'
           })
         return;
      }       
       
      
       if(document.fr.car_insurance[0].checked==false && document.fr.car_insurance[1].checked==false){
          
          Swal.fire({   
              title : '자동차 보험을 선택해주세요!',
               icon: 'warning',
              confirmButtonText: '확인'
           })
         return;
          
      }
       
       if(document.fr.agreement.checked==false){
          
          Swal.fire({   
                title : '약관에 동의해주세요!',
                 icon: 'warning',
                confirmButtonText: '확인'
             })
         return;
          
      }
       
        var totalCharge = parseInt(document.fr.pay_total.value); // 최종결제금액 
        var cName = document.fr.car_name.value; // 차량이름 
        var rezDate = document.fr.rez_totalDate.value; // 총예약일시 
        var mName = document.fr.mem_name.value; // 회원이름 
        var rezSite = document.fr.rez_site.value; // 이용지점
       
       Swal.fire({ 
         title: '결제 확인 창', 
         icon: 'success', 
         html: "<h4><b>"+mName+"</b>님의 렌트 기간은 <b>"+rezDate+"</b>일입니다. </h4></br>"+'<p><b>차량이름 : </b>'+cName+'</p><p><b>이용지점 : </b>'+rezSite+'</p><p><b>최종결제금액 : </b>'+totalCharge+'<b> 원</b></p>',
         showCancelButton: true,         
         confirmButtonColor: '#3085d6', 
         cancelButtonColor: 'grey', 
         confirmButtonText: '예약하기', 
         cancelButtonText: '취소하기' 
       }).then((result) => { 
         if (result.isConfirmed) {           
              //"예약" 버튼을 눌렀을 때 호출할 함수
            bfd();
         } 
       }) 
    } 
     
       
    function bfd(){
    	Swal.fire({   		 
    		  imageUrl: './images/BFD.png',
    		  imageWidth: 700,
    		  imageHeight: 700,
    		  imageAlt: 'Custom image',
    		  confirmButtonText: '결제하기'
    		}).then((result) => { 
    	         if (result.isConfirmed) {           
    	              //"결제하기" 버튼을 눌렀을 때 호출할 함수
    	        	 requestPay();
    	         }
    		}) 
    }   
    
   </script>

<!-- 예약취소하기 -->
 <script type="text/javascript">
 function cancleRez(){
	 Swal.fire({ 
         title: '예약을 취소하시겠습니까?', 
         icon: 'warning', 
         html: "<h6>예약취소 시 해당 정보가 저장되지 않을 수 있습니다.</h6><h5>메인페이지로 이동합니다.</h5>",
         showCancelButton: true,         
         confirmButtonColor: '#3085d6', 
         cancelButtonColor: 'grey', 
         confirmButtonText: '취소하기', 
         cancelButtonText: '머무르기' 
       }).then((result) => { 
         if (result.isConfirmed) {           
              //"취소하기" 버튼을 눌렀을 때 호출할 함수
        	 location.href="./ReservationMain.rez";
         } 
       }) 
    } 	
 </script>

<style type="text/css">
.adminReservation_wrap2 {
	align-content: center;
}
.adminReservation_title {
	align-content: center;
	margin-bottom: 20px;
}
</style>


  </head>

<!-- ------------------------------------------------------------------------------------------------------- -->

  <body>
  
 <!-- jsp:include -->
 <jsp:include page="../inc/top.jsp"/>
 <!-- jsp:include -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_6.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
<!--         <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start"> -->
<!--           <div class="col-md-9 ftco-animate pb-5"> -->
<!--              <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>RESERVATION <i class="ion-ios-arrow-forward"></i></span></p> -->
<!--             <h1 class="mb-3 bread">예약하기</h1> -->
<!--           </div> -->
<!--         </div> -->
      </div>
    </section>
<!-- 헤더들어가는곳 -->



 <!-- Left Side 분리(section/div) -->
    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
       
 
    
<div class="adminReservation_wrap2">
        <div class="adminReservation_title">
            <strong>　${mDTO.mem_name }님은 예약 중</strong>
        </div>
        
        
        
<!-- contact 작성Form -->

        
   <div class="col-md-12 block-9 mb-md-5">
         <form class="bg-light p-5 contact-form" method="post" id="rez" name="fr" >
                
 <!-- Left Side 분리(section/div)-->
<!--            <div class="col-md-4"> -->
<!--               <div class="row mb-5"> -->
                <div class="col-md-12">
                  <!-- <div class="border w-100 p-4 rounded mb-2 d-flex"> -->
                    <div class="form-group2">  
                          <h3>예약정보</h3>  
                        <label>대여일시 　　　: 　<input type="text" name="rez_rentalDate" class="rezform-1" value="${sessionScope.rez_pick_date }" readonly="readonly"></label><br> <!-- rezDTO -->
                        <label>반납일시 　　　: 　<input type="text" name="rez_returnDate" value="${sessionScope.rez_off_date }" class="rezform-1" readonly="readonly"></label><br>
                        <label>대여시간 　　　: 　<input type="text" name="rez_pick_time" value="${sessionScope.rez_pick_time }" class="rezform-1" readonly="readonly"></label><br> <!-- rezDTO -->
                        <label>반납시간 　　　: 　<input type="text" name="rez_off_time" value="${sessionScope.rez_off_time }" class="rezform-1" readonly="readonly"> </label><br>
                        <label>총예약일 　　　: 　<input type="text" name="rez_totalDate" value="${sessionScope.rez_totalDate }" class="rezform-1" readonly="readonly" style="width:30px; text-align:right;">&nbsp;<span style="color:black;">일</span></label><br>
                        <label>대여/반납장소　: 　<input type="text" name="rez_site" value="${sessionScope.rez_site }" class="rezform-1" readonly="readonly"></label>         
                     </div>
                  <!-- </div> -->
<hr>
<br>
                </div>
                <div class="col-md-12">
<!--                    <div class="border w-100 p-4 rounded mb-2 d-flex"> -->
               <div class="form-group2">  
                     <h3>선택차량정보</h3>  
                     <input type="hidden" name="car_code" value="${carDTO.car_code}">
                     <label>차량카테고리　:　<input type="text" name="car_category" value="${carDTO.car_category}" class="rezform-1" readonly="readonly"></label> <br>
                     <label>차량브랜드　　:　<input type="text" name="car_brand" value="${carDTO.car_brand}" class="rezform-1" readonly="readonly"></label><br><!-- 주소줄에서받아오기 -->
                     <label>차량이름　　　:　<input type="text" name="car_name" value="${carDTO.car_name}" class="rezform-1" readonly="readonly"></label><br>
                     <label>차량옵션　　　:　<input type="text" name="car_op" value="<c:forTokens var="op" items="${carDTO.car_op }" delims="-">${op }, </c:forTokens>" 
                     class="rezform-1" style="width:500px;" readonly="readonly"></label><br>
                     <label>차량연식　　　:　<input type="text" name="car_year" value="${carDTO.car_year}" class="rezform-1" readonly="readonly"></label><br>
                     <label>차량연료　　　:　<input type="text" name="car_fuel" value="${carDTO.car_fuel}" class="rezform-1" readonly="readonly"></label>
                     </div>
                   </div>
<!--                 </div> -->          
<!--               </div> -->
             <hr>
             <br>
             
<!--           </div> -->
<div class="col-md-12">
            <div class="form-group">
              <h3>운전자정보입력</h3>
              
              <input type="hidden" name="mem_id" value="${sessionScope.mem_id }">
        
                이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;<input type="text" name="mem_name" class="rezform-2" value="${mDTO.mem_name }" readonly="readonly">
          </div> 
          
          <div class="form-group">           
                전화번호&nbsp;:&nbsp;<input type="text" name="mem_phone" class="rezform-2" value="${mDTO.mem_phone }" readonly="readonly">
          </div>  
             
        <div class="form-group">           
                생년월일 :&nbsp;<input type="text" name="mem_birthday" class="rezform-2" value="${mDTO.mem_birthday }" readonly="readonly">
         </div>  
         
         <div class="form-group">      
                이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;<input type="email" name="mem_email" class="rezform-2" value="${mDTO.mem_email }" readonly="readonly">
          </div>
 </div>        
              <br>   
              <hr>
              <br>
<div class="col-md-12">
         <div class="form-group">
         <c:set var="licenseChk" value="${rezDTO.license_num }"/>
<%--          ${licenseChk } --%>
              <h3>면허정보입력</h3>    
                면허발급일자&nbsp;:&nbsp;<input type="date" name="license_issueDate" class="rezform-2"
                <c:choose>
                	<c:when test="${licenseChk!=null }">
                	value="${rezDTO.license_issueDate }" readonly="readonly"
                	</c:when>
                	<c:when test="${licenseChk==null }">
                	value="" placeholder="면허발급일자를 정확하게 입력해주세요."
                	</c:when>
                </c:choose>
                >
          </div>

              <div class="form-group">
                  면허종류&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;
                    <select class="rezform-2" name="license_type">
                <c:choose>
                	<c:when test="${licenseChk!=null }">
						<option value="" selected disabled hidden>&nbsp;면허 종류를 선택하세요</option>	
                       <optgroup label="1종">
                        <option value="1종대형" disabled="disabled"
                        <c:if test="${rezDTO.license_type.equals('1종대형') }">
                        selected="selected"
                        </c:if>
                        >1종대형</option>
                           
                        <option value="1종보통" disabled="disabled"
                        <c:if test="${rezDTO.license_type.equals('1종보통') }">
                        selected="selected"
                        </c:if>
                        >1종보통</option>
                        
                        <option value="1종소형" disabled="disabled"
                        <c:if test="${rezDTO.license_type.equals('1종소형') }">
                        selected="selected"
                        </c:if>               
                        >1종소형</option>
                     </optgroup>
                     
                     <optgroup label="2종">   
                        <option value="2종보통" disabled="disabled"
                        <c:if test="${rezDTO.license_type.equals('2종보통') }">
                        selected="selected"
                        </c:if>                         
                        >2종보통</option>
                        
                        <option value="2종소형" disabled="disabled"
                        <c:if test="${rezDTO.license_type.equals('2종소형') }">
                        selected="selected"
                        </c:if>                       
                        >2종소형</option>
                   </optgroup>
                	</c:when>
                	<c:when test="${licenseChk==null }">
                       <optgroup label="1종">
                        <option value="1종대형">1종대형</option>
                        <option value="1종보통">1종보통</option>
                        <option value="1종소형">1종소형</option>
                     </optgroup>
                     <optgroup label="2종">   
                        <option value="2종보통">2종보통</option>
                        <option value="2종소형">2종소형</option>
                   </optgroup>
                	</c:when>
                </c:choose>
                   </select>
                   </div>
                   
          <div class="form-group"> <!-- 면허증번호 12자리 그리고 패턴 설정하기 -->
                 면허증번호&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;
                 <input type="text" id="license_num" name="license_num" class="rezform-2" oninput="autoHyphen(this)"
                <c:choose>
                	<c:when test="${licenseChk!=null }">
                	value="${rezDTO.license_num }" readonly="readonly"
                	</c:when>
                	<c:when test="${licenseChk==null }">
                	value="" placeholder="00-00-000000-00" maxlength="15"
                	</c:when>
                </c:choose>
				>                 
          </div>          
</div>    
       <br>
           <hr>
           <br>
<div class="col-md-12">           
        <div class="form-group">
         <h3>자동차보험</h3>   
            <label><input type="radio" name="car_insurance" onclick="insr1()" value="일반자차"> 일반자차
               <a href="javascript:Detail1();">　　상세보기</a></label><br>
            <label><input type="radio" name="car_insurance" onclick="insr2()" value="완전자차"> 완전자차   
                 <a href="javascript:Detail2();">　　상세보기</a></label><br>
        </div>
</div>  

     <br>
 <div class="col-md-12">              
        <div class="form-group">   
         <h3>결제정보</h3>      
            <input type="hidden" name="car_code" value="${param.car_code}">    
            <label>대여요금 : <input type="text" id="number" name="car_price" class="rezform-2" style="width:100px; text-align:right;" value="${carDTO.car_price*sessionScope.rez_totalDate }" readonly="readonly">원</label><br>
            <label>보험요금 : <input type="text" id="number" name="insuranceCharge" class="rezform-2" style="width:100px; text-align:right;" value="" readonly="readonly">원</label><br>
            <label>결제금액 : <input type="text" id="number" name="pay_total" class="rezform-2" style="width:100px; text-align:right;" value="" readonly="readonly">원</label>
        </div>         
</div>
<br>
<div class="col-md-12">   
        <div class="form-group">     
         <h3>약관동의</h3>   
            <textarea name="" id="" cols="50" rows="9" class="rezform-2" readonly="readonly" style="width:600px; height:300px;">
제9조 (예약신청)
이용자는 이하의 방법에 의하여 차량대여 예약을 신청합니다.
1. 웹서비스 상에서 예약을 신청하는 방법
가. 성명, 주소, 전화번호(이동전화번호), 이메일주소 입력
나. 차량 대여일과 반납일을 입력
다. 차량의 수령지와 반납지 선택
라. 대여차량의 확인과 대여요금 및 휴차 손해 등의 비용 부담 확인
마. 이 약관에 동의한다는 표시(예, 마우스 클릭)
바. 예약사항 확인 또는 회사의 확인에 대한 동의
2. 전화로 예약을 신청하는 방법

제10조 (예약의 성립)
① 회사는 제9조와 같은 예약신청에 대하여 다음 각 호에 해당하지 않는 한 승낙합니다.
1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
2. 렌터카 대여자격 조건에 합당치 않은 경우
가. 승용, 7~9인승 승합차 : 만 21세 이상, 2종 보통 이상 운전면허 취득 후 1년 이상 경과한 자
나. 11인승 이상 승합차 : 만 21세 이상, 1종 보통 이상 운전면허 취득 후 1년 이상 경과한 자
3. 기타 차량대여 예약신청에 승낙하는 것이 대여차량 예약마감, 차량 사양의 변경 등 사유로 인하여 현저히 지장이 있다고 판단하는 경우
② 렌터카 예약은, 웹서비스 예약의 경우에는 렌터카 예약에 대하여 예약번호를 포함한 창의 형태로 이용자에게 도달한 시점에, 전화 예약의 경우에는 유선상 안내에 의하여 이용자에게 예약번호를 고지한 시점에, 각 성립한 것으로 봅니다.

제11조 (대금결제)
① 예약한 차량대여에 대한 대금지급방법은 다음 각호의 방법 중 가용한 방법으로 할 수 있습니다.
1. 신용카드 결제
2. 회사가 지급한 회원 포인트에 의한 결제
3. 회사와 협의된 가상계좌 납부 (현장 현금 지급은 불가)
4. 신용카드를 제외한 선불카드, 직불카드, 체크카드 등의 각종 카드 결제
5. 회사와 계약을 맺었거나 회사가 인정한 상품권에 의한 결제
6. L.POINT 결제
7. 기타 회사와 계약을 맺었거나 회사가 인정한 제휴사 포인트 등에 의한 결제
② 제1항 제3호부터 제7호까지의 방법으로 결제 시 회사는 이용자에게 신용정보조회 동의를 요청드릴 수 있고, 신용정보조회를 거부하거나 조회 결과 이용자의 신용이 회사가 정하는 기준에 부합하지 않을 경우(채무불이행, 신용불량 등) 회사는 차량대여를 취소, 거부할 수 있습니다.
③ 차량대여에 대한 신용카드 결제가 연체되는 경우, 이용자가 지정하는 신용카드회사의 약관이 적용되며, 신용카드회사로부터 회사에 카드가 무효 또는 판매부인의 통지가 있는 경우 회사는 즉시 이용자의 회사 이용을 일단 정지하고(웹서비스의 ID 및 Password 사용 정지를 포함합니다), 이용자에 대해 대금결제 방법의 변경여부에 대한 확인 연락을 합니다.
④ 이용자가 회사에 제출한 연락처로 연락이 되지 않을 경우 또는 지정일까지 확인 내지 대금결제 방법의 변경이 되지 않는 경우 회사는 당해 이용자와의 계약을 해제, 해지하고 회원인 경우 제7조 제4항 제3호에 따라 회원 자격상실 처리를 할 수 있습니다.

제12조 (예약확인 통지 및 이용자의 예약 취소)
① 회사는 이용자가 차량대여 예약을 완료한 경우 이용자에게 예약확인 통지를 합니다.
② 예약확인 통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 예약확인 통지를 받은 후 예약한 차량대여 시점(이하 ‘예약시간’이라 합니다) 24시간 전까지 예약 취소를 요청할 수 있습니다.
③ 회사는 예약시간의 24시간 전까지 이용자의 예약 취소 요청이 있는 때에는 지체 없이 그 요청에 따라 처리하며, 예약 취소 전에 대금을 받은 경우 지급받은 대금의 전액을 반환합니다.
④ 회사가 예약 취소 전에 대금을 받고 이용자가 예약시간 직전 24시간 내에 예약을 취소하는 경우, 회사는 지급받은 대금의 10%를 제외한 나머지 금액만을 반환합니다.
⑤ 예약시간을 1시간 이상 경과하여도 대여계약이 체결되지 아니한 경우에는 예약은 취소된 것으로 하며, 회사는 사전에 대금을 받은 경우 지급받은 대금의 10%를 제외한 나머지 금액을 반환하고, 이와 별도로 회원 포인트를 1,000포인트 차감할 수 있습니다. (단, 누적 보유 포인트가 없는 회원은 포인트가 차감되지 않습니다.)

제13조 (회사의 예약 취소 및 환불)
① 회사는 이용자가 차량예약완료 후, 차량의 이상 또는 전산상의 오류 등의 사유로 차량을 대여할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 사전에 차량 대여에 대한 대금을 받은 경우에는 대금을 받은 날부터 7일 이내에, 그렇지 않은 경우에는 그 사유발생일로부터 7일 이내에 계약해제 절차를 취합니다. 이 때 회사가 사전에 대금을 받은 경우에는 지급받은 대금과 지급받은 대금의 10%를 합한 금액을 환불합니다. ② 다음 각 호의 경우에는 회사는 대여된 차량일지라도 차량을 반납 받은 다음 1 영업일 이내에 이용자의 요구에 따라 즉시 환불, 반납 또는 교환 조치를 합니다. 다만 이용자의 요구 기한은 차량이 인도된 날로부터 차량 반납 예정일 이내로 합니다.
1. 예약된 차량이 이용자 예약 내용과 상이하거나 회사가 제공한 정보와 상이할 경우
2. 예약된 차량이 파손, 손상 되었을 경우. 단, 이용자의 책임 있는 사유로 차량이 훼손된 경우는 제외합니다.
③ 차량대여 시 회사는 별도의 보증절차 대신 이용자의 개인신용정보 조회를 요청할 수 있으며, 이용자가 이에 동의하지 않거나 조회 결과 이용자의 신용이 회사가 정하는 기준에 부합하지 않을 경우(채무불이행, 신용불량 등) 차량 대여를 취소, 거부할 수 있습니다.
            </textarea><br>
            <label> <input type="checkbox" name="agreement" > 위 약관에 전체 동의합니다.</label>
        </div> 
 </div>  
   <br>   
          <div class="form-group" id="buttons" align="center">
           <input type="button" value="결제하기" class="submitbtn" onclick="checkRez();">
            <input type="button" value="예약취소" class="submitbtn" onclick="cancleRez();"> 
          </div>
           
        </form>  
      </div>
    </div>
    </div> </div>
<!-- contact 작성Form -->

    </section>
  
<!-- 푸터들어가는곳 -->
    <jsp:include page="../inc/bottom.jsp"/>
<!-- 푸터들어가는곳 -->    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="./js/google-map.js"></script>
  <script src="./js/main.js"></script>
  
  </body>

</html>
