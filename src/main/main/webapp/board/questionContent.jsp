<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>TAISO</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

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
    <link rel="stylesheet" href="css/admin_my.css">
  </head>
  <body>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp"/>
	<!-- 헤더들어가는 곳 -->

	    
    <!--  -->
    <section class="hero-wrap hero-wrap-2 js-fullheight" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Contact <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">마이페이지</h1>
          </div>
        </div>
      </div>
    </section>
	<!--  -->
	 
	<!-- left -->
    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
    	<div class="col-md-4">
        	
     	<!-- 프로필 -->
     	<div class="row mb-5">

     	<!-- 프로필 -->
		
		<!-- 메뉴바 -->

    <div class="middle-md-12">
        <div class="menu">
            <ul id="noul">
                <li class="buttonitem" id="profile">
                    <a href="#profile" class="menubtn"><i class="fa fa-cog"></i> 렌탈 내역 </a>
                    <div class="smenu">
                        <a href="">Post</a>
                        <a href="">Picture</a>
                    </div>
                </li>

                <li class="buttonitem" id="messages">
                    <a href="#messages" class="menubtn"><i class="fa fa-user"></i> 1:1 문의 내역</a>
                    <div class="smenu">
                        <a href="">New</a>
                        <a href="">Sent</a>
                        <a href="">Spam</a>
                    </div>
                </li>

                <li class="buttonitem" id="settings">
                    <a href="#settings" class="menubtn"><i class="fa fa-cog"></i> 회원정보 조회</a>
                    <div class="smenu">
                        <a href="">Password</a>
                        <a href="">Language</a>
                    </div>
                </li>
               </ul>
             </div>
            </div>
		<!-- 메뉴바 -->
  		</div> 
   	 </div> 
   	 
   	 <!-- 우측 -->
    <div class="col-md-8 block-9 mb-md-5">
    
    <body>
    <div class="board_wrap">
        <div class="board_title">
            <h4>1:1 문의사항</h4>
            <p>문의사항을 빠르고 정확하게 안내해드립니다!</p>
        </div>
        
    <div class="board_view_wrap">
	<table>
  	   <tr>
  	       <td>번호</td>
  	       <td>${bodto.bo_num }</td>
  	       <td colspan="2">작성자</td>
  	       <td>${bodto.mem_id }</td>
  	   </tr>
  	   <tr>
  	       <td>작성일</td>
  	       <td>${bodto.bo_sysdate }</td>
  	       <td>비밀번호</td>
  	       <td>${bodto.bo_pass }</td>
  	   </tr>
  	   <tr>
  	      <td>제목</td>
  	      <td colspan="3">${bodto.bo_title }</td>
  	   </tr>
  	   <tr>
  	      <td>내용</td>
  	      <td colspan="4">${bodto.bo_content }</td>
  	   </tr>
  	   <tr>
  	      <td>첨부파일</td>
  	      <td colspan="3">
<%--   	         <a href="../file/fileDown1.jsp?file_name=${bodto.file}">${bodto.file}</a><br> --%>
             <a href="../upload/${bodto.bo_file}">${bodto.bo_file}</a>
          </td>
  	   </tr>
  	    
  	   <tr>
  	   	  <td colspan="4">
		  <input type="checkbox" value="secretwrite" id="secretwrite" checked disabled>
		  <label class="form-check-label" for="flexCheckCheckedDisabled">
		    비밀글
		  </label>
		  </td>
	  </tr>	
		<tr>		
          <td colspan="4">
           <div class=>
                <a href="./QuestionUpdateProAction.bo?bo_num=${bodto.bo_num }" class="btn btn-primary">수정하기</a>
            </div>
  	         <input type="button" value="수정" 
  	                onclick=" location.href='./QuestionUpdate.bo?bo_num=${bodto.bo_num}'; ">
<!--   	         <input type="button" value="삭제" -->
<%--   	         		onclick=" location.href='./BoardDelete.bo?bno=${dto.bno}&pageNum=${pageNum }'; "> --%>
<!--   	         <input type="button" value="답글" -->
<%--   	         		onclick=" location.href='./BoardReWrite.bo?bno=${dto.bno}&pageNum=${pageNum }&re_ref=${dto.re_ref }&re_seq=${dto.re_seq }&re_lev=${dto.re_lev }'; "> --%>
  	         <input type="button" value="목록" 
  	                onclick=" location.href='./QuestionList.bo'; ">
  	      </td>
                
       </tr>

     </table>
    </div>    
    </div>
   </div>
      </div>
     </div>
    </section>
	 <!-- 우측 -->
     
	
	

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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