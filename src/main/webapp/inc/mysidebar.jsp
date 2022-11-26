<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

    	<div class="col-md-4">
<!--      	프로필 -->
     	<div class="row mb-5">
<!-- 			<div class="membercard"> -->
<!-- 			  <div align="right">			 -->
<!-- 				<button type="button" class="btn btn-secondary btn-sm" id="minibtn" onclick="location.href='./MemberUpdatePw.me' ">내 정보</button> -->
<!-- 			  </div> -->
<!-- 				<div class="text"> -->
<!-- 					<img src="./images/user.png"> -->
<%-- 					<h5>${mDTO.mem_nickName}</h5> --%>
<!-- 					<p>문의사항　　|　　나의 리뷰</p> -->
<%-- 					<div align="center">${myqnacnt }　　　　|　　　　 ${myreviewcnt }</div>	　　　 --%>
						
<!-- 				</div> -->
<!-- 			</div> -->
<!--      	프로필 -->
		
		<!-- 메뉴바 -->

    <div class="middle-md-12">
        <div class="menu">
            <ul id="noul">
                <li class="buttonitem" id="profile" >
                    <a href="#profile" class="menubtn" ><i class="fa fa-cog"></i> 렌트 내역</a>
                    <div class="smenu" >
                        <a href="./ReservationListAction.rez">예약/취소 조회</a>
                        <a href="">2</a>
                    </div>
                </li>

                <li class="buttonitem" id="messages">
                    <a href="#messages" class="menubtn"><i class="fa fa-user"></i> 나의 게시글 모음 </a>
                    <div class="smenu" style="display:block;">
                        <a href="./MyQuestionList.bo" id="smenu">1:1 문의 내역</a>
                        <a href="./ProposalList.bo">수정제안</a>
                    </div>
                </li>

                <li class="buttonitem" id="settings">
                    <a href="#settings" class="menubtn"><i class="fa fa-cog"></i> 개인정보 관리</a>
                    <div class="smenu">
                        <a href="./MemberUpdate.me">개인정보 변경</a>
                        <a href="./MemberRemove.me">회원탈퇴</a>
<!--                         <a href="">비밀번호 변경</a> -->
                    </div>
                </li>
                
               </ul>
             </div>
            </div>
		<!-- 메뉴바 -->
  		</div> 
		</div>