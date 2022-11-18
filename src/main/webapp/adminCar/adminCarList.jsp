<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- ��� ���� -->
<title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">

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
<style type="text/css">
body {
	padding: 1.5em;
	background: #f5f5f5
}

table {
	border: 1px #a39485 solid;
	font-size: .9em;
	box-shadow: 0 2px 5px rgba(0, 0, 0, .25);
	width: 100%;
	border-collapse: collapse;
	border-radius: 5px;
	overflow: hidden;
}

th {
	text-align: left;
}

thead {
	font-weight: bold;
	color: #fff;
	background: #73685d;
}

td, th {
	padding: 1em .5em;
	vertical-align: middle;
}

td {
	border-bottom: 1px solid rgba(0, 0, 0, .1);
	background: #fff;
}

a {
	color: #73685d;
}

@media all and (max-width: 768px) {
	table, thead, tbody, th, td, tr {
		display: block;
	}
	th {
		text-align: right;
	}
	table {
		position: relative;
		padding-bottom: 0;
		border: none;
		box-shadow: 0 0 10px rgba(0, 0, 0, .2);
	}
	thead {
		float: left;
		white-space: nowrap;
	}
	tbody {
		overflow-x: auto;
		overflow-y: hidden;
		position: relative;
		white-space: nowrap;
	}
	tr {
		display: inline-block;
		vertical-align: top;
	}
	th {
		border-bottom: 1px solid #a39485;
	}
	td {
		border-bottom: 1px solid #e5e5e5;
	}
}
</style>
<script type="text/javascript">
	function deleteCar(seq){
		Swal.fire({
		  title: '���� ���� �Ͻðڽ��ϱ�?',
		  text: "�����Ͻø� �ٽ� ������ų �� �����ϴ�.",
		  icon: 'info',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: 'grey',
		  confirmButtonText: '����',
		  cancelButtonText: '���'
		}).then((result) => {
		  if (result.value) {
	          //"���" ��ư�� ������ �� �۾��� ������ �̰��� �־��ָ� �ȴ�. 
			  location.href='./AdminCarDelete.ad?car_code='+seq;
		  }
		})
	}
	
// 	function test(car_code) {
//         if (!confirm("Ȯ��(��) �Ǵ� ���(�ƴϿ�)�� �������ּ���.")) {
//             alert("���(�ƴϿ�)�� �����̽��ϴ�.");
//         } else {
//             alert("Ȯ��(��)�� �����̽��ϴ�.");
//             location.href='./AdminCarDelete.ad?car_code='+car_code;
//         }
//     }
	</script>
</head>
<body>
	
	<jsp:include page="../inc/top.jsp"></jsp:include>

	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('../images/bg_3.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Cars <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">����� ���� �����϶�.</h1>
				</div>
			</div>
		</div>
	</section>


	<!-- �ݺ������� DB�� �ִ� ��� ���� �ҷ����� -->
	
						<!-- �ϴܿ� ��ũ �ɾ ���� ���� �ҷ����� -->
						<!-- �Խ��� -->
<article>
<h1> [������] ���� ����Ʈ </h1>
<table id="notice">
<tr><th>��ǰ��ȣ</th>
	<th>�귣���</th>
	<th>������</th>
    <th>ī�װ�</th>
    <th>�̹���</th>
    <th>����</th>
    <th>�ɼ�</th>
    <th>����</th>
    <th>����</th>
    </tr>
    <c:forEach var="dto" items="${adminCarList }">
	<tr>
		<td>${dto.car_code }</td>
		<td>${dto.car_brand }</td>
		<td>${dto.car_name }</td>
		<td class="left">${dto.car_category }</td>
	    <td>
	    	<img src="./upload/${dto.car_file.split(',')[0] }" width="50" height="50">
	    </td>
	    <td>${dto.car_price }</td>
	    <td>${dto.car_op }</td>
	    <td>${dto.car_year }</td>
	    <td>
	    <a href="./AdminCarUpdate.ad?car_code=${dto.car_code }">����</a>
<%-- 	    <button onclick="./AdminCarUpdate.ad?car_code=${dto.car_code }">����</button> --%>
	    /
<%-- 	    	<c:set var= "code" value="${dto.car_code }"/> --%>
	    
<!-- 	    <input type = "button" value = "����" onclick="deleteCar();"> -->
		<button onclick="deleteCar(${dto.car_code });">����</button>
<%-- 	    <a href="deleteCar(${dto.car_code });">����</a> --%>
		
		

	    
<%-- 	    <a href="./AdminCarDelete.ad?car_code=${dto.car_code }">����</a> --%>
	    </td>
    </tr>
	</c:forEach>
</table>
<div id="table_search">
	<input type="button" value="��ǰ���" class="btn"
		onclick="location.href='./AdminCarAdd.ad';">
		
</div>
<div class="clear"></div>
<div id="page_control">

</div>
</article>
<!-- �Խ��� -->
					

			<!-- ����¡ó�� -->
          	<c:if test="${totalCnt != 0 }">
	
		<!-- ���� -->
		<c:if test="${startPage > pageBlock }">
			<a href="./CarList.ca?pageNum=${startPage-pageBlock }">[����]</a>
		</c:if>
		<!--     	<div class="row mt-5"> -->
          <div class="col text-center">
            <div class="block-27">
              <ul>
		<!-- ������ ��ȣ(1,2,3...) -->
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
<%-- 			<c:if test="${startPage }"> --%>
			<li class="active"><span><a href="./AdminCarList.ad?pageNum=${i }">${i }</a></span></li>
<%-- 			</c:if> --%>
		</c:forEach>
		        </ul>
            </div>
          </div>
        </div>
		
		<!-- ���� -->
		<c:if test="${endPage < pageCount }">
			<a href="./AdminCarList.ad?pageNum=${startPage+pageBlock }">[����]</a>
		</c:if>
	
	</c:if>
		</div>
	</section>


	<jsp:include page="../inc/bottom.jsp"></jsp:include>



	<!-- �ڹٽ�ũ��Ʈ, ȭ�� ���� ���� -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


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