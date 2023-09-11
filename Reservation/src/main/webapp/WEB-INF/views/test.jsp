<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>예약 번호: <span id="seqno1">${payment.seqno}</span></p>
<input type="text" name="seqno" id="seqno" value="${payment.seqno}">
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	console.log("seqno="+$('#seqno').val());
})
</script>
</html>