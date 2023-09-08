<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
  <meta charset="utf-8" />
  <!-- 결제위젯 SDK 추가 -->
  <script src="https://js.tosspayments.com/v1/payment-widget"></script>
</head>
<style>
/* 공통 스타일 */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

h1 {
    text-align: center;
}

/* 예약 섹션 스타일 */
.reservation-section {
    background-color: #f7f7f7;
    padding: 20px;
    margin: 20px;
    border: 1px solid #ddd;
}

.reservation-section h2 {
    font-size: 24px;
    margin-bottom: 10px;
}

/* 예약 정보 컨테이너 스타일 */
.reservation-container {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: center; /* 수평 가운데 정렬 */
    gap: 20px;
}

/* 예약 정보 아이템 스타일 */
.reservation-item {
    background-color: #fff;
    padding: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    width: 300px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.space-image img {
    max-width: 100%;
    height: auto;
}

.total-price-row {
    text-align: center;
    font-size: 20px;
    margin-top: 20px;
}

.payment-button {
    display: block;
    margin: 20px auto;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    font-size: 18px;
    cursor: pointer;
}

/* 서비스 동의 체크박스 스타일 */
label {
    display: block;
    margin-top: 10px;
}

input[type="checkbox"] {
    margin-right: 10px;
}

/* 예약공간 섹션 스타일 */
.reservation-section {
    text-align: center;
    padding: 20px;
}

/* 예약 공간 아이템 스타일 */
.reservation-item {
    display: flex; /* Flexbox 레이아웃 사용 */
    justify-content: center; /* 수평 가운데 정렬 */
    align-items: center; /* 수직 가운데 정렬 */
    border: 1px solid #ccc;
    padding: 10px;
    margin: 10px;
    width: 90%; /* 최대 너비를 100%로 설정하여 부모 너비에 맞추기 */
    box-sizing: border-box; /* 내부 패딩과 테두리 포함한 전체 너비 설정 */
}

.product-image img {
    max-width: 600px; /* 이미지 최대 너비 설정 */
    height: auto;
    margin-right: 20px; /* 이미지와 텍스트 사이 여백 설정 */
    margin-left: 20px
}

.product-details {
    flex-grow: 1; /* 텍스트 영역이 남은 공간 모두 차지 */
}

.product-description {
    font-style: italic;
    word-wrap: break-word;
	width: auto;
	height: auto;
}

/* 제목 스타일 */
.product-name {
    font-size: 20px;
    font-weight: bold;
}

/* 정보 스타일 */
.product-info {
    font-size: 14px;
    color: #888;
}

.description {
    font-size: 20px; /* 텍스트 크기 */
    line-height: 1.5; /* 행간 설정 */
    margin: 13px; /* 하단 여백 설정 */
    text-align: left;
    white-space: pre-line; /* 텍스트 넘칠 시 자동 줄 바꿈 활성화 */ 
}
/* 아코디언 아이템의 헤더 스타일 */
.accordion-header {
    display: flex;
    align-items: center;
    cursor: pointer;
}

.accordion-header label {
    flex-grow: 1;
}

.accordion-icon {
    font-size: 20px;
    margin-left: 10px;
    transition: transform 0.3s ease;
}

/* 아코디언 아이콘을 회전하여 위로 향하도록 설정 */
.accordion-item.expanded .accordion-icon {
    transform: rotate(180deg);
}

/* 아코디언 아이템의 내용을 초기에 숨김 */
.accordion-content {
    display: none;
}


</style>
<body>
    <h1>예약 정보</h1>

    <!-- 예약공간 -->
    <section class="reservation-section">
        <h2>예약공간</h2>
		<div id="reservation_space" class="reservation-container">
		    <!-- 예약 공간 아이템 시작 -->
		 <!--  <div class="reservation-item">
		        <div class="product-image">
		            <img src="상품이미지URL" alt="상품 이미지">
		        </div>
		        <div class="product-details">
		            <h3 class="product-name">상품 이름</h3>
		            <p class="product-description"></p>
		            <p class="product-info">공간 유형: 예약인원: </p>
		        </div>
		    </div>
		    -->
		</div>
    </section>

    <!-- 예약정보 -->
    <section class="reservation-section">
        <h2>예약정보</h2>
        <div id="reservation_info" class="reservation-container">
            <!-- 예약 정보가 여기에 동적으로 추가됩니다 -->
        </div>
    </section>

    <!-- 예약시 주의사항 -->
    <section class="reservation-section">
        <h2>예약시 주의사항</h2>
        <p>여기에 예약시 주의사항을 나열하세요.</p>
    </section>

    <!-- 서비스 동의 -->
	<section class="reservation-section">
	    <h2>서비스 동의</h2>
	    <div class="accordion">
	        <div class="accordion-item">
	            <label for="service_agreement" class="accordion-label">
	                <input type="checkbox" id="service_agreement" name="service_agreement">
	                <span>위 공간의 예약조건 확인 및 결제진행 동의(필수)</span>
	            </label>
	        </div>
	        <!-- 나머지 아코디언 아이템들도 동일하게 추가 -->
	        <div class="accordion-item">
	            <label for="third_party_agreement" class="accordion-label">
	                <input type="checkbox" id="third_party_agreement" name="third_party_agreement">
	                <span>개인정보 제3자 제공 동의(필수)</span>
	                <span class="accordion-icon">&#9660;</span> <!-- 아래쪽 화살표 아이콘 -->
	            </label>
	            <div class="accordion-content1">
	                <!-- 이용약관 내용을 여기에 추가 -->
	            </div>
	        </div>
	        <div class="accordion-item">
	            <label for="privacy_agreement" class="accordion-label">
	                <input type="checkbox" id="privacy_agreement" name="privacy_agreement">
	                <span>개인정보 수집 및 이용 동의(필수)</span>
	                <span class="accordion-icon">&#9660;</span> <!-- 아래쪽 화살표 아이콘 -->
	            </label>
	            <div class="accordion-content2">
	                <!-- 이용약관 내용을 여기에 추가 -->
	            </div>
	        </div>
	    </div>
	</section>

    <p class="total-price-row">총 가격: <span id="total_price">0원</span></p>
    <button id="payment_button" class="payment-button">결제</button>
</body>
		
    <!-- 여기부터는 토스뱅크 API -->
    <!-- 결제위젯, 이용약관 영역 -->
    <div id="payment-method"></div>
    <div id="agreement"></div>
    <!-- 결제하기 버튼 -->
    <button id="payment-button">결제하기</button>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
	
    const clientKey = "test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq"
    const customerKey = "n9F7WOOedw7z_QeYrtqoK" // 내 상점에서 고객을 구분하기 위해 발급한 고객의 고유 ID
    const button = document.getElementById("payment-button")

    // ------  결제위젯 초기화 ------ 
    // 비회원 결제에는 customerKey 대신 ANONYMOUS를 사용하세요.
    const paymentWidget = PaymentWidget(clientKey, customerKey) // 회원 결제
    // const paymentWidget = PaymentWidget(clientKey, PaymentWidget.ANONYMOUS) // 비회원 결제

    // ------  결제위젯 렌더링 ------ 
    // 결제수단 UI를 렌더링할 위치를 지정합니다. `#payment-method`와 같은 CSS 선택자와 결제 금액 객체를 추가하세요.
    // DOM이 생성된 이후에 렌더링 메서드를 호출하세요.
    // https://docs.tosspayments.com/reference/widget-sdk#renderpaymentmethods선택자-결제-금액-옵션
    paymentWidget.renderPaymentMethods(
      "#payment-method", 
      { value: '100000000000000' },
      { variantKey: "DEFAULT" } // 렌더링하고 싶은 결제 UI의 variantKey
    )

    // ------  이용약관 렌더링 ------
    // 이용약관 UI를 렌더링할 위치를 지정합니다. `#agreement`와 같은 CSS 선택자를 추가하세요.
    // https://docs.tosspayments.com/reference/widget-sdk#renderagreement선택자
    paymentWidget.renderAgreement('#agreement')

    // ------ '결제하기' 버튼 누르면 결제창 띄우기 ------
    // 더 많은 결제 정보 파라미터는 결제위젯 SDK에서 확인하세요.
    // https://docs.tosspayments.com/reference/widget-sdk#requestpayment결제-정보
    button.addEventListener("click", function () {
      paymentWidget.requestPayment({
        orderId: "txx-WJ69l6_ui2c_gRcI-",            // 주문 ID(직접 만들어주세요)
        orderName: "때려치자~",                 // 주문명
        successUrl: "https://my-store.com/success",  // 결제에 성공하면 이동하는 페이지(직접 만들어주세요)
        failUrl: "https://my-store.com/fail",        // 결제에 실패하면 이동하는 페이지(직접 만들어주세요)
        customerEmail: "customer123@gmail.com",
        customerName: "김토스"
      })
    })
    
    
    $(document).ready(function() {
    	get_temp_reservation();
    	get_terms_of_use();
    	$('.read-more-label').click(function() {
            var content = $(this).closest('.accordion-item').find('.accordion-content');
            if (content.is(':hidden')) {
                // 내용이 숨겨져 있을 때 버튼을 누르면 내용을 보여줍니다.
                content.slideDown();
            } else {
                // 내용이 보여져 있을 때 버튼을 누르면 내용을 숨깁니다.
                content.slideUp();
            }
        });
	});
	    
    
function get_temp_reservation() {
    console.log('임시예약 데이터 불러옴');
    $.ajax({
        url: '/get_temp_reservation',
        data: {},
        type: 'post',
        dataType: 'json',
        success: function (data) {
            console.log(data);
            $("#shopping_basket").empty();
            
            // 변수를 초기화하여 총 가격을 저장할 변수 생성
            let total_price = 0;

            // 임시 예약 데이터를 HTML로 변환하여 표시
            for (let i = 0; i < data.length; i++) {
                const dayOfWeek = getDayOfWeek(data[i]['reservation_date']);
                let reservationItemHtml = 
                	 '<div class="reservation-item">' +
                     '    <div class="product-image">' +
                     '        <img src="img/' + data[i]['img1'] + '" alt="' + data[i]['space_name'] + ' 이미지">' +
                     '    </div>' +
                     '    <div class="product-details">' +
                     '        <h3 class="product-name">' + data[i]['space_name'] + '</h3>' +
                     '       <div class="description"> <p class="product-description">' + data[i]['description'].split('[시간 엄수]')[0] + '</p></div>' + 
                     '        <p class="product-info">공간 유형: ' + data[i]['space_type'] + '</p>' +
                     '    </div>' +
                     '</div>';  
                const reservationInfoHtml =
                     '<div class="reservation-item">' +
                     '    <p>예약날짜: ' + data[i]['reservation_date'] + ' (' + dayOfWeek + ') ' + data[i]['start_time'] + "시" +  ' ~ ' + data[i]['end_time'] + "시" + '</p>' +
                     '    <p>최대인원: ' + data[i]['capacity'] + "명 </p>" + 
                     '</div>';
                     
                $('#reservation_space').append(reservationItemHtml);
                $('#reservation_info').append(reservationInfoHtml);
            }
            
        }
    });
}

function get_terms_of_use() {
    console.log('이용약관 불러옴');
    $.ajax({
        url: '/get_terms_of_use',
        data: {},
        type: 'post',
        dataType: 'json',
        success: function (data) {
        	console.log(data);
            // 이용약관 내용을 가져와서 아코디언 아이템에 추가
            for (let i = 1; i <= 2; i++) {
                const accordionContent = data[i]['personal_information'];
            	console.log(accordionContent);
                const accordionItem = $("#accordion-content" + i);
                accordionItem.empty().append("<p>" + accordionContent + "</p>");
            }
        }
    });
}


function getDayOfWeek(dateString) {
    // 날짜 문자열을 Date 객체로 변환
    const date = new Date(dateString);

    // Date 객체에서 요일을 가져옴 (0: 일요일, 1: 월요일, ..., 6: 토요일)
    const days = ["일", "월", "화", "수", "목", "금", "토"];
    const dayOfWeek = days[date.getDay()];

    return dayOfWeek;
}




  </script>
</body>