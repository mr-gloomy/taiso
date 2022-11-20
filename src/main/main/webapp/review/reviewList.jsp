<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<script type="text/javascript">
	function deleteBoard(seq){
		Swal.fire({
		  title: '글을 삭제 하시겠습니까?',
		  text: "삭제하시면 다시 복구시킬 수 없습니다.",
		  icon: 'info',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: 'grey',
		  confirmButtonText: '삭제',
		  cancelButtonText: '취소'
		}).then((result) => {
		  if (result.value) {
	          //"등록" 버튼을 눌렀을 때 작업할 내용을 이곳에 넣어주면 된다. 
			  location.href='./ReviewDeleteAction.rev?rev_num=2';
		  }
		})
	}
	
	function writeOpen(){
	    var _width = '500';
	    var _height = '700';
	 
	    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	    var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 

 		// 새 창 열기
 		document.domain = "localhost"; //document.domain 값이 팝업과 부모창 동일해야 합니다.
 		window.open("./ReviewWrite.rev","",'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
 		 

	}
	
	function updateOpen(){
	    var _width = '500';
	    var _height = '700';
	 
	    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	    var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 
 		// 새 창 열기
 		document.domain = "localhost"; //document.domain 값이 팝업과 부모창 동일해야 합니다.
 		window.open("./ReviewUpdateAction.rev?rev_num=2","",'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
	}
</script>
</head>
<body>

	<%
		// 회원에서 id(세션에 저장) 받고, 예약에서 회원 아이디에 대한 차량 코드 받아서 차량 카테고리 저장 
		// (회원) 예매내역 조회에서 - 수정버튼 클릭하면 ReviewUpdate.rev로 넘어갈 예정
		// 컨트롤러에서 ReviewUpdate.rev는 reviewUpdate.jsp로 이동, 디비에서 해당 글 정보 받아서 reviewUpdate.jsp로 이동
		// reviewUpdate.jsp에서 정보 입력하고 수정 버튼 누르면 ReviewUpdateAction.rev로 이동
		// 컨트롤러에서 ReviewUpdateAction 실행하고 다시 예매내역 조회로 이동
		
		// 근데 예매내역 조회에서 ReviewUpdate.rev로 rev_num을 어떻게 보낼까 ....? - 고민해보기 => 해결 된듯?
				
		// (회원) 예매내역 조회에서 삭제버튼 클릭하면 ReviewDelete.rev로 넘어감
		// 컨트롤러에서 ReviewDelete.rev는 페이지 이동 없이 디비에서 해당 글 삭제하고 다시 reviewList.jsp로 이동
		
		
		session.setAttribute("mem_id", "itwill");
		session.setAttribute("rez_uqNum", 1);
				
	%>		
<!-- 			<form action="./ReviewWrite.rev"> -->
<!-- 				<input type = "submit" value = "리뷰 등록"> -->
<!-- 			</form> -->
			
			<input type = "button" value = "리뷰 등록" onclick="writeOpen();">
			<input type = "button" value = "리뷰 수정" onclick="updateOpen();">
			<input type = "button" value = "삭제" onclick="deleteBoard();">
			<a href = "./ReviewListAction.rev">리뷰확인</a>
</body>
</html>