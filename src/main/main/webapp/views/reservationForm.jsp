<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<!-- 헤더들어가는곳 -->
  <head>
  <link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
    <title>TAISO</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
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
    
 <script type="text/javascript">

    
    // https://mojilee.tistory.com/11  ==> alert창 꾸미기 SweetAlert창
    
    
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
   
    // 보험 요금   
    function insr1(){ // 일반자차 onclick 시 
       var insr = document.fr.insuranceCharge.value="10000";
       var numinsr = parseInt(insr);
       var rfee = parseInt(document.fr.car_price.value);
       var totalDate = parseInt(document.fr.rez_totalDate.value);
       document.fr.pay_total.value=(numinsr+rfee)*totalDate;
//        alert(total1);
      return false;
    }
    
    function insr2(){ // 완전자차 onclick 시 
       var insr = document.fr.insuranceCharge.value="20000";
       var numinsr = parseInt(insr);
       var rfee = parseInt(document.fr.car_price.value);
       var totalDate = parseInt(document.fr.rez_totalDate.value);
       document.fr.pay_total.value=(numinsr+rfee)*totalDate;
       return false;
    }
    
    
    
    // 결제 확인 창 => 일단보류
    function checkRez(){
       
       var totalCharge = parseInt(document.fr.pay_total.value=numinsr+rfee); // 최종결제금액
       var cName = document.fr.insuranceCharge.value; // 차량이름
       var rezDate = document.fr.pay_total.value; // 차량일시
       var mName = document.fr.mem_name.value; // 회원이름
       
      Swal.fire({
        title: '예약 확인 창',
        text: mName + "님 결제하시겠습니까?",
        icon: 'success',
        html: '<p>차량이름 : </p>'+cName+'<br/><p>최종 결제 금액 : </p>'+pay_total+'<br/><p>대여기간 : </p>'+'<br/><p>반납기간 : </p>'+cName+'<br/><p>대여/반납장소 : </p>'+cName,
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: 'grey',
        confirmButtonText: '예약',
        cancelButtonText: '취소'
      }).then((result) => {
        if (result.value) {
             //"등록" 버튼을 눌렀을 때 작업할 내용을 이곳에 넣어주면 된다. 
      fr.submit();
        }
      })
   }
    
    
    
    
    
    
 </script>
 
 
  </head>

<!-- ------------------------------------------------------------------------------------------------------- -->

  <body>
  
 <!-- jsp:include -->
 <jsp:include page="../inc/top.jsp"/>
 <!-- jsp:include -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>RESERVATION <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">예약하기</h1>
          </div>
        </div>
      </div>
    </section>
<!-- 헤더들어가는곳 -->




 <!-- Left Side 분리(section/div) -->
    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
        
        
        
        
        
<!-- contact 작성Form -->
   <div class="col-md-8 block-9 mb-md-5">
          <form action="./ReservationProAction.rez" class="bg-light p-5 contact-form" method="post" id="rez" 
                name="fr" >               
<!--           <form action="./ReservationProAction.rez" class="bg-light p-5 contact-form" method="post" id="rez"  -->
<!--                 name="fr" onsubmit="return checkRez();">                -->
                
 <!-- Left Side 분리(section/div)-->
           <div class="col-md-4">
              <div class="row mb-5">
                <div class="col-md-12">
                  <!-- <div class="border w-100 p-4 rounded mb-2 d-flex"> -->
              
                     <p><span>[예약정보]</span> 
                        <label>대여일시 : <input type="text" name="rez_rentalDate" value="${sessionScope.rez_pick_date }" readonly="readonly"></label> <br> <!-- rezDTO -->
                        <label>반납일시 : <input type="text" name="rez_returnDate" value="${sessionScope.rez_off_date }" readonly="readonly"> <br></label>
                        <label>대여시간 : <input type="text" name="rez_pick_time" value="${sessionScope.rez_pick_time }" readonly="readonly"></label> <br> <!-- rezDTO -->
                        <label>반납시간 : <input type="text" name="rez_off_time" value="${sessionScope.rez_off_time }" readonly="readonly"> <br></label>
                        <label>총예약일 : <input type="text" name="rez_totalDate" value="${sessionScope.rez_totalDate }" readonly="readonly"><br></label>
                        <label>대여/반납장소 : <input type="text" name="rez_site" value="${sessionScope.rez_site }" readonly="readonly"> </label><br>               
                     </p>
                  <!-- </div> -->
<hr>
                </div>
                <div class="col-md-12">
<!--                    <div class="border w-100 p-4 rounded mb-2 d-flex"> -->
                     <p><span>[선택차량정보]</span> 
                  <!-- c:set 라이브러리 이용해서 dto 받아오는 것도 생각해보기 근데 일단 버튼이나 링크 주소줄에서 받아오는 걸로.. -->            
                     <input type="hidden" name="car_code" value="${carDTO.car_code}"><br>
                     <label>차량 카테고리 : <input type="text" name="car_category" value="${carDTO.car_category}" readonly="readonly"></label> <br>
                  <label>차량 브랜드 : <input type="text" name="car_brand" value="${carDTO.car_brand}" readonly="readonly"></label> <br><!-- 주소줄에서받아오기 -->
                     <label>차량 이름 : <input type="text" name="car_name" value="${carDTO.car_name}" readonly="readonly"></label> <br>
                     <label>차량 옵션 : <input type="text" name="car_op" value="${carDTO.car_op}" readonly="readonly"></label> <br>
                     <label>차량 연식 : <input type="text" name="car_year" value="${carDTO.car_year}" readonly="readonly"></label> <br>
                     <label>차량 연료 : <input type="text" name="car_fuel" value="${carDTO.car_fuel}" readonly="readonly"></label>

                     </p>
                   </div>
<!--                 </div> -->
                
              </div>
          </div>
<!-- Left Side -->               
              <hr>
              <br>
              <br>

          <div class="form-group">
              <h3>운전자정보입력</h3>
              
              <input type="hidden" name="mem_id" value="${mDTO.mem_id }">
        
                이름 : <input type="text" name="mem_name" class="form-control" value="${mDTO.mem_name }" readonly="readonly">
          </div> 
          
          <div class="form-group">           
                전화번호 : <input type="text" name="mem_phone" class="form-control" value="${mDTO.mem_phone }" readonly="readonly">
          </div>  
             
        <div class="form-group">           
                생년월일 : <input type="text" name="mem_birthday" class="form-control" value="${mDTO.mem_birthday }" readonly="readonly">
         </div>  
         
         <div class="form-group">      
                이메일 : <input type="email" name="mem_email" class="form-control" value="${mDTO.mem_email }" readonly="readonly">
          </div>
              
           <br>
              <hr>
              <br>
              
          <div class="form-group">
              <h3>면허정보입력</h3>    
                면허발급일자 : <input type="text" class="form-control" name="license_issueDate" value="" placeholder="면허발급일자를 정확하게 입력해주세요." required="required">
          </div>
          
          <div class="form-group">
                  면허종류 : 
                    <select class="form-control" name="license_type" required="required">
                          <option selected>면허종류를 선택하세요</option>
                       <optgroup label="1종">
                           <option>1종대형</option>
                        <option>1종보통</option>
                        <option>1종소형</option>
                     </optgroup>
                     <optgroup label="2종">   
                        <option>2종보통</option>
                        <option>2종소형</option>
                   </optgroup>
                   <optgroup label="특수">   
                      <option>대형견인</option>
                      <option>소형견인</option>
                      <option>구난</option>
                   </optgroup>
                    </select>   
          </div>
          
          <div class="form-group">
                 면허증번호 : <input type="text" name="license_num" class="form-control" value="" maxlength='12' placeholder="int값면허증번호를 정확하게 입력해주세요." required="required">
          </div>
          
   
           
           <br>
           <hr>
           <br>
           
        <div class="form-group">
         <h3>자동차보험</h3>   
            <label><input type="radio" name="car_insurance" onclick="insr1()" value="일반자차" required="required"> 일반자차
               <a href="javascript:Detail1();">상세보기</a></label><br>
            <label><input type="radio" name="car_insurance" onclick="insr2()" value="일반자차" required="required"> 완전자차   
            <a href="javascript:Detail2();">상세보기</a></label><br>
        </div>
        
        <div class="form-group">
         <h3>결제수단</h3>      
            <label><input type="radio" name="pay_method" value="kakaoP" required="required"> 카카오페이  </label>
            <label><input type="radio" name="pay_method" value="tossP" required="required" checked="checked"> 토스페이  </label>
            <label><input type="radio" name="pay_method" value="naverP" required="required"> 네이버페이  </label>
            <label><input type="radio" name="pay_method" value="generalP" required="required"> 일반결제</label>
        </div>
        
        <div class="form-group">   
         <h3>결제정보</h3>      
            <!-- 식별 번호 호출 상품차량 선택 주소줄에서 받아올것 --> <input type="hidden" name="car_code" value="${param.car_code}">    
            <label>대여요금 : <input type="text" name="car_price" value="${carDTO.car_price }" readonly="readonly">원</label><br>
            <label>보험요금 : <input type="text" name="insuranceCharge" value="" readonly="readonly">원</label><br>
            <label>총 결제 금액 : <input type="text" name="pay_total" value="${carDTO.car_price }" readonly="readonly"> 원</label>
        </div>         

   
        <div class="form-group">     
         <h3>약관동의</h3>   
            <textarea name="" id="" cols="30" rows="7" class="form-control" readonly="readonly">
약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정
약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정
약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정
약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정
약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정
약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정약관동의 긁어올 예정
            </textarea><br>
            <label> <input type="checkbox" name="agreement" required="required"> 위 약관에 전체 동의합니다.</label>
        </div>   
   <br>
   <br>   
          <div class="form-group" id="buttons">
      <%--  <input type="button" value="${totalcharge} 결제하기" onclick="checkRez();"> --%>

                <input type="submit" value="결제하기" class="btn btn-primary py-3 px-5" >           
                <input type="button" value="예약리스트" class="btn btn-primary py-3 px-5" onclick="location.href='./views/reservationList.jsp';">           
               <input type="button" value="예약취소" class="btn btn-primary py-3 px-5" onclick="location.href='./views/reservationCancel.jsp';"> 
          </div>
           
        </form>  
      </div>
    </div>   
<!-- contact 작성Form -->


<!-- 지도 -->
        <div class="row justify-content-center">
           <div class="col-md-12">
              <div id="map" class="bg-white"></div>
           </div>
        </div>
      </div>
<!-- 지도 -->
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