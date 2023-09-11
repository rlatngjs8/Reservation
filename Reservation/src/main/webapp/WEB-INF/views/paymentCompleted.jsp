<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

.reservation-container {
    background-color: #fff;
    max-width: 400px;
    margin: 100px auto;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    text-align: center;
}

h1 {
    color: #333;
}

p {
    margin: 10px 0;
}

span {
    font-weight: bold;
}

/* 예약 완료 메시지 스타일 */
#reservation-number {
    color: #FF5722; /* 오렌지색 */
}

#reservation-date,
#reservation-time,
#total-price {
    color: #4CAF50; /* 녹색 */
}
</style>
<body>
<input type="hidden" name="userid" id="userid" value="${userid}">
<input type="hidden" name="total_price" id="total_price" value="">
<input type="hidden" name="purchaseTime" id="purchaseTime" value="${purchaseTime}">
    <div id="reservation-container" class="reservation-container">
<%--     <c:forEach items="${pay}" var="pay">
        <h1>예약이 완료되었습니다!</h1>
        <p>예약 번호: <span id="seqno">${pay.seqno}</span></p>
        <p>아이디: <span id="userid">${pay.userid}</span></p>
        <p>성함: <span id="name">${pay.name}</span></p>
        <p>전화번호: <span id="mobile">${pay.mobile}</span></p>
        <p>상품명: <span id="space_name">${pay.space_name}</span></p>
        <p>이용일자: <span id="useday">${pay.useday}</span></p>
        <p>이용시간: <span id="usetime">${pay.startTime}시 ~ ${pay.endTime}시</span></p>
        <p>결제금액: <span id="totalPrice">${pay.totalPrice}원</span></p>
        <p>결제시각: <span id="purchaseTime">${pay.purchaseTime}</span></p>
    </c:forEach> --%>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

$(document).ready(function () {
	
    function parseUrlParams(url) {
        var params = {};
        var urlParts = url.split("?");
        if (urlParts.length > 1) {
            var queryString = urlParts[1];
            var paramPairs = queryString.split("&");
            for (var i = 0; i < paramPairs.length; i++) {
                var paramPair = paramPairs[i].split("=");
                if (paramPair.length === 2) {
                    var paramName = decodeURIComponent(paramPair[0]);
                    var paramValue = decodeURIComponent(paramPair[1]);
                    params[paramName] = paramValue;
                }
            }
        }
        return params;
    }
    
    
    
    
    
  //현재 URL 가져오기
    var currentUrl = window.location.href;

    // URL을 파싱하여 매개변수를 객체로 추출하는 함수 정의


    // URL에서 amount 매개변수 추출
    var urlParams = parseUrlParams(currentUrl);
    var amountValue = urlParams["amount"];

    //total_price_input의 값을 amountValue로 설정합니다.
    var amountValue = urlParams["amount"]; // 여기서 urlParams는 어떻게 정의되었는지에 따라 다를 수 있습니다.
    $("#total_price").val(amountValue);

    // amount 값을 사용하려면 변수 amountValue를 사용합니다.
    console.log("amount 값:", amountValue);

    
    var userid = $("#userid").val();
    var purchaseTime = $("#purchaseTime").val();
    var total_price_value = $("#total_price").val();
    console.log("userid:", userid);
    console.log("total_price 값: " + total_price_value);
    console.log("amount 값:", amountValue);
    get_re_info();
});

function get_re_info() {
    console.log('에약 데이터 한개}');
    const userid = $("#userid").val();
    var total_price_value = $("#total_price").val();
    $.ajax({
        url: '/get_re_info',
        data: {userid: userid,
        		totalPrice: total_price_value},
        type: 'post',
        dataType: 'json',
        success: function (data) {
            console.log(data); // 받은 데이터 콘솔 출력
            $("#reservation-container").empty();
            for (let i = 0; i < data.length; i++) {
            	let content = 
            	    '<h1>예약이 완료되었습니다!</h1>' +
            	    '<p>예약 번호: <span id="seqno">' + data[i]['seqno'] + '</span></p>' +
            	    '<p>아이디: <span id="userid">' + data[i]['userid'] + '</span></p>' +
            	    '<p>성함: <span id="name">' + data[i]['name'] + '</span></p>' +
            	    '<p>전화번호: <span id="mobile">' + data[i]['mobile'] + '</span></p>' +
            	    '<p>상품명: <span id="space_name">' + data[i]['space_name'] + '</span></p>' +
            	    '<p>이용일자: <span id="useday">' + data[i]['useday'] + '</span></p>' +
            	    '<p>이용시간: <span id="usetime">' + data[i]['startTime'] + '시 ~ ' + data[i]['endTime'] + '시</span></p>' +
            	    '<p>결제금액: <span id="totalPrice">' + data[i]['totalPrice'] + '</span></p>' +
            	    '<p>결제시각: <span id="purchaseTime">' + data[i]['purchaseTime'] + '</span></p>';
            	$('#reservation-container').append(content);
        	}
        }    
    });
}



</script>
</html>
