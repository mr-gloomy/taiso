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
   
      var mem_pw = document.fr.mem_pw.value;   
      var mem_id = document.fr.mem_id.value;   
      var rez_uqNum = document.fr.rez_uqNum.value; 
      var pay_uqNum = document.fr.pay_uqNum.value;
   
   if(document.fr.cancel_reason.selectedIndex==0){
      
      Swal.fire({         
           title : '취소사유를 입력하세요!',
           icon: 'warning',
          confirmButtonText: '확인'
       })
      document.fr.cancel_reason.focus();
       return false;
   }
   
   
   if(document.fr.mem_pw.value == ""){

      Swal.fire({         
            title : '비밀번호를 입력해주세요!',
             icon: 'warning',
            html: '결제 취소를 위해 고객님의 비밀번호가 필요합니다.',
            confirmButtonText: '확인'
         })          
          document.fr.mem_pw.focus();
      return false;
   }  
   
   // 새창열기
//    location.href="./ReservationCancel.rez?mem_pw="+mem_pw+"mem_id="+mem_id+"rez_uqNum="+rez_uqNum";
//    location.href="./ReservationCancelAction.rez?rez_uqNum="+rez_uqNum+"pay_uqNum="+pay_uqNum+"mem_id="+mem_id+"mem_pw="+mem_pw;
   
} 

 </script>

</head>
<body>

<!-- 우선 기본으로 그냥 만들어 놓은것 -->
      <article>
         <h1>결제 취소 확인</h1>
         <form action="./ReservationCancel.rez"  method="post" 
               name="fr"  onsubmit="return checkPW()">
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
               
               <label>취소수수료 <br>
               결제 금액에서 10% 차감된 금액으로 환불됩니다.            
               </label>
               <input type="text" name="cancel_commission" value="10" readonly="readonly">%
               <!-- 나중에 (pay_total * 0.9) 해주기 / 아니면 그냥 환불해주기 -->
               <br>
               
               <label>아이디</label>
               <input type="text" name="mem_id" value="${param.mem_id }"> <br>
               
               <label>예약번호</label>
               예약번호 : <input type="text" name="rez_uqNum" value="${param.rez_uqNum }"> <br>
               
               <br>
                
                <label>결제고유번호</label>
               결제고유번호 : <input type="text" name="pay_uqNum" value="${param.pay_uqNum }"> <br>
               
               <br>
               
               <label>비밀번호</label> 
               <input type="password" name="mem_pw" value="" ><br>
         
            </fieldset>
            <div class="clear"></div>
            <div id="buttons">
               <input type="submit" value="결제하기" >
            </div>
         </form>
      </article>

</body>
</html>