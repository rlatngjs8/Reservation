<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
  <meta charset="utf-8" />
  <!-- 결제위젯 SDK 추가 -->
  <script src="https://js.tosspayments.com/v1/payment-widget"></script>
</head>
<body>
  	<p>Date: <c:out value="${arrayDate}" /></p>
	<p>Start Time: <c:out value="${arrayStartTime}" /></p>
	<p>End Time: <c:out value="${arrayEndTime}" /></p>
	<p>Added Price: <c:out value="${arrayAddedPrice}" /></p>
<!-- 	 여기부터는 토스뱅크api -->
  <!-- 결제위젯, 이용약관 영역 -->
  <div id="payment-method"></div>
  <div id="agreement"></div>
  <!-- 결제하기 버튼 -->
  <button id="payment-button">결제하기</button>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
	function getCookie(name) {
    const cookieValue = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
    return cookieValue ? JSON.parse(cookieValue[2]) : null;
}

const arrayDate = getCookie("arrayDate");
const arrayStartTime = getCookie("arrayStartTime");
const arrayEndTime = getCookie("arrayEndTime");
const arrayAddedPrice = getCookie("arrayAddedPrice");

// 읽어온 데이터 사용
console.log(arrayDate);
console.log(arrayStartTime);
console.log(arrayEndTime);
console.log(arrayAddedPrice);

  
  
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
      { value: 12398712025742395 },
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
  </script>
</body>