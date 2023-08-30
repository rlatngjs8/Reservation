<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약현황</title>
</head>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid #ccc;
  padding: 10px;
}

th {
  background-color: #f0f0f0;
  font-weight: bold;
}

table tr:nth-child(even) {
  background-color: #f9f9f9;
}

h1 {
  text-align: center;
  font-size: 20px;
}

table td a {
  text-decoration: none;
  color: black;
}

table td a:hover {
  text-decoration: underline;
}
</style>
<body>
<h1>예약현황</h1>
<table>
<thead>
<th>예약번호</th><th>아이디</th><th>성함</th><th>전화번호</th><th>상품명</th><th>이용일자</th><th>이용시간</th><th>합계</th><th>결제시각</th>
</thead>
<tbody>
<c:forEach items="${rlist}" var="rpost">
	<tr data-seqno="${rpost.seqno}" data-num="${rpost.seqno}">
		<td>${rpost.seqno}</td>
		<td>${rpost.userid}</td>
		<td>${rpost.name}</td>
		<td>${rpost.mobile}</td>
		<td>${rpost.space_name}</td>
		<td>${rpost.useday}</td>
		<td>${rpost.startTime}시~${rpost.endTime}시</td>
		<td>${rpost.totalPrice}원</td>
		<td>${rpost.purchaseTime}</td>
	</tr>
</c:forEach>
</tbody>
</table>
<table>
<tr><td align="left">${pagestr}</td></tr>
</table>
</body>
</html>