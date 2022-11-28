<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
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
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

<!-- sweetalert -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>

<script type="text/javascript">

function chk(){
	
    var f = document.thisForm;
    
    if(f.mem_accept_sns.checked !== true) {
		 Swal.fire({
			   title: '약관동의에 체크해주세요.',
			   icon: 'warning'
			 });
    	return false;    
    }
    
}

</script>
</head>

  <body>
	
  	<!-- 헤더 시작 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
  	<!-- 헤더 끝-->
	
	<!-- 중간제목 시작 -->
	<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> 
						<span>Contact <i class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">Contact Us</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- 중간제목 끝 -->

	<!-- 본문 시작 -->
	<section class="ftco-section contact-section">
		<div class="formbold-main-wrapper">
			<!-- Author: FormBold Team -->
			<!-- Learn More: https://formbold.com -->
			
			<div class="formbold-form-wrapper">
				<div class="formbold-event-wrapper">
				
					<div class="formbold-form-title">
						<h3>이용약관</h3>
					</div>

				<form action="./MemberJoin.me" method="POST">
				
					<div class="formbold-event-details">
					<h5> <i class='fas fa-user-alt' style='font-size: 20px; color: black'></i> 
						 &nbsp 타이소 구매약관 </h5>
						
						<ul>
							<div class="height_scroll">
<h6><b>제1장 총칙</b></h6>
<b>제1조 (목적)</b>

이 약관은 아이티윌부산협회(이하 "회사")가 운영하는 타이소 사이트(http://www.taiso.com 및 m.taiso.com, 이하 “타이소")에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 마켓과 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.

※「인터넷, 정보통신망, 모바일 및 기타 IT Device 등을 이용하는 전자상거래에 대하여도 그 성질에 반하지 않는 한 이 약관을 준용합니다」

<b>제2조 (용어의 정의)</b>

① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.

1. 타이소 : 사단법인 제주특별자치도관광협회가 재화 또는 서비스(이하 “재화 등”이라 함)를 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 전자상거래 시스템과 그 운영을 위한 웹사이트를 말합니다.

2. 이용자: 이 약관에 따라 회사가 제공하는 서비스를 받는 회원과 비회원을 말합니다.

3. 회원: 회사가 정한 가입절차에 따라 회원등록을 한 개인 또는 사업자로서, 회사의 정보를 지속적으로 제공받으며 회사가 제공한 서비스를 이용할 수 있는 자를 말합니다. 회원은 다음과 같이 구매회원과 판매회원으로 구분됩니다.

가. 구매회원(구매고객): 타이소에서 상품구매 및 구매와 관련하여 제공되는 서비스를 이용할 수 있는 회원을 말합니다.

나. 판매회원(판매고객): 타이소에서 상품 구매 및 관련 서비스와 회사판매회원약관(이하 "판매약관”)상의 서비스를 이용할 수 있는 회원을 말합니다.

4. 비회원 : 회원에 가입하지 않고 회사가 제공하는 서비스를 이용하는 자를 말합니다.

5. 상품 및 구매 : 타이소에서 제공되는 상품은 재화 또는 서비스를 통칭하여 말하며, 구매는 재화 또는 서비스를 이용하는 모든 행위를 말합니다.

6. 아이디(ID): 회원의 식별과 회원의 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 회사에 등록된 회원의 이메일주소를 말합니다. 단, 판매회원은 시스템에서 자동 생성된 거래처 코드를 말합니다.

7. 비밀번호(Password): 회원 본인임을 확인하고 비밀을 보호하기 위하여 회원 스스로가 설정해 회사에 등록한 영문, 특수문자, 숫자의 조합을 말합니다.

8. 운영자: 회사에서 제공하는 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 자를 말합니다.

9. 구매자: 회사에 등록된 판매자의 상품을 구매하는 자를 말하며, 구매회원과 판매회원 및 비회원 모두 구매자격이 부여 됩니다.

10. 판매자: 상품을 판매할 목적으로 회사가 제공하는 시스템(‘판매회원 툴’이라 한다.)에 맞추어 상품을 등록한 회원을 말하며, 판매회원에게 판매의 권한이 주어집니다.

11. 판매회원 툴 : 판매자가 상품을 판매할 목적으로 상품의 내용을 기재하고 상품 판매 관리 등을 할 수 있도록 회사가 제공하는 시스템을 말합니다.

12. 상품평 : 상품 구매 후 해당 상품에 대한 종합적인 평가를 기록한 글, 이미지 등의 게시물을 말합니다.

13. 타이소 쿠폰 : 상품 등을 구매할 때나 사이트가 제공하는 서비스를 이용할 때 표시된 금액 또는 비율만큼 할인 받을 수 있는 쿠폰을 말합니다.

14. 본인확인: 휴대전화 인증을 통하여 회원이 본인인지 여부를 확인하는 것을 의미합니다.

15. 영업일: 회사의 정상적인 서비스 제공이 가능한 날로서 토요일, 일요일 및 법정 공휴일을 제외한 날을 말합니다.

② 제1항에서 정의되지 않은 용어의 의미는 일반적인 거래관행을 따릅니다.

<b>제3조 (적용 범위 및 효력 우선순위)</b>

① 이 약관에서 제1장(총칙), 제3장(기타사항)은 전체 서비스에 적용되며, 제2장은 타이소(통신판매중개) 서비스에 구분하여 적용됩니다.

② 제1장 및 제3장의 규정과 개별서비스인 제2장의 규정이 상충될 때에는 개별서비스 관련 규정(제2장)이 전체서비스 관련 규정(제1장 및 제3장)보다 우선적인 효력을 갖습니다.

<b>제4조 (약관의 명시, 효력 및 변경)</b>

① 회사는 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호, 팩스번호, 전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자 등을 회원이 쉽게 알 수 있도록 회사의 서비스가 제공되는 인터넷 사이트 (http://www.tamnao.com) 첫 화면에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.

② 회사는 합리적인 사유가 발생하면 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법령에 위배되지 않는 범위 안에서 이 약관을 변경 할 수 있으며, 회사가 약관을 변경하고자 할 때에는 적용일자와 변경사유를 밝혀 그 적용일자 15일 전부터 서비스 사이트에 공지합니다. 다만, 이용자에게 불리한 약관을 변경할 때에는 해당 내용을 그 적용일자 30일 전부터 공지하며, 이메일(e-mail), 문자메시지(SMS) 등으로 이용자에게 개별 통지합니다(이용자의 연락처 미기재, 변경 등으로 개별 통지가 어려울 때에는 본 약관에 따라 공지를 하는 것을 개별 통지한 것으로 간주합니다).

③ 이 약관에 동의하는 것은 정기적으로 회사가 운영하는 인터넷 사이트를 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못하여 발생하는 회원 또는 이용자의 피해에 대해 회사는 책임을 지지 않습니다.

④ 변경된 약관에 동의하지 않는 회원은 회원 탈퇴(이용계약의 해지)를 요청할 수 있으며, 회사가 제2항에 따라 이용자에게 약관 변경 적용일까지 거부의사를 표시하지 않으면, 약관의 변경에 동의한 것으로 간주한다는 내용을 공지 또는 통지하였음에도 이용자가 명시적으로 약관 변경에 대한 거부의사를 표시하지 않으면, 회사는 이용자가 변경된 약관에 동의한 것으로 간주합니다.

<b>제5조 (약관 외 준칙)</b>

① 이 약관에 밝히지 않은 사항은 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법령의 규정과 일반 상관례를 따릅니다.

② 회사는 필요하면 특정 서비스에 적용될 사항(이하 “개별약관”)을 정할 수 있으며, 이를 타이소 등을 통하여 공지할 수 있습니다.

③ 회사는 필요하면 서비스 이용과 관련된 세부적인 내용(이하 "이용정책")을 정할 수 있으며, 이를 타이소 등을 통하여 공지할 수 있습니다.

④ 개별약관이나 이용정책의 변경이 있으면 회사는 변경 내용의 효력발생일 7일 이전에 타이소를 통하여 해당 변경 사항을 공지합니다.

⑤ 회원은 항상 개별약관이나 이용정책의 내용에 변경이 있는지 여부를 주시하여야 하며, 변경사항의 공지가 있을 때에는 이를 확인하여야 합니다.

<b>제6조 (이용계약의 성립)</b>

① 회사가 제공하는 서비스에 관한 이용계약(이하 "이용계약"이라고 합니다)은 서비스를 이용하고자 하는 자의 이용신청을 회사가 승낙함으로써 성립하며, 이때 서비스를 이용하고자 하는 자는 회사가 온라인으로 제공하는 회원가입 신청 양식에 따라 필요한 각각의 항목에 해당 내용을 기재한 후 이 약관에 동의한다는 의사 표시를 해야 합니다.

② 회원가입의 성립시기는 회사의 이용승낙 의사가 해당 서비스화면에 게시되거나, 이메일(E-mail) 또는 기타 회사가 정하는 방법으로 이용신청자에게 도달한 시점으로 합니다.

③ 구매회원의 구매서비스 이용은 최초 본인 확인된 1개 아이디(ID)에 한하여 가능합니다.

⑤ 이용계약을 종료(해지 포함)한 후 재가입하는 회원은 최종 이용할 때 사용한 아이디(ID)는 사용할 수 없으며 새로운 아이디(ID)를 사용하는 것을 원칙으로 합니다.

⑥ 회원이 탈퇴한 후 1개월이 지나지 않으면 회원의 서비스 가입신청을 거부할 수 있습니다.

<b>제7조 (개인정보의 변경, 보호)</b>

① 이 서비스에 가입하여 이용하고자 하는 자는 타이소 사이트에서 회원가입절차를 진행합니다.

② 회원은 이용신청 시 기재한 사항이 변경되었을 경우에는 상당한 기간 이내에 회원정보 수정 등의 방법으로 그 변경사항을 수정하여야 합니다. 단, 이름, 아이디(ID) 등 변경할 수 없는 사항은 수정할 수 없습니다.

③ 수정하지 않은 정보로 말미암아 발생하는 손해는 해당 회원이 부담하며, 회사는 이에 대해 아무런 책임을 지지 않습니다.

④ 회사는 이용자의 정보를 서비스를 제공하기 위한 목적 이외의 용도로 사용하거나 이용자의 동의 없이 제3자에게 제공하지 않습니다. 다만 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.

⑤ 회사는 관련법령이 정하는 바에 따라서 이용자의 개인정보를 보호하기 위하여 노력하며, 이용자의 개인정보를 보호하기 위한 정책을 수립하고 개인정보보호 책임자를 지정하여 이를 게시합니다.

⑥ 이용자의 개인정보보호는 관련 법령 및 회사가 정하는 개인정보취급방침에서 정한 바를 따릅니다.

⑦ 타이소에서 제공하는 서비스를 통하여 거래가 성사 되었을 때 회사는 판매자와 구매자 간에 거래 등의 이행과 관련하여 필요한 범위 내에서 이용자의 개인정보를 판매자에게 제공합니다.

							</div>
						</ul>
						</div>
					</div>

					<div class="formbold-event-details">
						<h5> <i class='fas far fa-id-card' style='font-size: 20px; color: black'></i>
							&nbsp 개인정보 수집 및 이용동의 </h5>
								
						<ul>
							<div class="height_scroll">
타이소가 취급하는 모든 개인정보는 관련 법령에 근거하여 수집 · 보유 및 처리되고 있습니다.

「개인정보보호법」은 이러한 개인정보의 취급에 대한 일반적 규범을 제시하고 있으며 , 타이소는 이러한 법령의 규정에 따라 수집 · 보유 및 처리하는 개인정보를 공공업무의 적절한 수행과 이용자의 권익을 보호하기 위해 적법하고 적정하게 취급할 것입니다.
또한, 타이소는 관련 법령에서 규정한 바에 따라 보유하고 있는 개인정보에 대한 열람, 정정·삭제, 처리정지 요구 등 이용자의 권익을 존중하며, 이용자는 이러한 법령상 권익의 침해 등에 대하여 행정심판법에서 정하는 바에 따라 행정심판을 청구할 수 있습니다.
타이소는 개인정보보호법 제 30조에 따라 정보주체의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 개인정보 처리방침을 수립 · 공개하고 있습니다.

본 개인정보취급방침은 회사가 제공하는 타이소 서비스 이용에 적용됩니다.
제 1 조 개인정보 수집에 대한 동의

타이소는 고객님께서 개인정보취급방침 또는 이용약관의 내용에「동의한다」또는「동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하고 있으며,「동의한다」버튼을 클릭하면 개인정보 수집에 동의한 것으로 봅니다.
제 2 조 개인정보의 수집 및 이용 목적

타이소는 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.

가. 상품 서비스 구매 및 예약, 이벤트 참여
타이소 판매 상품에 대한 구매 및 예약, 이벤트 참여등 서비스 이용에 관련한 목적으로 개인정보를 처리합니다.

나. 타이소는 회원들의 개인정보를 다음과 같이 수집합니다.

1) 회원 가입시
- (필수) 이름, 아이디, 비밀번호, E-MAIL, 핸드폰 번호
- (선택) 주소

2) 상품 구매시
- 핸드폰번호, 주소, 신용카드 정보, 은행계좌 정보, 결제기록 등의 정보
- 탑승자 이름, 소인 및 유아의 생년월일 (항공권)
- 예약자 이름, 연락처, 이메일, 대표 투숙객 한글이름

3) 모바일 사용시
- 타이소 앱 버전, OS버전 (IOS, 안드로이드)
- 위치정보 (별도 저장없이 앱에서 사용)

4) 기타
- 서비스 이용과정에서 자동 수집 정보 : IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록, 기기정보

5) 판매자
- 담당자명, 담당자 연락처, 담당자 E-MAIL

다. 수집한 개인정보는 다음과 같은 목적으로 사용됩니다.

1) 개인 식별
- ID, 비밀번호

2) 본인 인증
- 핸드폰번호

3) 서비스 제공을 위한 연락 및 안내, 배송, 이벤트 및 신규서비스 안내(선택), 마케팅(선택), 민원 처리
- 이름, ID, E-MAIL, 핸드폰번호, 주소, 생년월일, 성별

4) 판매자 관리, 만족도 조사, 주요 사항의 고지 및 입점 문의 결과 안내
- 담당자 연락처, 담당자 E-MAIL

5) 상품 구매
- 이름, 주소, 결제 정보

6) 계좌 환불
- 환불 계좌 번호

라. 타이소는 회원가입, 상품구매, 상품문의 및 상품후기 게시판, 고객 상담 등을 통하여 개인정보를 수집합니다.

제 3 조 개인정보의 보유 및 이용기간

타이소는 원칙적으로 개인정보 이용목적 달성 후에는 해당 개인정보를 지체 없이 파기합니다. 단, 내부방침 및 관계법령의 규정에 의하여 보존할 필요가 있는 경우 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.
가. 내부 방침(부정이용기록)
- 보존이유: 기존 구매 상품에 대한 본인 인증 필요성
- 보존항목: 이름, 핸드폰번호, E-MAIL
- 보존기간: 6개월

나. 상법 등 법령에 따라 보존할 필요성이 있는 경우
1) 계약 또는 청약철회 등에 관한 기록
- 보존근거: 전자상거래 등에서의 소비자보호에 관한 법률
- 보존기간: 5년
2) 대금결제 및 재화 등의 공급에 관한 기록
- 보존근거: 전자상거래 등에서의 소비자보호에 관한 법률
- 보존기간: 5년
3) 소비자의 불만 또는 분쟁처리에 관한 기록
- 보존근거: 전자상거래등에서의 소비자보호에 관한 법률
- 보존기간: 3년
4) 웹사이트 방문기록
- 보존근거: 통신비밀보호법
- 보존기간: 3개월
제 4 조 개인정보의 파기절차 및 방법

회원의 개인정보는 원칙적으로 개인정보의 이용목적이 달성될 경우 지체 없이 파기합니다.
다만, 다른 법률에 따라 보존하여야하는 경우에는 그러하지 않습니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.

가. 파기절차
불필요한 개인정보 및 개인정보파일은 개인정보책임자의 책임 하에 내부방침 절차에 따라 다음과 같이 처리하고 있습니다.
- 개인정보의 파기
보유기간이 경과한 개인정보는 종료일로부터 지체 없이 파기합니다.
- 개인정보파일의 파기
개인정보파일의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보파일이 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 지체 없이 그 개인정보파일을 파기합니다.

나. 파기방법
1) 전자적 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.
2) 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
제 5 조 비회원 개인정보보호

가. 타이소는 비회원 구매일 때에도 구매, 대금결제, 예약확인 및 조회, 실명여부 확인을 하는 데 필요한 개인정보만을 요청합니다. 이때 해당 정보는 대금결제 및 구매 관련 된 용도로 사용되며 그 밖의 용도로는 절대 사용되지 않습니다.

나. 비회원의 개인정보 수집/이용 목적 및 항목
•구매자 및 사용자 성명, 본인인증 값 : 본인확인,연령제한 서비스 이용제공
•구매자 및 사용자 휴대전화번호, 이동전화번호, 이메일(E-mail) : 구매자와 판매자 간 거래의 원활한 진행, 본인의사의 확인, 불만처리, 새로운 정보와 고지사항의 안내 등
•은행계좌정보, 신용카드정보 : 대금결제서비스 제공 등
•아이피 주소(IP address), 방문일시 : 부정 이용방지, 전자금융거래기록보관
•성명, 본인인증 값(CI), 주소, 휴대전화번호, 이메일(E-mail), 아이피 주소(IP address), 수취인 정보(성명, 연락처, 주소, 이메일주소), 신용카드번호 : 부정거래 방지

다. 비회원으로 서비스를 이용할 때에는 회원에게만 적용 되는 사항을 제외한 나머지 부분에 대하여는 회원과 동일하게 타이소 개인정보취급방침이 적용됩니다. (개인정보 보유 및 이용기간 등 )

라. 타이소는 비회원의 개인정보도 회원과 동등한 수준으로 보호합니다.
제 6 조 개인정보의 제3자 제공

가. 타이소는 원칙적으로 수집 및 이용목적 범위를 넘어 회원의 개인정보를 제3자에게 제공하지 않습니다.
나. 다만 원활한 서비스 제공을 위해 상품 구매 시 서비스 제공 업체로 회원의 개인정보제공(제 3자 제공)이 필요합니다. 이 경우 관련법령에서 요구하는 사항을 회원에게 안내하고 사전 동의를 구하겠습니다.
다. 또한 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우 회원의 개인정보를 제공할 수 있습니다.
라. 상품 구매 시 제 3자 제공에 동의한 경우, 해당 서비스 제공 업체에 아래의 개인정보가 제공됩니다.
							
							</div>
						</ul>
					</div>
					</form>

					<form action="./MemberJoin.me"  method="post" name="thisForm" onsubmit="return chk();">
					
					<div class="formbold-checkbox-wrapper">
						<label for="supportCheckbox" class="formbold-checkbox-label">
							<div class="formbold-relative">
								<input type="checkbox" name="mem_accept_sns" id="supportCheckbox" class="formbold-input-checkbox" />
							
							<div class="formbold-checkbox-inner">
								<span class="formbold-opacity-0"> 
								<svg width="11" height="8" viewBox="0 0 11 8" class="formbold-stroke-current" fill="none" xmlns="http://www.w3.org/2000/svg">
                				<path d="M8.81868 0.688604L4.16688 5.4878L2.05598 3.29507C1.70417 2.92271 1.1569 2.96409 0.805082 3.29507C0.453266 3.66742 0.492357 4.24663 0.805082 4.61898L3.30689 7.18407C3.54143 7.43231 3.85416 7.55642 4.16688 7.55642C4.47961 7.55642 4.79233 7.43231 5.02688 7.18407L10.0696 2.05389C10.4214 1.68154 10.4214 1.10233 10.0696 0.729976C9.71776 0.357624 9.17049 0.357625 8.81868 0.688604Z" fill="white" />
                				</svg>
								</span>
							</div>
							</div> 회원가입 약관을 모두 확인했습니다.

						</label>
						<button type="submit" class="formbold-btn">가입하기</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- 본문 끝 -->
	
<!-- 본문 css -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'InfinitySans-RegularA1';
	font-weight: normal;
    font-style: normal;
}

.formbold-main-wrapper {
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 48px;
}

.formbold-form-wrapper {
	margin: 0 auto;
	max-width: 800px;
	width: 100%;
	background: white;
}

.formbold-event-wrapper span {
	font-weight: 500;
	font-size: 16px;
	line-height: 24px;
	letter-spacing: 2.5px;
	color: #6a64f1;
	display: inline-block;
}

.formbold-event-wrapper h3 {
	font-weight: 700;
	font-size: 28px;
	line-height: 34px;
	color: #07074d;
	width: 60%;
	margin-bottom: 15px;
}

.formbold-event-wrapper h4 {
	font-weight: 600;
	font-size: 20px;
	line-height: 24px;
	color: #07074d;
	width: 60%;
	margin: 25px 0 15px;
}

.formbold-event-wrapper p {
	font-size: 16px;
	line-height: 24px;
	color: #536387;
}

.formbold-event-details {
	background: #fafafa;
	border: 1px solid #dde3ec;
	border-radius: 5px;
	margin: 25px 0 30px;
}

.formbold-event-details h5 {
	color: #07074d;
	font-weight: 600;
	font-size: 16px;
	line-height: 24px;
	padding: 8px 20px;
	margin-top: 10px
}

.formbold-event-details ul {
	border-top: 1px solid #edeef2;
	padding: 20px;
	margin: 0;
	list-style: none;
	display: flex;
	flex-wrap: wrap;
	row-gap: 14px;
	color: #536387;
	font-size: 12px;
	width: 100%;
	display: flex;
	align-items: center;
	gap: 10px;
}

.formbold-event-details ul li {
	color: #536387;
	font-size: 12px;
	line-height: 24px;
	width: 100%;
	display: flex;
	align-items: center;
	gap: 10px;
}

.formbold-event-details ol {
	border-top: 1px solid #edeef2;
	padding: 40px;
	margin: 0;
	list-style: none;
	display: flex;
	flex-wrap: wrap;
	row-gap: 14px;
	line-height: 35px;
	font-size: 14px;
}

.formbold-form-title {
	color: #07074d;
	font-weight: 600;
	font-size: 28px;
	line-height: 35px;
	width: 60%;
	margin-bottom: 30px;
}

.formbold-input-flex {
	display: flex;
	gap: 20px;
	margin-bottom: 15px;
}

.formbold-input-flex>div {
	width: 50%;
}

.formbold-form-input {
	text-align: center;
	width: 100%;
	padding: 13px 22px;
	border-radius: 5px;
	border: 1px solid #dde3ec;
	background: #ffffff;
	font-weight: 500;
	font-size: 16px;
	color: #536387;
	outline: none;
	resize: none;
}

.formbold-form-input:focus {
	border-color: #6a64f1;
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-form-label {
	color: #536387;
	font-size: 14px;
	line-height: 24px;
	display: block;
	margin-bottom: 10px;
}

.formbold-policy {
	font-size: 14px;
	line-height: 24px;
	color: #536387;
	width: 70%;
	margin-top: 22px;
}

.formbold-policy a {
	color: #6a64f1;
}

.formbold-btn {
	text-align: center;
	width: 100%;
	font-size: 16px;
	border-radius: 5px;
	padding: 14px 25px;
	border: none;
	font-weight: 500;
	background-color: #1089FF;
	color: white;
	cursor: pointer;
	margin-top: 25px;
}

.formbold-btn:hover {
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-img {
	margin-bottom: 40px;
}

.formbold-input-flex {
	display: flex;
	gap: 20px;
	margin-bottom: 30px;
}

.formbold-input-flex>div {
	width: 50%;
}

.formbold-form-input {
	width: 100%;
	padding: 13px 22px;
	border-radius: 5px;
	border: 1px solid #dde3ec;
	background: #ffffff;
	font-weight: 500;
	font-size: 16px;
	color: #536387;
	outline: none;
	resize: none;
}

.formbold-form-input:focus {
	border-color: #6a64f1;
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-form-label {
	color: #536387;
	font-weight: 500;
	font-size: 14px;
	line-height: 24px;
	display: block;
	margin-bottom: 10px;
}

#supportCheckbox:checked ~ div span {
	opacity: 1;
}

#supportCheckbox:checked ~ div {
	background: #1089FF;
	border-color: #1089FF;
}

.formbold-checkbox-label {
	display: flex;
	cursor: pointer;
	user-select: none;
	font-size: 16px;
	line-height: 24px;
	color: #536387;
}

.formbold-checkbox-label a {
	margin-left: 5px;
	color: #1089FF;
}

.formbold-input-checkbox {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	white-space: nowrap;
	border-width: 0;
}

.formbold-checkbox-inner {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 20px;
	height: 20px;
	margin-right: 14px;
	margin-top: 2px;
	border: 0.7px solid #dde3ec;
	border-radius: 3px;
}

.formbold-form-title {
	margin-bottom: 40px;
}

.formbold-form-title h3 {
	color: #07074D;
	font-weight: 700;
	font-size: 35px;
	line-height: 35px;
	margin-bottom: 70px;
	margin-left: 10px
}

.height_scroll{
 height:200px;
 overflow-x:hidden; 
 overflow-y:auto; 
 white-space:pre-wrap;
 line-height: 1.4;
}


.swal2-title {
    position: relative;
    max-width: 100%;
    margin: 0;
    padding: 0.8em 1em 0;
    color: inherit;
    font-size: 20PX;
    font-weight: 600;
    text-align: center;
    text-transform: none;
    word-wrap: break-word;
}

.swal2-styled.swal2-confirm {
    border: 0;
    border-radius: 0.25em;
    background: initial;
    background-color: #1089FF;
    color: #fff;
    font-size: 1em;
}
  

</style>
<!-- 본문 css -->

<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 끝 -->

	<!-- loader -->
	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px"> 
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
		</svg>
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>