<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
  <meta charset="utf-8" />
  <!-- 결제위젯 SDK 추가 -->
  <script src="https://js.tosspayments.com/v1/payment-widget"></script>
</head>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
        }

        h1 {
            margin: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .total-price {
            text-align: right;
            font-weight: bold;
            font-size: 1.2em;
            margin: 20px;
        }
        .selected-row {
        background-color: #e0e0e0;
    	}
        
	
</style>
<body>
    <table>
        <thead>
            <tr>
                <th>전체</th>
                <th>상품명</th>
                <th>판매가</th>
                <th>입실시간</th>
                <th>퇴실시간</th>
                <th>주문관리</th>
            </tr>
        </thead>
        <tbody id="shopping_basket">
            <!-- 상품 정보 들어가는 곳 -->
        </tbody>
    </table>
    <button id='btnDelete'>삭제</button> <!-- 버튼 ID 수정 -->
    <div class="total-price">총 가격: 105,000원</div>

    <!-- 여기부터는 토스뱅크 API -->
    <!-- 결제위젯, 이용약관 영역 -->
    <div id="payment-method"></div>
    <div id="agreement"></div>
    <!-- 결제하기 버튼 -->
    <button id="payment-button">결제하기</button>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            get_temp_reservation();
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
                    for (let i = 0; i < data.length; i++) {
                        let temp_data =
                            "<tr>" + // 체크박스 추가
                            "<td>" + "1" + "</td>" +
                            "<td>" + data[i]['space_name'] + "</td>" +
                            "<td>" + data[i]['total_price'] + "</td>" +
                            "<td>" + data[i]['start_time'] + "시" + "</td>" +
                            "<td>" + data[i]['end_time'] + "시" + "</td>" +
                            "<td><input type='checkbox' id='" + data[i]['reservation_id'] +
                            "' name='" + data[i]['reservation_id'] + "' value='" + data[i]['reservation_id'] +
                            "' style='width: 20px; height: 20px;' class='select-checkbox'></td>" + // 체크박스 크기 설정
                            "</tr>";
                        $('#shopping_basket').append(temp_data);
                    }
                }
            });
        }

        $(document).on('click', '.select-checkbox', function () {
            $(this).closest('tr').toggleClass('selected-row');
        });

        $('#btnDelete').click(function () {
            var selectedRows = $('.selected-row');
            console.log("selectedRows", selectedRows);

            if (selectedRows.length === 0) {
                alert("삭제할 예약을 선택하세요.");
                return;
            }

            var confirmDelete = confirm("선택한 예약을 정말로 삭제하시겠습니까?");
            if (confirmDelete) {
                selectedRows.each(function () {
                    var currentRow = $(this); // 현재 행 저장
                    var reservation_id = currentRow.find('input[type="checkbox"]').val(); // 예약 ID 가져오기
                   // console.log("Deleting reservation_id", reservation_id);
                    
                    $.ajax({
                        url: "/delete_temp_reservation",
                        data: { reservation_id: reservation_id },
                        type: 'post',
                        success: function (data) {
                        	if(data=='0'){
                                console.error("삭제 실패:", error);                        		
                        	} else {
                                console.log("삭제 성공");
                                currentRow.remove(); // 선택된 행 제거
                        		
                        	}
                        },
                        error: function (xhr, status, error) {
                            console.error("삭제 실패:", error);
                        }
                    });
                });
            }
        });








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
      { value: '123' },
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