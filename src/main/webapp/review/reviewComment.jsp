<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- 헤더들어가는곳 -->
  <head>
    <title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
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
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	
	<script type="text/javascript">
	
	function insertBoard(seq){
		Swal.fire({
		  title: '댓글을 등록하시겠습니까?',
		  // text: "삭제하시면 다시 복구시킬 수 없습니다.",
		  icon: 'info',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: 'grey',
		  confirmButtonText: '등록',
		  cancelButtonText: '취소'
		}).then((result) => {
		  if (result.value) {
	          //"등록" 버튼을 눌렀을 때 작업할 내용을 이곳에 넣어주면 된다. 
		 		if(document.fr.rev_content.value == ""){
		 		    Swal.fire({
		 		    	icon: 'error',
						text: '내용을 입력해주세요'
					})
		 			document.fr.rev_content.focus();
		 			return;
		 		}
				
				var f= document.forms.fr;
				document.domain = "localhost"; 
			    opener.name = "openerNames";
			    f.target = opener.name;
			    
		        fr.submit();
		        self.close();
		  }
		})
	}
	
	function backBoard(seq){
		Swal.fire({
		  title: '이전페이지로 돌아가시겠습니까?',
		  // text: "삭제하시면 다시 복구시킬 수 없습니다.",
		  icon: 'info',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: 'grey',
		  confirmButtonText: '네',
		  cancelButtonText: '아니오'
		}).then((result) => {
		  if (result.value) {
	          //"등록" 버튼을 눌렀을 때 작업할 내용을 이곳에 넣어주면 된다. 
			  window.close();
		  }
		})
	}


	</script>
</head>
  <body>
          <div class="col-md-8 block-9 mb-md-5">
            <form action="./ReviewCommentAction.rev" name = "fr" class="bg-light p-5 contact-form" method="get" enctype="multipart/form-data">
          	 <div class="form-group">
           	 <h3><b>댓글 등록</b></h3>	 
              <div class="form-group">
              </div>
              <div class="form-group">
                <textarea name="rev_content" id="" cols="30" rows="10" class="form-control" placeholder="댓글을 남겨주세요" ></textarea>
              </div>
              <input type = "hidden" name = "rev_subject" value = "null">
              <input type = "hidden" name = "rev_image" value = "null">
              <input type = "hidden" name = "rev_star" value = "null">
              <input type = "hidden" name = "car_code" value = "1"> <!-- 나중에 값 불러와야 함 -->
              <input type = "hidden" name = "rez_uqNum" value = "1"> <!-- 나중에 값 불러와야 함 -->
              <input type = "hidden" name = "rev_num" value = "${param.rev_num }">
				<br>
			  <div class="form-group">
                <input type="button" value="댓글 등록" class="btn btn-primary py-2 px-3"  onclick="return insertBoard()">
                <input type="button" value="닫기" class="btn btn-primary py-2 px-3" onclick="backBoard();">
                <input type="reset" value="초기화" class="btn btn-primary py-2 px-3">
              </div>
              
			  <div style="display:none">
				<input type="file" id="input-file" name="rev_image"/> <br><br>
              </div>
              </div>
            </form>  
          </div>

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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="./js/google-map.js"></script>
	<script src="./js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    
  </body>
</html>