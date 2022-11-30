<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

  	<div class="m-col-md-4">
        	
     	<!-- 프로필 -->
			<div class="membercard">
			  <div align="right">			
				<button type="button" class="btn btn-secondary btn-sm" id="minibtn" onclick="location.href='./MemberUpdatePw.me' ">내 정보</button>
			  </div>
				<div class="text">
					<img src="./images/user.png">
					<h5>${mDTO.mem_nickName}</h5>
					<p>문의사항　　|　　나의 리뷰</p>
					<div align="center">${myqnacnt }　　　　|　　　　 ${myreviewcnt }</div>	　 　　
						
				</div>
			</div>
     	<!-- 프로필 -->

  <!-- 메뉴바 -->
					
<ul class="accordion-menu" >
  <li>
    <div class="dropdownlink" ><i class="fa-solid fa-bolt fa-fw" aria-hidden="true"></i>　나의 렌트 내역
      <i class="fa fa-chevron-down fa-pull-right" aria-hidden="true"></i>
    </div>
    <ul class="submenuItems">	
      <li ><a href="./ReservationList.rez">예약/취소 조회</a></li>
    </ul>
  </li>
  <li>
    <div class="dropdownlink"><i class="fa-solid fa-car fa-fw" aria-hidden="true"></i>　 나의 게시글 모음
      <i class="fa fa-chevron-down fa-pull-right"  aria-hidden="true"></i>
    </div>
    <ul class="submenuItems">
      <li><a href="./MyQuestionList.bo">1:1 문의 내역</a></li>
      <li><a href="./ProposalList.bo">수정제안</a></li>
    </ul>
  </li>
  <li>
    <div class="dropdownlink"><i class="fa-solid fa-comments fa-fw" aria-hidden="true"></i>　 개인정보 관리
      <i class="fa fa-chevron-down fa-pull-right" aria-hidden="true"></i>
    </div>
    <ul class="submenuItems">
      <li><a href="./MemberUpdatePw.me">개인정보 수정</a></li>
      <li><a href="./MemberRemove.me">회원 탈퇴</a></li>
    </ul>
  </li>

</ul>

</div>


		<!-- 메뉴바 -->
