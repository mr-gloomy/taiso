jQuery(document).ready(function(){

	if($("#go_r02").length){
		initIframeCal(); // 실시간 예약 달력
	}

    /*
        * 실시간 예약 플로우 표시
    */
    var li_length = $(".r-header-nav li").length; // li의 총 갯수
    for(var i=0; i<li_length; i++){
        if($('.r-header-nav li:eq('+i+')').hasClass('active')){ // 현재 active가 있는 li를 검색
            for(var j=0; j<i; j++){
                $('.r-header-nav li:eq('+j+')').find('.nav-ico').css({"background-color":"#C8C8C8"});
            }
        }
    }

    /*
        * 이전으로 돌아가기
        * 차량선택(r02) -> 날짜선택(r01)
    */
    $("#return_r01").click(function(){
        window.location.replace(base_url+"home/reservation/view/1");
    });

    $("#return_r02").click(function(){
        window.location.replace(base_url+"home/reservation/view/2");
    });

    /*
        * 실시간 예약 데이터 연동 테이블
    */
     $(".r-horizon-button").click(function(){
        if( $(this).hasClass('active')){ // open
            $(".r-horizon-content").show();
            $(".r-horizon").css({"height":"120px"});
            $(this).removeClass('active');
         }
         else { // close
            $(".r-horizon-content").hide();
            $(".r-horizon").css({"height":"3px"});
            $(this).addClass('active');
         }
    });


    /*
		페이지 데이터 연동 세션
    */
    $(".select").change(function(){
    	var tg = $(this);
    	var tg_id = tg.attr("id");
    	var tg_val = tg.val();

    	switch (tg_id) {
    		case "rental_branch":{ // 대여지점
    			$("#h-rental_branch").text(tg_val);
    			break;
    		};
    		default:
    			set_h_data();
    			break;
    	}
    });

	/*
		* 날짜 선택 페이지(r01)
        * 대여 지점/대여날짜/대여시간 입력
        * 날짜 하루 선택도 추가
	*/
    $("#go_r02").on('click', debounce(function(event){
		var sDate = g_arr.dash_sDate +' '+$("#rental_s_time option:selected").val()+':'+$("#rental_s_min option:selected").val()+':00';
		var eDate = g_arr.dash_eDate +' '+$("#rental_e_time option:selected").val()+':'+$("#rental_e_min option:selected").val()+':00';
		
        var kor_sDate = g_arr.kor_sDate+$("#rental_s_time option:selected").val()+'시 '+$("#rental_s_min option:selected").val()+'분 ~ ';
        var kor_eDate = g_arr.kor_eDate+$("#rental_e_time option:selected").val()+'시 '+$("#rental_e_min option:selected").val()+'분';
        var rTime = {
    		rental_branch:$("#rental_branch option:selected").val(),
    		rental_s_date: sDate,
    		rental_e_date: eDate,
    		h_regDate: $("#h-redDate").text(),
            kor_regDate:kor_sDate+kor_eDate
    	};

        var today = new Date();
        var isMonth = today.getMonth()+1;
        var isDate = today.getDate();
        var isTime = today.getHours();
        var isMin = today.getMinutes();

        if(datepicker.el._data[0] !== undefined){
            var str = (datepicker.el._data[0].getMonth()+1)+''+(datepicker.el._data[0].getDate()); //선택 날짜 스트링
            var str2 = isMonth+''+isDate; // 오늘 날짜 스트링
        }

    	/*
            * 순차 유효성 검사
            * 대여지점 선택 여부
            * (분기) : 날짜 단일 or 레인지?
        */
    	if($("#h-rental_branch").text() == '대여지점을 선택하세요'){
    		alert('대여지점을 선택해주세요.');
    	}
        else if(datepicker.el._data[0] === undefined){
            alert('차량 렌트 날짜를 선택해주세요.');
        }
        else if(date_range === undefined){// 날짜 선택안함
            alert("차량 렌트 날짜를 선택해주세요.");
        }
        else if($("#rental_s_time option:selected").val() == '시간'){
            alert("대여 시/분을 선택해주세요.");
        }
        else if($("#rental_s_min option:selected").val() == '분'){
            alert("대여 시/분을 선택해주세요.");
        }
        else if($("#rental_e_time option:selected").val() =='시간'){
            alert("대여 시/분을 선택해주세요.");
        }
        else if( $("#rental_e_min option:selected").val() =='분'){
            alert("대여 시/분을 선택해주세요.");
        }
        else if(date_range === true){// 레인지 선택
            if(str === str2){
                // 레인지 시작일 : 오늘 O
                if(isTime>$("#rental_s_time option:selected").val()){
                    // 현재 시간 > 시작 시간
                    // alert("대여 시/분을 확인해주세요.");
                    alert('렌트 시작은 현재 시간 이후여야 합니다.');
                }
                else if(isTime==$("#rental_s_time option:selected").val() && isMin>=$("#rental_s_min option:selected").val()){
                    //  현재 시간 == 시작 시간 && 현재 분>= 시작 분
                    alert("대여 시/분을 확인해주세요.");
                }
                else{
                    linkClicks('실시간예약', '버튼클릭', '차량검색버튼클릭'); // 통계 코드(예약)
                    sessionStorage.setItem("rTime", JSON.stringify(rTime));
                    window.location.replace(base_url+"home/reservation/view/2");
                }
            }
            else{
                linkClicks('실시간예약', '버튼클릭', '차량검색버튼클릭'); // 통계 코드(예약)
                // 레인지 시작일 : 오늘 X
                sessionStorage.setItem("rTime", JSON.stringify(rTime));
                window.location.replace(base_url+"home/reservation/view/2");
            }
        }
        else if(date_range === false && str !== str2){
            // 단일 날짜 선택 && 오늘X
            if($("#rental_s_time option:selected").val()>$("#rental_e_time option:selected").val()){
                // 시작 > 반납
                alert("대여 시/분을 확인해주세요.");
            }
            else if($("#rental_s_time option:selected").val() == $("#rental_e_time option:selected").val() && $("#rental_s_min option:selected").val() >= $("#rental_e_min option:selected").val()){
                // 시작 시간 == 반납 시간 && 시작분 >= 반납 분
                alert("대여 시/분을 확인해주세요.");
            }
            else{
                linkClicks('실시간예약', '버튼클릭', '차량검색버튼클릭'); // 통계 코드(예약)
                sessionStorage.setItem("rTime", JSON.stringify(rTime));
                window.location.replace(base_url+"home/reservation/view/2");
            }
        }
        else{
            // 오늘 날짜
            if(isTime>$("#rental_s_time option:selected").val()){
                // 현재 > 시작 && 같아도됨
                alert("렌트 시작은 현재 시간 이후여야 합니다.");
            }
            else if(isTime==$("#rental_s_time option:selected").val() && isMin>=$("#rental_s_min option:selected").val()){
                 // 현재 시간 == 시작 시간 && 현재 분 >= 시작 분
                alert("렌트 시작은 현재 시간 이후여야 합니다.");
            }
            else if($("#rental_s_time option:selected").val()>$("#rental_e_time option:selected").val()){
                // 시작 > 반납
                alert("대여 반납 시간을 확인해주세요.");
            }
            else if($("#rental_s_time option:selected").val() == $("#rental_e_time option:selected").val() && $("#rental_s_min option:selected").val() >= $("#rental_e_min option:selected").val()){
                // 시작 시간 == 반납 시간 && 시작분 >= 반납 분
                alert("대여 시/분을 확인해주세요.");
            }
            else{
                linkClicks('실시간예약', '버튼클릭', '차량검색버튼클릭'); // 통계 코드(예약)
                sessionStorage.setItem("rTime", JSON.stringify(rTime));
                window.location.replace(base_url+"home/reservation/view/2");
            }
        }
	},200));

    /*
        * 날짜 선택 페이지(r01)
        * 대여 지점 연동
    */
    if( $(".r-header-nav li").eq(0).hasClass('active')){
        getRtBranchList();
        $('.r-horizon-button').trigger('click');
    }


	/*
		* 차량 리스트(r02)
        * 차량 리스트 조회
	*/
	if( $(".r-header-nav li").eq(1).hasClass('active')){
    	getCarList(1, 6, ''); // 차량 리스트
    	get_h_data(); // 데이터 연동바
    }

    /*
        * 차량 리스트(r02)
        * 차량 종류 재검색
    */
    $(".r-car-label li").on('click', debounce(function(event){
        var tg_span = $(this).find('span');
        var type = tg_span.data('carType');

        $(".r-car-label > li").removeClass('active');
        $(this).addClass('active');
        $(".r-car-list").empty();

        g_rt_opt.offset = 1;// offset = 1

        getCarList(1, 6, type);
    },200));

    /*
        * 차량 리스트 페이지(r02)
        * 차량 더보기
    */
    $("#more-getCarList").on('click', debounce(function(event){
        var type = $(".r-car-label").find('.active').children('span').data('carType');
        getCarList(g_rt_opt.offset, 6, type);
    },200));

    /*
		* 정보 입력 페이지(r03)
        * 차량 상세정보 조회
    */
    if( $(".r-header-nav li").eq(2).hasClass('active')){
    	get_h_data(); // 데이터 연동바
        totalSum(); // 예상 가격 조회 및 개인정보 입력
    }

    /*
        * 정보 입력 페이지(r03)
        * 예약 정보 전송
        * 유효성 검사 후 데이터 전송
    */
    $("#go_r04").on('click', debounce(function(event){
        if($("#reserve_name").val() == '' || $("#reserve_name").val() == undefined){
            alert("이름을 입력해주세요.");
        }
        else if($("#reserve_phone").val() =='' || $("#reserve_phone").val() == undefined ){
            alert("휴대전화 번호를 입력해주세요.");
        }
        else if(!cnf_phone($("#reserve_phone").val())){
            alert("휴대전화 번호가 유효하지 않습니다.");
        }
        else if($("#r-license option:selected").val() =='null'){
            alert("면허종류를 선택해주세요.");
        }
        else if($("#r-license-number").val() == '' || $("#r-license-number").val() == undefined){
            alert("생년월일 6자리를 입력해주세요.");
        }
        else if($("#r03-agreement").length != $("#r03-agreement").filter(":checked").length){
            alert("개인정보 수집/이용을 동의해주세요.");
        }
        else{
            reservationInsert();
        }
    },200));

    /*
        * 예약정보 확인(r04)
        * [메인으로]
    */
    if($("#go_index").length){
        var final = JSON.parse(sessionStorage.getItem('final'));
        var opt_str ='';

        $("#final_reserve_name").text(final.reserve_name);
        $("#final_reserve_date").text(final.reserve_date+'('+final.reserve_rentDays+'박 '+final.reserve_add_hours+'시간)');
        $("#final_reserve_car").text(final.reserve_car);
        if(final.reserve_opt !='' || final.reserve_opt != undefined || final.reserve_opt !="\"\""){
            $("#final_reserve_opt").text('('+final.reserve_opt+')');
        }
        $("#final_reserve_branch").text(final.reserve_branch);

        if(final.reserve_op !='N'){
            opt_str +='배차,';
        }
        if(final.reserve_rl !='N'){
            opt_str +='회차,';
        }
        opt_str+=final.reserve_insur; // 보험
        $("#final_reserve_optInsur").text(opt_str);
        if(final.reserve_totalSum == 0){
            $("#final_reserve_totalSum").text('가격문의');
        }
        else{
            $("#final_reserve_totalSum").text(numberWithCommas(final.reserve_totalSum)+'원');
        }
    }

    /*
        * 예약 완료 후 메인으로 가기
    */
    $("#go_index").on('click', debounce(function(event){
        window.parent.location.href = base_url;
        $('#modal-reservation', parent.document).fadeOut().removeClass('active'); // 아이프레임 상위 모달 닫기
        $("html, body",  parent.document).css({'overflow':'visible'}).unbind('touchmove'); // 아이폰도 스크롤 해제 성공
        $(".wrap", parent.document).css("overflow","hidden"); // 추가

    },200));

});
var date_range = undefined;

/*
    전역 변수
    1. 데이트 타입(-,/,kor)
    2. 차량 더보기(offset:페이지)
    3. 배/회차
*/

var g_arr = {
    dash_sDate:null,
    dash_eDate:null,
    slash_sDate:null,
    slash_eDate:null,
    kor_sDate:null,
    kor_eDate:null,
};

var g_rt_opt = {
    offset:1,
};

var g_selected = {
    op:false,
    rl:false,
}

/*
    * 실시간 예약 아이프레임 close
*/
$(document).on('click','.r-cancel', function(){

    if(confirm('현재 입력중인 예약 건이 있습니다.\n정말로 종료하시겠습니까?')){
        linkClicks('실시간예약', '버튼클릭', '상단 창닫기 버튼클릭 '); // 통계 코드(예약)
        
        $(".r-wrap").css("display","none");
        $('#modal-reservation', parent.document).parent('body').css({'overflow': 'visible', 'height': '100%'});
        $('#modal-reservation', parent.document).parent('body').parent('html').css({'overflow': 'visible', 'height': '100%'});
        $('#modal-reservation', parent.document).removeClass('active'); // 아이프레임 상위 모달 닫기
    }
});

/*
    * 차량 리스트 페이지(r02)
    * 차량 선택 완료
    * 기본 정보 저장
*/
$(document).on('click touch','.selected-car', function(){
    linkClicks('실시간예약', '버튼클릭', '차량선택버튼클릭'); // 통계 코드(예약)

    var tg = $(this);
    var rTime = JSON.parse(sessionStorage.getItem('rTime'));
    rTime.car_name = tg.closest('.r-row').siblings('.r-car-content').find('.r-car-title p').text();
    rTime.idx =  tg.closest('.r-row').siblings('.r-car-content').find('.r-car-title').data('idx');
    sessionStorage.setItem("rTime", JSON.stringify(rTime));

    getCarInfo(rTime.idx); // 차량 정보 조회
});


/*
    * 차량 리스트 페이지(r02) : 모바일
    * 차량 선택 완료
    * 기본 정보 저장
*/
$(document).on('click touch','.r-car-list li', function(){
    var tg = $(this);
    var rTime = JSON.parse(sessionStorage.getItem('rTime'));

    linkClicks('실시간예약', '버튼클릭', '차량선택버튼클릭'); // 통계 코드(예약)

    if($(".r-wrap").width() < 1023){
        rTime.car_name = tg.find('.r-car-title p').text();
        rTime.idx =  tg.find('.r-car-title').data('idx');
        sessionStorage.setItem("rTime", JSON.stringify(rTime));
        getCarInfo(rTime.idx); // 차량 정보 조회
    }
});

/*
    * 정보 입력 페이지(r03)
    * 1. 배/회차 체크박스
    * 2. 보험 셀렉트박스
*/
$(document).on('change','.change_fee',function(){
    var tg = $(this);
    var tg_id = $(this).attr("id");
    var selected_fee = $("#selectbox_insur option:selected").data("insurFee");

    if(tg.hasClass('checkbox_scv')){
        var tg_checked = $(this).filter(":checked").length;
    }

    switch (tg_id) {
        case "operate_svc_fee_unit":{ //배차
            if(tg.length == tg_checked && $("#op_svc_fee").data('opFee') !=''){
                g_selected.op = true;
            }
            else{
                g_selected.op = false;
            }
            break;
        };
        case "release_svc_fee_unit":{ // 회차
            if(tg.length == tg_checked && $("#rl_svc_fee").data('rlFee') !=''){
                g_selected.rl = true;
            }
            else{
                g_selected.rl = false;
            }
            break;
        };
        case"selectbox_insur":{ // 보험
            break;
        };
         default:
              break;
     }
     setTotalSum(selected_fee, g_selected.op, g_selected.rl); // 가격 계산
});

/*
    * 실시간 예약 플로우
    * 사용자 정보 확인바
*/
function set_h_data(){

    var tm = {
        sT: $("#rental_s_time option:selected").val(),
        sM: $("#rental_s_min option:selected").val(),
        eT: $("#rental_e_time option:selected").val(),
        eM: $("#rental_e_min option:selected").val(),
    };

    // 두 날짜를 모두 선택한 경우 && 날짜선택 페이지만 동작
    if(g_arr.slash_sDate != null && g_arr.slash_eDate != null && $("#go_r02").length){
        var str = g_arr.slash_sDate+' '+tm.sT+':'+tm.sM+' ~ '+g_arr.slash_eDate+' '+tm.eT+':'+tm.eM;
        $("#h-redDate").text(str);

        // 날짜 차이 계산
        var s = new Date(g_arr.dash_sDate);
        s.setHours(tm.sT);
        s.setMinutes(tm.sM);

        var e = new Date(g_arr.dash_eDate);
        e.setHours(tm.eT);
        e.setMinutes(tm.eM);

        var gap_day = (e.getTime()-s.getTime())/1000/60/60/24;

        var gap_time = (e.getTime()-s.getTime())/1000/60/60;
    }
}

/*
    * 실시간 예약 플로우
    * 사용자 정보 확인바
    * 추가 데이터 연동
*/
function get_h_data(){

    var rt = JSON.parse(sessionStorage.getItem('rTime'));

    $("#h-rental_branch").text(rt.rental_branch);
    $("#h-redDate").text(rt.h_regDate);

    // r03 일 경우
    if( $(".r-header-nav li").eq(2).hasClass('active')){
        $("#h-car_name").text(rt.car_name);
    }
};

/*
    * 날짜 선택 페이지(r01)
    * 대여 지점 연동
*/
function getRtBranchList(){
    loading(true);

    $.ajax({
        type: 'GET',
        url: base_url+'api/branch/list?for=reservation',
        success: function(resData) {
            // console.log('success >>>>');
            if(resData.status === true && resData.result.message =="NO DATA"){
                loading(false);
                $('#rental_branch').append('<option id="rental_branch_null" value="대여지점선택"disabled selected hidden>대여지점이 없습니다</option>');
            }
            else if(resData.status === true){
                $('#rental_branch').append('<option id="rental_branch_null" value="대여지점선택"disabled selected hidden>대여지점 선택</option>');
                doneRtBranchList(resData);
            }
        },
        error: function(resData) {
             // console.log(resData);
            alert("불러올 대여지점 데이터가 없거나 네트워크에 문제가 발생했습니다.");
        }
    });
};

/*
    * 날짜 선택 페이지(r01)
    * 대여 지점 출력
*/
function doneRtBranchList(resData){
    loading(false);
    var list ={};
    var res = resData.result.data;
    if(res != undefined){// 지점 리스트 O
        for(var i=0; i<res.length; i++){
            list[i] = '<option>\
                            '+res[i].branch_name+'\
                    </option>';
            $("#rental_branch").append(list[i]);
        }
    }

    if($('#rental_branch option').length == 2){
        $('#h-rental_branch').text(res[0].branch_name);
        $('#rental_branch_null').remove();
    }
};

/*
    * 실시간 예약 차량 리스트 조회(r02)
    * @type : 차량 코드 값 (nullable, null 일시 전체)
    * @offset : 페이지 번호(not null)
    * @limit : 요청 데이터 갯수( not null)
*/ 
function getCarList(offset, limit, car_type){
    loading(true);

    $.ajax({
        type: 'GET',
        url: base_url+'api/rent/car/list?offset='+offset+'&limit='+limit+'&type='+car_type,
        success: function(resData) {
            // console.log('success >>>>');
            if(resData.status === true && resData.result.message =="NO DATA"){
                loading(false);
                $("#more-getCarList").addClass('active'); // 버튼 비활성화

                if(!$(".car-item").length){
                    $(".r-car-list").empty();
                    $(".r-car-list").append('<div class="r-car-no-list">등록된 차량이 없습니다.</div>');
                }
            }
            else if(resData.status === true){
                doneCarList(resData, limit);
            }
        },
        error: function(resData) {
            // console.log('error >>>');
            alert("불러올 데이터가 없거나 네트워크에 문제가 발생했습니다.");
        }
    });
}

/*
    * 실시간 예약 차량 리스트 생성(r02)
    * 섬네일 클릭시 상세 뷰페이지로 이동
*/
function doneCarList(resData, limit){
    var res = resData.result.data;
    var list={};
    loading(false);

    if(res != undefined){// 차량 리스트 O
        for(var i=0; i<res.length; i++){
            /*
                * fee_opt
                * rental_fee : 일반가격
                * rental_fee_12 : 할인가격
                * rental_fee_consultation_inquiry : 가격 사용 안함
            */
            var fee ={
                rental_fee:res[i].rental_fee,
                rental_fee_12: res[i].rental_fee_12,
                inquiry: res[i].rental_fee_consultation_inquiry,

            }

            for(var prop in fee){
                if(fee[prop] != null){
                    fee[prop] = numberWithCommas(fee[prop]);
                }
            }

            /*
                * 옵션 문자열 예외 처리
            */
            if(res[i].rental_opt == null || res[i].rental_opt == 'null'){
                var car_opt = '옵션 없음';
            }
            else{
                var car_opt = res[i].rental_opt;
            }

            list[i] ='<li class="car-item wp-box clearfix" id="car-item-'+res[i].idx+'" data-animate-effect="fadeInUp">\
                        <div class="r-car-img">\
                            <img src="'+base_url+res[i].path+'/'+res[i].thumb_img+'" alt="'+res[i].car_name+'">\
                        </div>\
                        <div class="r-car-content">\
                            <div class="r-car-title-box ellipsis">\
                                <div class="r-car-title" data-idx="'+res[i].idx+'">\
                                    <p>'+res[i].car_name+'</p>\
                                </div>\
                                <div class="r-car-sub ellipsis-line-one">\
                                    <p>'+car_opt+'</p>\
                                </div>\
                            </div>\
                        </div>\
                        <div class="r-row m-float-l">\
                            <div class="r-car-price">\
                                <div class="r-car-price-box clearfix">\
                                    <p class="r-car-price-ori">'+fee.rental_fee+'원</p>\
                                    <p class="r-car-price-sale">'+fee.rental_fee_12+'원</p>\
                                </div>\
                            </div>\
                            <div class="r-car-select">\
                                <button type="button" class="r-btn r-btn-red selected-car">선택</button>\
                            </div>\
                        </div>\
                   </li>';


            $(".r-car-list").append(list[i]); 


            // 가격 사용 안함
            if(fee.inquiry == 'Y' || fee.rental_fee ==''){
                $("#car-item-"+res[i].idx).find('.r-car-price-box').html('<p class="r-car-price-sale">가격문의</p>');
            }
        }

        /*
            * 더보기 전체 갯수로 제어
        */
        if(res.length<limit){ // 리스트 < 리미트 => 다음 데이터 없음
            $("#more-getCarList").addClass('active');// 버튼 비활성화
            g_rt_opt.offset = 1;
        }
        else if(res.length == limit){ // 리스트 == 리미트 => 다음 데이터 존재 가능 확인
            var cnt = $('.car-item').length;
            if(resData.result.total_count == cnt){ // 더보기 X
                $("#more-getCarList").addClass('active');// 버튼 비활성화
                g_rt_opt.offset = 1;
            }
            else{ // 더보기 O
                $("#more-getCarList").removeClass('active');// 버튼 활성화
                g_rt_opt.offset++;
            }
        }

        waypointContent();
    }
    else{ // 차량 리스트 X
        $("#more-getCarList").addClass('active');// 버튼 비활성화
        g_rt_opt.offset = 1;
    }
}

/*
    * 차량 리스트 페이지(r02)
    * 차량 상세정보 조회
    * 세션 저장
*/
function getCarInfo(idx){
    loading(true);
    $.ajax({
        type: 'GET',
        url: base_url+'api/rent/car/detail?idx='+idx+'',
        success: function(resData) {
            // console.log('success >>>>');
            if(resData.status === true && resData.result.message =="NO DATA"){
                loading(false);
                alert("불러올 데이터가 없거나 네트워크에 문제가 발생했습니다.");
            }
            else if(resData.status === true){
                loading(false);
                var rTimeInfo = resData.result.data[0];
                sessionStorage.setItem("rTimeInfo", JSON.stringify(rTimeInfo));
                window.location.replace(base_url+"home/reservation/view/3");
            }
        },
        error: function(resData) {
            // console.log('error >>>');
            loading(false);
            alert("불러올 데이터가 없거나 네트워크에 문제가 발생했습니다.");
        }
    });
}

/*
    * 정보 입력 페이지(r03)
    * 차량 상세정보 조회

    * 값 계산 로직
    * (1)basic_fee(+시간당 추가요금) + (2) 배 / 회차 선택시 가격 + (3)rentDays * 선택 보험

    rentDays => insurRentDays 교체
*/
function totalSum(){
    var rTime = JSON.parse(sessionStorage.getItem('rTime'));
    $.ajax({
        type: 'POST',
        url: base_url+'api/rent/car/totalSum',
        data:{
            ci_t: $("#token").val(),
            car_idx: rTime.idx,
            s_date: rTime.rental_s_date,
            e_date: rTime.rental_e_date,
            operate_svc:'N',
            release_svc:'N'
               },
        success: function(resData) {
            // console.log('success >>>>');
            // console.log(resData);
            if(resData.status === true){
                var rTimeResult = resData.result;
                sessionStorage.setItem("rTimeResult", JSON.stringify(rTimeResult));
                doneTotalSum(resData);
            }
            else if(resData.status === false){
                alert("불러올 데이터가 없거나 네트워크에 문제가 발생했습니다.");
            }
        },
        error: function(resData) {
            // console.log('error >>>');
            alert("불러올 데이터가 없거나 네트워크에 문제가 발생했습니다.");
        }
    });
}

/*
    * 정보 입력 페이지 데이터 수신(r03)
    * 페이지 로딩시 최초 셋팅
*/
function doneTotalSum(resData){
    var res = resData.result;
    var rTimeInfo = JSON.parse(sessionStorage.getItem('rTimeInfo'));
    /*
        * 보험 선택 동적 생성 및 값 추가
    */
    var selected_group = {};
    var selected_arr = new Array(3);
    selected_arr[0] = '"<option id="selected_opt_1">고객부담금 없음</option>");'
    selected_arr[1] = '"<option id="selected_opt_2">고객부담금 10만원</option>");'
    selected_arr[2] = '"<option id="selected_opt_3">고객부담금 30만원</option>");'

    for(var i=1; i<=3; i++){
        if(!rTimeInfo.insur_fee_open_yn.match('0'+i)){
            selected_group[i] = selected_arr[i-1];
            $('#selectbox_insur').append(selected_group[i]);
        }
    }

    if($("#selected_opt_1").length)
        $("#selected_opt_1").data("insurFee",rTimeInfo.insur_fee);
    if($("#selected_opt_2").length)
        $("#selected_opt_2").data("insurFee",rTimeInfo.insur_fee_10);
    if($("#selected_opt_3").length)
        $("#selected_opt_3").data("insurFee",rTimeInfo.insur_fee_30);

    /*
        * 배차/회차(체크박스), 대여료 , 총결제금액 출력
    */
    if(res.operate_svc_fee == 0 || res.operate_svc_fee ==''){
        $("#op_svc_fee").text('없음');
        $("#op_svc_fee").data("op-fee",'');
    }
    else{
        $("#op_svc_fee").text(numberWithCommas(res.operate_svc_fee)+'원');
        $("#op_svc_fee").data("op-fee",res.operate_svc_fee);
    }

    if(res.release_svc_fee == 0 || res.release_svc_fee ==''){
        $("#rl_svc_fee").text('없음');
        $("#rl_svc_fee").data("rl-fee",'');
    }
    else{
        $("#rl_svc_fee").text(numberWithCommas(res.release_svc_fee)+'원');
        $("#rl_svc_fee").data("rl-fee",res.release_svc_fee);
    }

    if(res.basic_fee == 0 || res.basic_fee ==''){
        $("#basic_fee").text('가격문의');
        $("#totalSum").text('가격문의');
        $(".r-total-price.normal-estimate-panel").addClass('active');
        $(".r-total-price.estimate-panel").addClass('active');
        $("#contact_estimate").text("별도 가격 문의");
        var rTimeResult = JSON.parse(sessionStorage.getItem('rTimeResult'));
        rTimeResult.set_total_sum = 0;
        sessionStorage.setItem("rTimeResult", JSON.stringify(rTimeResult));
    }
    else{
        $("#basic_fee").text(numberWithCommas(res.basic_fee)+'원');
        $("#totalSum").text(numberWithCommas(res.basic_fee)+'원');
        var rTimeResult = JSON.parse(sessionStorage.getItem('rTimeResult')); //0123 추가
        rTimeResult.set_total_sum = res.basic_fee;//0123 추가
        sessionStorage.setItem("rTimeResult", JSON.stringify(rTimeResult));//0123 추가

    }
}

/*
    * 사용자 출력 대여요금 박스
    * @selected_insur : 선택 보험
    * @op_svc_fee : 배차
    * @rl_svc_fee : 회차
    * @totalSum : 총 금액
*/
function setTotalSum(selected_insur, op_svc_fee, rl_svc_fee){
    var rTimeInfo = JSON.parse(sessionStorage.getItem('rTimeInfo'));
    var rTimeResult = JSON.parse(sessionStorage.getItem('rTimeResult'));
    var result = {
        basic_fee :rTimeResult.basic_fee,
        rentDays : rTimeResult.rentDays,
        insurRentDays: rTimeResult.insurRentDays,
        insur_sum:'',
        op_svc_fee:'',
        rl_svc_fee:'',
        total_svc:'',
        total_sum:'',
    }

    // 보험 계산
    if($("#selectbox_insur option:selected").val() !='null' ){
        var selected_insur_data = $("#selectbox_insur option:selected").data("insurFee");
        var temp_insur_sum = selected_insur_data*result.insurRentDays;
        result.insur_sum = temp_insur_sum;
        $("#selected_insur_fee").text(numberWithCommas(temp_insur_sum)+'원');
    }else{
        result.insur_sum = '0';
        $("#selected_insur_fee").text('0원');
    }

    // 배-회차
    if(op_svc_fee === true){
        result.op_svc_fee = $("#op_svc_fee").data('opFee');
    }
    else{
        result.op_svc_fee=0;
    }
    if(rl_svc_fee === true){
        result.rl_svc_fee = $("#rl_svc_fee").data('rlFee');
    }
    else{
        result.rl_svc_fee=0;
    }

    result.total_svc = parseInt(result.op_svc_fee)+parseInt(result.rl_svc_fee);
    $("#total_svc_fee").text(numberWithCommas(result.total_svc)+'원');
    if($("#total_svc_fee").text() =='' ||  $("#total_svc_fee").text() =='원'){
        $("#total_svc_fee").text('0원');
    }

    if(result.basic_fee != 0){
        result.total_sum = parseInt(result.basic_fee)+parseInt(result.insur_sum)+parseInt(result.total_svc);
        $("#totalSum").text(numberWithCommas(result.total_sum)+'원');
        rTimeResult.set_total_sum = result.total_sum;
    }
    else if(result.basic_fee == 0){ // 가격 문의
        rTimeResult.set_total_sum = 0;
    }

    sessionStorage.setItem("rTimeResult", JSON.stringify(rTimeResult));
};

/*
    * 예약정보 전송
*/
function reservationInsert(){

    var rTime = JSON.parse(sessionStorage.getItem('rTime'));
    var rTimeInfo = JSON.parse(sessionStorage.getItem('rTimeInfo'));
    var rTimeResult = JSON.parse(sessionStorage.getItem('rTimeResult'));

    var opt = {
        car_type: rTimeInfo.car_type,
        op_fee:'',
        rl_fee:'',
    }
    opt.car_type = swap_carType(opt.car_type); // carType(int) => carType(str)

    if($("#operate_svc_fee_unit").length == $("#operate_svc_fee_unit").filter(":checked").length){
        opt.op_fee = 'Y';
    }
    else{
        opt.op_fee = 'N';
    }
    if($("#release_svc_fee_unit").length == $("#release_svc_fee_unit").filter(":checked").length){
        opt.rl_fee = 'Y';
    }
    else{
        opt.rl_fee = 'N';
    }

    alert("데모 버전에서는 제공하지 않는 기능입니다.");


/***************************************************************
    * 데모 버전에서는 지원하지 않는 기능

    $.ajax({
        type: 'POST',
        url: base_url+'api/rent/reservation/insert',
        data:{
            ci_t: $("#token").val(),
            reserve_name: $("#reserve_name").val(),
            reserve_phone: $("#reserve_phone").val(),
            license_type: $("#r-license option:selected").text(),
            license_valid_date:$("#r-license-number").val() ,
            car_type: opt.car_type,
            car_name: rTimeInfo.car_name,
            rental_branch: rTime.rental_branch,
            rental_s_date: rTime.rental_s_date,
            rental_e_date: rTime.rental_e_date,
            insur_svc: $("#selectbox_insur option:selected").text(),
            operate_svc: opt.op_fee,
            release_svc: opt.rl_fee,
            isMobile: $("body").attr("class"),
            estimate: rTimeResult.set_total_sum,
               },
        success: function(resData) {
            // console.log('success >>>>');
            if(resData.status === true){
                linkClicks('실시간예약', '버튼클릭', '예약신청완료버튼'); // 통계 코드(예약)

                var final = {
                    reserve_name: $("#reserve_name").val(),
                    reserve_date: rTime.kor_regDate,
                    reserve_RentDays: rTimeResult.RentDays, // 박 계산
                    reserve_insurRentDays: rTimeResult.insurRentDays, // 보험 계산
                    reserve_add_hours: rTimeResult.rental_add_hours,
                    reserve_car: rTimeInfo.car_name,
                    reserve_opt: rTimeInfo.rental_opt,
                    reserve_branch: rTime.rental_branch,
                    reserve_op: opt.op_fee,
                    reserve_rl: opt.rl_fee,
                    reserve_insur: $("#selectbox_insur option:selected").text(),
                    reserve_totalSum: rTimeResult.set_total_sum,
                };
                sessionStorage.setItem("final", JSON.stringify(final));
                window.location.replace(base_url+"home/reservation/view/4");
            }
            else{
                alert("전송할 데이터가 없거나 네트워크에 문제가 발생했습니다.\n다시 시도해주세요.");
            }
        },
        error: function(resData) {
            // console.log('error >>>');
            alert("전송할 데이터가 없거나 네트워크에 문제가 발생했습니다.");
        }
    });
***************************************************************/

};

/*
    날짜 선택 달력
*/
function initIframeCal() {

    window.datepicker = new Datepickk();

    /*Set minDate*/
    var today = new Date();
    datepicker.minDate = new Date(today.getFullYear(), today.getMonth(), today.getDate());

    /*Set container*/
    datepicker.container = document.querySelector('#calendar');

    /*Set lang*/
    datepicker.lang = 'kr';
    if( $(".r-wrap").width()<= 1024){
        var highlight = {
            color: '#ffffff',
            background:"#E52F45 url('"+base_url+"/assets/home/reservation/img/icons/ico-r-car-white.png') center center/40% no-repeat",
            backgroundPositionY:'20px !important',
            transform:'scaleX(1) !important',
        };
    }
    else{
        var highlight = {
            color: '#ffffff',
            background:"#E52F45 url('"+base_url+"/assets/home/reservation/img/icons/ico-r-car-white.png') center center/50% no-repeat",
        };
    }

    datepicker.highlight = highlight;
    datepicker.el._data = [];
    datepicker.el._data.push(highlight.start,highlight.end);

    datepicker.show();

    // 날짜 선택 시
    datepicker.onSelect = function(checked) {

        var state = (checked)?'selected':'unselected';

        function reset()
        {
            var highlight = {
                start: new Date(datepicker.el._data[0]),
                end: new Date(datepicker.el._data[1]),
                backgroundColor: '',
                color: '',

                // 0814 하이라이트 수정
                background:'',
                // 0821 추가 수정
                backgroundPositionY:'',
                transform:'',

            };
            datepicker.highlight = highlight;

            datepicker.el._data.length = 0;
            datepicker.unselectAll();

            $('#selectedDate').removeClass('select');

            // 셀렉트 데이트 초기화 및 디폴트 부분
            $('#rental_s_date')[0].innerText = '대여 시작 시간을 선택하세요';
            $('#rental_e_date')[0].innerText = '대여 반납 시간을 선택하세요';
            $("#h-redDate").text('대여일을 선택하세요');
        }

        if (checked) {
            if (!datepicker.el._data) {
                datepicker.el._data = [];
            }

            datepicker.el._data.push(this);

            // 두 날짜 이후 새로운 날짜 선택시
            if (datepicker.el._data.length == 3) {
                reset();
                datepicker.selectDate(this);
            }
            // 두개의 날자 선택 시
            else if (datepicker.el._data.length == 2) {

                // 두 날짜간의 시간차
                var days = (new Date(datepicker.el._data[1]) - new Date(datepicker.el._data[0]))/1000/60/60/24;

                // 두번째 날짜가 과거일 경우
                if (days < 0) {
                    reset();
                    datepicker.selectDate(this);
                }
                else {
                    if( $(".r-wrap").width()<= 1024){
                        var highlight = {
                            start: new Date(datepicker.el._data[0]),
                            end: new Date(datepicker.el._data[1]),
                            color: '#ffffff',
                            background:"#E52F45 url('"+base_url+"/assets/home/reservation/img/icons/ico-r-car-white.png') 50% 32%/26px auto no-repeat",
                        };
                    }// 태블릿용 하이라이트 추가하기
                    else{
                        var highlight = {
                            start: new Date(datepicker.el._data[0]),
                            end: new Date(datepicker.el._data[1]),
                            color: '#ffffff',
                            background:"#E52F45 url('"+base_url+"/assets/home/reservation/img/icons/ico-r-car-white.png')  50% 32%/25px auto no-repeat",
                        };
                    }
                    datepicker.highlight = highlight;

                    $('#selectedDate').addClass('select');

                    
                    // 세션스토리지, 호라이즌바, p 태그 출력 3가지 필요
                    // 대여, 반납 시간 필드(P)
                    $("#rental_s_date")[0].innerText = datepicker.el._data[0].getFullYear()+'년 '+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'월'+("0"+(datepicker.el._data[0].getDate())).slice(-2)+'일';
                    $("#rental_e_date")[0].innerText = datepicker.el._data[1].getFullYear()+'년 '+("0"+(datepicker.el._data[1].getMonth()+1)).slice(-2)+'월'+("0"+(datepicker.el._data[1].getDate())).slice(-2)+'일';

                    // 세션 스토리지
                    g_arr.dash_sDate = datepicker.el._data[0].getFullYear()+'-'+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'-'+("0"+(datepicker.el._data[0].getDate())).slice(-2);
                    g_arr.dash_eDate = datepicker.el._data[1].getFullYear()+'-'+("0"+(datepicker.el._data[1].getMonth()+1)).slice(-2)+'-'+("0"+(datepicker.el._data[1].getDate())).slice(-2);


                    // kor_세션스토리지_r04 사용
                    g_arr.kor_sDate = datepicker.el._data[0].getFullYear()+'년 '+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'월 '+("0"+(datepicker.el._data[0].getDate())).slice(-2)+'일 ';
                    g_arr.kor_eDate = datepicker.el._data[1].getFullYear()+'년 '+("0"+(datepicker.el._data[1].getMonth()+1)).slice(-2)+'월 '+("0"+(datepicker.el._data[1].getDate())).slice(-2)+'일 ';

                    // 페이지 데이터 연동 출력
                    g_arr.slash_sDate = datepicker.el._data[0].getFullYear()+'/'+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'/'+("0"+(datepicker.el._data[0].getDate())).slice(-2);
                    g_arr.slash_eDate = datepicker.el._data[1].getFullYear()+'/'+("0"+(datepicker.el._data[1].getMonth()+1)).slice(-2)+'/'+("0"+(datepicker.el._data[1].getDate())).slice(-2);
                    set_h_data();
                    date_range = true;
                }
            }
            else{
                /*
                    * 하루만 날짜 선택 가능을 추가함
                */
                // 세션스토리지, 호라이즌바, p 태그 출력 3가지 필요
                // 대여, 반납 시간 필드(P)
                $("#rental_s_date")[0].innerText = datepicker.el._data[0].getFullYear()+'년 '+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'월'+("0"+(datepicker.el._data[0].getDate())).slice(-2)+'일';
                $("#rental_e_date")[0].innerText = datepicker.el._data[0].getFullYear()+'년 '+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'월'+("0"+(datepicker.el._data[0].getDate())).slice(-2)+'일';

                // 세션 스토리지
                g_arr.dash_sDate = datepicker.el._data[0].getFullYear()+'-'+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'-'+("0"+(datepicker.el._data[0].getDate())).slice(-2);
                g_arr.dash_eDate = datepicker.el._data[0].getFullYear()+'-'+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'-'+("0"+(datepicker.el._data[0].getDate())).slice(-2);


                // kor_세션스토리지_r04 사용
                g_arr.kor_sDate = datepicker.el._data[0].getFullYear()+'년 '+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'월 '+("0"+(datepicker.el._data[0].getDate())).slice(-2)+'일 ';
                g_arr.kor_eDate = datepicker.el._data[0].getFullYear()+'년 '+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'월 '+("0"+(datepicker.el._data[0].getDate())).slice(-2)+'일 ';

                // 페이지 데이터 연동 출력
                g_arr.slash_sDate = datepicker.el._data[0].getFullYear()+'/'+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'/'+("0"+(datepicker.el._data[0].getDate())).slice(-2);
                g_arr.slash_eDate = datepicker.el._data[0].getFullYear()+'/'+("0"+(datepicker.el._data[0].getMonth()+1)).slice(-2)+'/'+("0"+(datepicker.el._data[0].getDate())).slice(-2);
                set_h_data();
                date_range = false;

                // console.log( (datepicker.el._data[0].getMonth()+1) );
                // console.log( (datepicker.el._data[0].getDate())  );
            }
        }
        else {
            // 기존에 선택되어 있던 날짜가 있는 상태에서 취소가 들오온다는건 해당 날짜를 다시 누른경우
            if (datepicker.el._data.length == 2) {
                reset();
                datepicker.selectDate(this);
            }
            else if (datepicker.el._data.length == 1) {
                reset();
                datepicker.selectDate(this);
            }
        }
    };
}
