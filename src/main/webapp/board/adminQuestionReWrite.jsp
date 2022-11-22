<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <h1 class="mb-3 bread">관리자 - 1:1 답변하기</h1>
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
                <li class="buttonitem" id="profile" >
                    <a href="./NoticeList.nb" class="menubtn" ><i class="fa fa-cog"></i>공지사항</a>
<!--                     <div class="smenu" > -->
<!--                         <a href="">1</a> -->
<!--                         <a href="">2</a> -->
<!--                     </div> -->
                </li>

                <li class="buttonitem" id="messages">
                    <a href="./FaqList.bo" class="menubtn"><i class="fa fa-user"></i>FAQ</a>
<!--                     <div class="smenu" style="display:block;" > -->
<!--                         <a href="./QuestionList.bo">1:1 문의 내역</a> -->
<!--                         <a href="">수정제안</a> -->
<!--                     </div> -->
                </li>

                <li class="buttonitem" id="settings">
                    <a href="./QuestionWrite.bo" class="menubtn"><i class="fa fa-cog"></i>1:1 문의하기</a>
<!--                     <div class="smenu"> -->
<!--                         <a href="./MemberUpdate.me">회원정보 변경(탈퇴)</a> -->
<!-- <!--                         <a href="">비밀번호 변경</a> --> 
<!--                     </div> -->
                </li>
                <li class="buttonitem" id="profile" >
                    <a href="./ProposalWrite.bo" class="menubtn" ><i class="fa fa-cog"></i>수정제안</a>
<!--                     <div class="smenu" > -->
<!--                         <a href="">1</a> -->
<!--                         <a href="">2</a> -->
<!--                     </div> -->
                </li>
                
               </ul>
             </div>
            </div>
		<!-- 메뉴바 -->
  		</div> 
   	 </div> 

   	 <!-- 우측 -->
          <div class="col-md-8 block-9 mb-md-5">
          	<h4>1:1 문의하기</h4>
            <form action="./AdminQuestionReWriteAction.bo?pageNum=${param.pageNum }" method="post" enctype="multipart/form-data" 
            	class="bg-light p-5 contact-form">
            
              <div class="form-group">
              <input type="hidden" name="bo_num" value="${param.bo_num }">
	           <input type="hidden" name="mem_id" value="${param.mem_id }">
	           <input type="hidden" name="bo_re_ref" value="${param.bo_re_ref }">
	           <input type="hidden" name="bo_re_seq" value="${param.bo_re_seq }">
	           <input type="hidden" name="bo_re_lev" value="${param.bo_re_lev }">
               
              카테고리 : <select class="form-select form-select-sm" id="bo_cate" name="bo_cate" aria-label=".form-select-sm example">
						  <option value="1" 
						    <c:if test="${bodto.bo_cate eq '1'}">selected="selected"</c:if>
				      	  >이용안내</option>
						  <option value="2"
						     <c:if test="${bodto.bo_cate eq '2'}">selected="selected"</c:if>
						  >예약/결제</option>
						  <option value="3"
						    <c:if test="${bodto.bo_cate eq '3'}">selected="selected"</c:if>
						  >취소/환불</option>
						  <option value="4"
							<c:if test="${bodto.bo_cate eq '4'}">selected="selected"</c:if>
						  >보험/사고</option>
						  <option value="5"
						   <c:if test="${bodto.bo_cate eq '5'}">selected="selected"</c:if>
						  >기타</option>
						</select>
              </div> 
              <div class="form-group">
               제목 : <input type="text" class="form-control" name="bo_title" value="[답변] ">
              </div>
              <div class="form-group">
               답변사항 : <textarea name="bo_content" id="textarea" cols="30" rows="7" class="form-control" ></textarea>
              </div>
              <div>
               첨부파일 : <input type="file" name="bo_file">
              </div>
              <div class="form-group">
               비밀번호 : <input type="password" id="pass" name="bo_pass"> 
              </div>
              
              <br>
 	          <hr>
              <div class="form-group">
                <input type="submit" value="답변하기" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          
          </div>
        </div>
        
      </div>
    </section>
	 <!-- 우측 -->
     
	
	
	<div class="clear"></div>
	<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->
	</div>
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