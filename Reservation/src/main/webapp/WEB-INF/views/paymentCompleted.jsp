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
<input type="hidden" name="userid" value="${userid}">
    <div class="reservation-container">
    <c:forEach items="${pay}" var="pay">
        <h1>예약이 완료되었습니다!</h1>
        <p>예약 번호: <span id="seqno">${seqno}</span></p>
        <p>아이디: <span id="userid">${pay.userid}</span></p>
        <p>성함: <span id="name">${pay.name}</span></p>
        <p>전화번호: <span id="mobile">${pay.mobile}</span></p>
        <p>상품명: <span id="space_name">${pay.space_name}</span></p>
        <p>이용일자: <span id="useday">${pay.useday}</span></p>
        <p>이용시간: <span id="usetime">${pay.startTime}시 ~ ${pay.endTime}시</span></p>
        <p>결제금액: <span id="totalPrice">${pay.totalPrice}원</span></p>
        <p>결제시각: <span id="purchaseTime">${pay.purchaseTime}</span></p>
    </div>
    </c:forEach>
</body>
</html>