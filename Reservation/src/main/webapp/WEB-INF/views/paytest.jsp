<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
  <meta charset="utf-8" />
  <!-- 결제위젯 SDK 추가 -->
  <script src="https://js.tosspayments.com/v1/payment-widget"></script>
</head>
<style>

@font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

        body {
            font-family: 'HakgyoansimWoojuR';
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            color: #333;
        }

        h1 {
            text-align: center;
            font-size: 32px;
            color: #007bff;
            margin: 20px 0;
        }

        /* 섹션 스타일 */
        .reservation-section {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin: 20px auto;
            width: 55%;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .reservation-section h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        /* 예약 정보 컨테이너 스타일 */
        .reservation-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            white-space: pre-line;
            
        }

        /* 예약 정보 아이템 스타일 */
        .reservation-item {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            flex: 1;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* 서비스 동의 체크박스 스타일 */
        label {
            display: block;
            margin-top: 10px;
            color: #333;
        }

        input[type="checkbox"] {
            margin-right: 10px;
            color: #007bff;
        }

        /* 아코디언 아이템의 헤더 스타일 */
        .accordion-header {
            display: flex;
            align-items: center;
            cursor: pointer;
            color: #007bff;
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
        .accordion-item.expanded .accordion-icon.expanded {
            transform: rotate(180deg);
        }

        /* 아코디언 아이템의 내용을 초기에 숨김 */
        .accordion-content {
            display: none;
            margin-top: 10px;
            color: #555;
            white-space: pre-line;
        }

        .reservation-heading {
            font-size: 24px;
            color: #007bff;
            margin-bottom: 20px;
        }

        .reservation-list {
            list-style-type: disc;
            padding-left: 20px;
            font-size: 16px;
            color: #333;
        }

        .reservation-list li {
            margin-bottom: 10px;
        }
        
        .product-image img {
	        max-width: 700px;
	        max-height: 400px;
    	}
    	/* 필수 항목 빨간 글씨로 스타일링 */
		.accordion-label span.required {
		    color: red;
		}
		
		/* 활성화된 버튼 스타일 */
        #payment-button {
            background-color: #0074e4;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        /* 활성화된 버튼 스타일 */
        #payment-button.active {
            background-color: #007bff;
        }
        /* 비활성화된 버튼 스타일 */
        #payment-button.disabled {
            background-color: #ccc;
            color: #666;
            cursor: not-allowed;
        }
        
    </style>
<body>
    <h1>예약 정보</h1>

    <section class="reservation-section">
        <h2>예약공간</h2>
        <div id="reservation_space" class="reservation-container">
            <!-- 예약 공간 아이템 시작 -->
            <!--
            <div class="reservation-item">
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

    <section class="reservation-section">
        <h2>예약정보</h2>
        <div id="reservation_info" class="reservation-container">
            <!-- 예약 정보가 여기에 동적으로 추가됩니다 -->
        </div>
    </section>

    <section class="reservation-section">
        <h2 class="reservation-heading">예약시 주의사항</h2>
        <ul class="reservation-list">
            <li>입,퇴실 시간을 엄수해주세요. (준비시간이나 정리시간은 이용시간에 포함됩니다.)</li>
            <li>사전 답사 시 미리 연락 부탁드립니다.</li>
            <li>연장 시 미리 연락 부탁드립니다.</li>
            <li>불법행위, 안전사고, 기물파손에 대한 책임은 소비자에게 있으며 추후 비용 발생 시 청구될 수 있습니다.</li>
            <li>예약 보증금은 10만원이며, 청소비는 5만원이 별도로 청구됩니다.</li>
        </ul>
    </section>

    <section class="reservation-section">
        <h2>서비스 동의</h2>
        <div class="accordion">
            <div class="accordion-item">
                <label for="service_agreement" class="accordion-label">
                    <input type="checkbox" id="service_agreement" name="service_agreement">
                    <span>위 공간의 예약조건 확인 및 결제진행 동의 <span class="required">(필수)</span></span>
                </label>
            </div>
            <!-- 나머지 아코디언 아이템들도 동일하게 추가 -->
            <div class="accordion-item">
                <label for="third_party_agreement" class="accordion-label">
                    <input type="checkbox" id="third_party_agreement" name="third_party_agreement">
                    <span>개인정보 제3자 제공 동의 <span class="required">(필수)</span></span>
                    <span class="accordion-icon">&#9660;</span>
                </label>
                <div id="terms_of_use1" class="accordion-content">
                    <!-- 이용약관 내용을 여기에 추가 -->
                </div>
            </div>
            <div class="accordion-item">
                <label for="privacy_agreement" class="accordion-label">
                    <input type="checkbox" id="privacy_agreement" name="privacy_agreement">
                    <span>개인정보 수집 및 이용 동의 <span class="required">(필수)</span></span>
                    <span class="accordion-icon">&#9660;</span>
                </label>
                <div id="terms_of_use2" class="accordion-content">
                    <!-- 이용약관 내용을 여기에 추가 -->
                </div>
            </div>
        </div>
    </section>
    
    <section class="reservation-section">
    
    <div id="payment-method"></div>
    <div id="agreement"></div>
    <!-- 결제하기 버튼 -->
    <button id="payment-button">결제하기</button>
    </section>
    
</body>
		
    <!-- 여기부터는 토스뱅크 API -->
    <!-- 결제위젯, 이용약관 영역 -->
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
/*     $(document).on('click', '#payment-button', function () {
        const reData = {
            total_price: total_price,
            email: email,
            name: name,
            space_name: space_name,
            useday: useday,
            startTime: startTime,
            endTime: endTime,
            userid: userid
        };
        console.log("reData :" ,reData)
        console.log('에이잭스 갑니다');
        function re_insert() {
        // 사용자의 아이디를 가져옵니다.

        // 서버로 삭제 요청을 보냅니다.
        console.log('결제 성공 이동중');
        $.ajax({	
            url: "/delete_temp_reservation",
            data: ㄱ,
            type: 'post',
            success: function (data) {
                if (data === '0') {
                    console.error("결제 실패:", data);                        		
                } else {
                    console.log("결제 성공");
                }
            },
            error: function (xhr, status, error) {
                console.error("결제 실패:", error);
            }
        });
    }
 
            }
        });
    }); */

    let total_price;
    let email;
    let name;
    let space_name;
    let useday
    let startTime;
    let endTime;
    let userid;
    
    const clientKey = "test_ck_Gv6LjeKD8aENx9WYLbk8wYxAdXy1"
    const customerKey = "rotoRL_9980" // 내 상점에서 고객을 구분하기 위해 발급한 고객의 고유 ID
    const button = document.getElementById("payment-button")

    // ------  결제위젯 초기화 ------ 
    // 비회원 결제에는 customerKey 대신 ANONYMOUS를 사용하세요.
    const paymentWidget = PaymentWidget(clientKey, customerKey) // 회원 결제
    // const paymentWidget = PaymentWidget(clientKey, PaymentWidget.ANONYMOUS) // 비회원 결제

    // ------  결제위젯 렌더링 ------ 
    // 결제수단 UI를 렌더링할 위치를 지정합니다. `#payment-method`와 같은 CSS 선택자와 결제 금액 객체를 추가하세요.
    // DOM이 생성된 이후에 렌더링 메서드를 호출하세요.
    // https://docs.tosspayments.com/reference/widget-sdk#renderpaymentmethods선택자-결제-금액-옵션
     // ------  이용약관 렌더링 ------
    // 이용약관 UI를 렌더링할 위치를 지정합니다. `#agreement`와 같은 CSS 선택자를 추가하세요.
    // https://docs.tosspayments.com/reference/widget-sdk#renderagreement선택자
    paymentWidget.renderAgreement('#agreement')

    // ------ '결제하기' 버튼 누르면 결제창 띄우기 ------
    // 더 많은 결제 정보 파라미터는 결제위젯 SDK에서 확인하세요.
    // https://docs.tosspayments.com/reference/widget-sdk#requestpayment결제-정보
    button.addEventListener("click", function () {
    paymentWidget.requestPayment({
        orderId: "kkkkkk23",            // 주문 ID(직접 만들어주세요)
        orderName: space_name,                 // 주문명
        successUrl: "http://localhost:8080/paymentCompleted",  // 결제에 성공하면 이동하는 페이지(직접 만들어주세요)
        failUrl: "https://my-store.com/fail",        // 결제에 실패하면 이동하는 페이지(직접 만들어주세요)
        customerEmail: email,
        customerName: name
    });

    const reData = {
        total_price: total_price,
        email: email,
        name: name,
        space_name: space_name,
        useday: useday,
        startTime: startTime,
        endTime: endTime,
        userid: userid
    };

    console.log('에이잭스 갑니다');
    $.ajax({
        url: '/re_insert',
        type: 'post',
        data: reData,
        success: function (data) {
        	console.log(data);
            if (data === '0') {
                console.error("예약 실패:", data);                        		
            } else {
                console.log("예약 성공");
            }
        },
        error: function (xhr, status, error) {
            console.error("예약 실패:", error);
        }
    });
});
   
    
    
  
    
    
    $(document).ready(function() {
    	get_temp_reservation();
    	get_terms_of_use();
    	$('.accordion-icon').click(function() {
            var content = $(this).closest('.accordion-item').find('.accordion-content');
            if (content.is(':hidden')) {
                // 내용이 숨겨져 있을 때 버튼을 누르면 내용을 보여줍니다.
                content.slideDown();
                $(this).addClass('expanded'); 
            } else {
                // 내용이 보여져 있을 때 버튼을 누르면 내용을 숨깁니다.
                content.slideUp();
                $(this).removeClass('expanded');
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
                total_price = 0;

                // 임시 예약 데이터를 HTML로 변환하여 표시
                for (let i = 0; i < data.length; i++) {
                    const dayOfWeek = getDayOfWeek(data[i]['reservation_date']);
                    name = data[i]['name']
                    email = data[i]['email']
                    space_name = data[i]['space_name']
                    useday = data[i]['reservation_date'];
                    startTime = data[i]['start_time'];
                    endTime = data[i]['end_time'];
                    userid = data[i]['userid'];
                    console.log(startTime);
                    
                    
                    
                    console.log(email);
                    console.log(name);
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
                        '    <p>예약날짜: ' + data[i]['reservation_date'] + ' (' + dayOfWeek + ') ' + data[i]['start_time'] + "시" + ' ~ ' + data[i]['end_time'] + "시" + '</p>' +
                        '    <p>최대인원: ' + data[i]['capacity'] + "명</p>" +
                        '    <p>총 금액: ' + data[i]['total_price'] + "원</p>" +
                        '</div>';

                    $('#reservation_space').append(reservationItemHtml);
                    $('#reservation_info').append(reservationInfoHtml);

                    // 전역 total_price 변수에 누적
                    total_price = parseInt(data[i]['total_price']);
                }

                // 예약 정보를 모두 처리한 후에 전역 total_price를 사용할 수 있음
                console.log("전체 총 가격: " + total_price + "원");
                paymentWidget.renderPaymentMethods(
                	      "#payment-method", 
                	      { value: total_price},
                	      { variantKey: "DEFAULT" } // 렌더링하고 싶은 결제 UI의 variantKey
                	    )

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
            console.log(data); // 받은 데이터 콘솔 출력
            for (let i = 0; i < data.length; i++) {
            
            // 첫 번째 아코디언 아이템에 첫 번째 데이터 추가
            const accordionContent1 = "<p>" + data[0]['personal_information'] + "</p>";
            $('#terms_of_use1').empty().append(accordionContent1);

            // 두 번째 아코디언 아이템에 두 번째 데이터 추가
            const accordionContent2 = "<p>" + data[1]['personal_information'] + "</p>";
            $('#terms_of_use2').empty().append(accordionContent2);
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

//"결제하기" 버튼과 체크박스 요소를 선택합니다.
const $paymentButton = $("#payment-button");
const $checkboxes = $("input[type='checkbox']");

// 체크박스 상태가 변경될 때마다 확인하는 함수를 만듭니다.
function updatePaymentButtonState() {
    const allChecked = $checkboxes.filter(":checked").length === $checkboxes.length;
    if (allChecked) {
        $paymentButton.removeClass("disabled").addClass("active").prop("disabled", false);
    } else {
        $paymentButton.removeClass("active").addClass("disabled").prop("disabled", true);
    }
}

// 초기 상태에서도 확인합니다.
updatePaymentButtonState();

// 체크박스 상태가 변경될 때마다 업데이트 함수를 호출합니다.
$checkboxes.on("change", updatePaymentButtonState);




  </script>
</body>