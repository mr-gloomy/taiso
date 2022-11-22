<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
   <!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>

<script type="text/javascript">

function checkPW(){ 
   
   
   if(document.fr.cancel_reason.selectedIndex==0){
      alert("취소사유를 입력하세요!");
      document.fr.cancel_reason.focus();
       return;
   }
   

   
   
   
   
   if(document.fr.mem_pw.value == ""){

      Swal.fire({         
            title : '비밀번호를 입력해주세요!',
             icon: 'warning',
            html: '결제 취소를 위해 고객님의 비밀번호가 필요합니다.',
            confirmButtonText: '확인'
         })          
          document.fr.mem_pw.focus();
      return;
   } 
   
   var mem_pw = document.fr.mem_pw.value;   
   var mem_id = document.fr.mem_id.value;   
   var rez_uqNum = document.fr.rez_uqNum.value;   
   
   // 새창열기
   location.href="./ReservationCancel.rez?mem_pw="+mem_pw+"mem_id="+mem_id+"rez_uqNum="+rez_uqNum";
} 

 </script>

</head>
<body>

<!-- 우선 기본으로 그냥 만들어 놓은것 -->
      <article>
         <h1>결제 취소 확인</h1>
         <form action=""  method="post" 
               name="fr"  onsubmit="alert('데이터 유효성체크 완료');">
            <fieldset>
            
               <label>취소사유</label>
               <select name="cancel_reason" >
                  <option value="0">취소사유를 선택하세요</option>
                  <option>다시 예약하기 위해서</option>
                  <option>가격이 비싸서</option>
                  <option>단순변심</option>
                  <option>그냥</option>
                  <option>그냥</option>
               </select>
               
               <br>
               
               <label>취소수수료</label>
               <input type="text" name="cancel_commission" readonly="readonly">
               
               <br>
               
               <label>아이디</label>
<%--                <input type="text" name="id" value="${param.mem_id }"> <!-- 그냥id입력 --> --%>
               <input type="hidden" name="mem_id" value="itwill"> <!-- 그냥id입력 -->
               <input type="hidden" name="rez_uqNum" value="${rez_uqNum }"> <!-- 그냥id입력 -->
               
               <br>
               
               <label>비밀번호</label> 
               <input type="password" name="mem_pw" value="" ><br>
         
            </fieldset>
            <div class="clear"></div>
            <div id="buttons">
               <input type="button" value="결제하기" onclick="checkPW();">
            </div>
         </form>
      </article>

</body>
</html>