<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f5f5f5;
}

h1 {
    text-align: center;
    padding: 20px;
}

table {
    margin: 20px auto;
    border-collapse: collapse;
    width: 80%;
    max-width: 1000px;
    background-color: white;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

th, td {
    padding: 10px 15px;
    text-align: center;
    border-bottom: 1px solid #dddddd;
}

th {
    background-color: #f5f5f5;
    font-weight: bold;
}

tbody tr:hover {
    background-color: #f0f0f0;
}
</style>
<body>
<h1>예약현황</h1>
<table>
<thead>
<th>예약번호</th><th>성함</th><th>전화번호</th><th>상품명</th><th>이용일자</th><th>이용시간</th><th>합계</th><th>결제시각</th>
</thead>
<tbody>
<c:forEach items="${rlist}" var="rpost">

</c:forEach>
</tbody>
</table>
</body>
</html>