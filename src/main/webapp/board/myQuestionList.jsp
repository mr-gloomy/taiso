<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
<link rel="stylesheet" href="./css/board.css">
<link rel="stylesheet" href="./css/admin_my.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">
$(function() {
     var Accordion = function(el, multiple) {
       this.el = el || {};
       // more then one submenu open?
       this.multiple = multiple || false;
       
       var dropdownlink = this.el.find('.dropdownlink');
       dropdownlink.on('click',
                       { el: this.el, multiple: this.multiple },
                       this.dropdown);
     };
     
     Accordion.prototype.dropdown = function(e) {
       var $el = e.data.el,
           $this = $(this),
           //this is the ul.submenuItems
           $next = $this.next();
       
       $next.slideToggle();
       $this.parent().toggleClass('open');
       
       if(!e.data.multiple) {
         //show only one menu at the same time
         $el.find('.submenuItems').not($next).slideUp().parent().removeClass('open');
       }
     }
     
     var accordion = new Accordion($('.accordion-menu'), false);
   })

</script>

<!-- 사이드바 --> 
<style>


ul {
  list-style: none;
}

#a-menu{
color: #fffff !important; 
}

h2 {
  text-align: center;
  margin: 20px auto;
  color: #fff;
}

.accordion-menu {
  width: 100%;
    max-width: 300px;
    margin: 20px 0px 0px 0px;
  background: #fff;
  border-radius: 4px;
      box-shadow: rgb(0 0 0 / 15%) 0px 5px 15px 0px;
}
.accordion-menu li.open .dropdownlink {
  color: #1089FF;
  .fa-chevron-down {
    transform: rotate(180deg);
  }
}
.accordion-menu li:last-child .dropdownlink {
  border-bottom: 0;
}
.dropdownlink {
  cursor: pointer;
  display: block;
    padding: 15px 20px 15px 15px;
    font-size: 16px;
/*   border-bottom: 1px solid #ccc; */
  color: #212121;
  position: relative;
  transition: all 0.4s ease-out;
  i {
    position: absolute;
    top: 17px;
    left: 16px;
  }
  .fa-chevron-down {
    right: 12px;
    left: auto;
    padding: 10px;
    top: 10px;
    line-height: 1;
  }
}

.dropdownlink2 {
    cursor: pointer;
    display: block;
    padding: 15px 15px 20px 15px;
    font-size: 18px;
    border-bottom: 1px solid #ccc;
    color: #ffffff !important;
    position: relative;
    background: #1089ff;
    transition: all 0.4s ease-out;
    border-radius: 10px;
    box-shadow: rgb(0 0 0 / 15%) 0px 5px 15px 0px;
    
  i {
    position: absolute;
    top: 17px;
    left: 16px;
  }
  .fa-chevron-down {
    right: 12px;
    left: auto;
    padding: 10px;
    top: 10px;
    line-height: 1;
  }
}

.submenuItems {
  display: none;
  background: #E5E5E5;
  li {
    border-bottom: 1px solid #B6B6B6;
  }
}

.submenuItems a {
  display: block;
  color: #fffff !important;
  padding: 12px 12px 12px 45px;
  transition: all 0.4s ease-out;
  &:hover {
    background-color: #CDDC39;
    color: #fff;
  }
}


.m-col-md-4 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 33.33333%;
    flex: 0 0 33.33333%;
    max-width: 27.33333%; 
    margin-right: 35px;
/*     margin-top: 30px; */
    border-radius: 22px;
/*     box-shadow: rgb(0 0 0 / 20%) 0px 5px 15px 0px; */
    }

.fa{
vertical-align:middle;
padding: 5px;
float: right;

}

</style>
<!-- 사이드바 --> 


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
function Login() {
//    var mem_id = ${sessionScope.mem_id }
//    if(mem_id==null) {
   alert("수정제안");
//    location.href="./MemberLogin.me";
//    return;
   }
}
</script>

<!-- input에 오늘날짜 기본값으로 넣기 -->
<script type="text/javascript">
   window.onload = function() {
      today = new Date();
      console.log("today.toISOString() >>>" + today.toISOString());
      today = today.toISOString().slice(0, 10);
      console.log("today >>>> " + today);
      bir = document.getElementById("todaybirthday");
      bir.value = today;
   }
</script>
<style>
    #wrapper{
        width:300px;
        margin:auto;
        padding: 30px;
    }
</style>
    <!-- 배경색 -->
    <style> 
    .bg-light {
    background: #f8f9fa !important;
}
    </style>
   <!-- 배경색 -->

</head>
<body>
   <div id="wrap">
      <!-- 헤더들어가는 곳 -->
      <jsp:include page="../inc/top.jsp" />
      <!-- 헤더들어가는 곳 -->

      <!--  -->  
      <section class="hero-wrap hero-wrap-2 js-fullheight"
         data-stellar-background-ratio="0.5">
         <div class="overlay"></div>
         <div class="container">
            <div
               class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
               <div class="col-md-9 ftco-animate pb-5">
                  <p class="breadcrumbs">
                     <span class="mr-2"><a href="./ReservationMain.rez">Home <i
                           class="ion-ios-arrow-forward"></i></a></span> <span>고객센터 <i
                        class="ion-ios-arrow-forward"></i></span>
                  </p>
                  <h1 class="mb-3 bread">1:1 문의하기</h1>
               </div>
            </div>
         </div>
      </section>
      <!--  -->

   <!-- 전달된 정보 확인 -->
   
<%--    <%=request.getAttribute("boardListAll") %> --%>
<%--   ${requestScope.QuestionList } --%>
   
      <!-- left -->
      <section class="ftco-section contact-section bg-light">
         <div class="container">
            <div class="row d-flex mb-5 contact-info">
            
            <!-- @@@@@@@@@@@@여기부터 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
               <jsp:include page="../inc/mysidebar.jsp" />
            <!-- @@@@@@@@@@@@여기까지 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
      
      <!-- @@@@@@@@@@@@@@@@@우측@@@@@@@@@@@@@@@@ -->
      
      

               <div class="col-md-8 block-9 mb-md-5">
                     <div class="board_wrap">
                        <div class="board_title">
                           <strong>나의 문의 내역</strong>
                            <div align="right">
                                 <input type="submit" value="작성하기" class="btn btn-primary" onclick=" location.href='./QuestionWritePre.bo'; " >
                           </div>

                           <!--  검색 폼 -->
                           <div class="n_search" border="1" width="90%" >
                           <p>전체 글 개수 : ${requestScope.cnt } 개</p>   
                              <div class="n_search" border="1" width="90%">
                                 <div align="right">
                                    <input type="text" name="search"> 
                                    <input type="submit" value="Search" class="btn btn-outline-primary">
                                 </div>
                              </div>
                           </div>
                        </div>

      
                    <!-- 옵션정보 -->
                    <div class="tab-content" id="pills-tabContent">
                    
                    <!-- 이 안으로 내용 바뀜 -->
                         <div class="tab-pane fade show active" id="pills-1" role="tabpanel" aria-labelledby="pills-description-tab">
   
                  <div class="board_list_wrap">
                     <div class="board_list">
                        <div class="top">
                           <div class="num">번호</div>
                           <div class="bo_cate">카테고리</div>
                           <div class="title">제목</div>
                           <div class="mem_id">작성자</div>
                           <div class="date3">작성일</div>
                        </div>
                           <c:forEach var="bodto" items="${MyQuestionList }">
                              <div>
                                 <div class="num">${bodto.bo_num }</div>
                                 <div class="bo_cate">
                                  <c:if test="${bodto.bo_cate eq '1'}">이용안내</c:if>
                                  <c:if test="${bodto.bo_cate eq '2'}">예약/결제</c:if>
                                  <c:if test="${bodto.bo_cate eq '3'}">취소/환불</c:if>
                                  <c:if test="${bodto.bo_cate eq '4'}">보험/사고</c:if>
                                  <c:if test="${bodto.bo_cate eq '5'}">기타</c:if>
                                 </div>
                                 
                                 
                                 <div class="title" id="titlepadding2">
                                 <c:if test="${bodto.bo_re_lev > 0}">
                                    <img src="./img/re3.png" width="${bodto.bo_re_lev * 10 }">
<!--                                     <img src="./img/re.gif"> -->
                                 </c:if>
                                 <a
                                    href="./QuestionDetail.bo?bo_num=${bodto.bo_num }&pageNum=${pageNum}">
                                    ${bodto.bo_title } 
<%--                                        <c:if test="${bodto.bo_file == null }"> --%>
                                    
<%--                                        </c:if> --%>
<%--                                        <c:if test="${bodto.bo_file != "" }"> --%>
<!--                                           <img src="./img/save.png" width="15" height="15"> -->
<%--                                        </c:if> --%>
                                    <c:choose>
                                     <c:when test="${empty bodto.bo_file}">
                                         &nbsp;
                                     </c:when>
                                     <c:when test="${not empty bodto.bo_file}">
                                         <img src="./img/save.png" width="13" height="13">
                                     </c:when>
                                     <c:otherwise>
                                         ?
                                     </c:otherwise>
                                 </c:choose>
                                 </a>
                                 </div>
                                    <div class="mem_id">${bodto.mem_nickName }</div>
                                    <div class="date3">${bodto.bo_sysdate }</div>
                              </div>
                           </c:forEach>
                           </div>
                           </div>
                        </div>
                        <!-- 여기까지 1번 카테  -->
                        

                        <!-- 아에 tabcontent 끝 -->
                     </div>

                        <div class="n_page" align="center" id="wrapper"> 
                           <c:if test="${requestScope.cnt != 0}">
                 
                            <!-- 이전 -->
                            <c:if test="${startPage > pageBlock }">
                               <a href="./QuestionList.bo?pageNum=${startPage-pageBlock }" class="btn btn-outline-primary" ><<</a>
                            </c:if>
                            <!-- 페이지 번호(1,2,3....) -->     
                            <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
                                  <a href="./QuestionList.bo?pageNum=${i }" class="btn btn-outline-primary" >${i }</a> 
                            </c:forEach>  
                            
                            <!-- 다음 -->   
                            <c:if test="${endPage < pageCount }">
                                <a href="./QuestionList.bo?pageNum=${startPage+pageBlock }" class="btn btn-outline-primary">>></a>
                            </c:if>
                        </c:if>
                        </div>
                           <!-- 페이지처리 이전,다음 -->
            
            
                  </div>                        
      <!-- 이 안이 변동사항 아래는 외부 틀이라서 필수 -->         
         </div>
<!--             <div class="row justify-content-center"></div> -->
         </div>
         </div>
      </section>
      
      <!-- @@@@@@@@@@@@@@@@@우측@@@@@@@@@@@@@@@@ -->
               
         
      <div class="clear"></div>
      <!-- 푸터들어가는 곳 -->
      <jsp:include page="../inc/bottom.jsp" />
      <!-- 푸터들어가는 곳 -->
      
   </div>
   <!-- loader -->
   <div id="ftco-loader" class="show fullscreen">
      <svg class="circular" width="48px" height="48px">
         <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
            stroke-width="4" stroke="#eeeeee" />
         <circle class="path" cx="24" cy="24" r="22" fill="none"
            stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
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
   <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
   <script src="js/google-map.js"></script>
   <script src="js/main.js"></script>
<script src="https://kit.fontawesome.com/595b26ba61.js" crossorigin="anonymous"></script>
</body>
</html>