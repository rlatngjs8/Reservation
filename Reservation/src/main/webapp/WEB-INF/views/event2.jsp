<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.container{
justify-content: flex-direction: column;
justify-content: space-evenly;

}

.ev img{
	weight:400px;
	height:700px;
}

.sh2{
	
}


</style>

<body>
<%@include file="header.jsp" %>

<h2 align=center class="sh2">Share Place에서만 드리는 혜택 !</h2>
<br><br>



<div class="container">

	<div class="ev" align=center>
		<img src="img/추첨이벤트1.jpg">
	</div>
	
	<br><br>
	<div class="ev" align=center>
		<img src="img/추첨이벤트2.jpg">
	</div>
	<br><br>
	
	<div class="ev" align=center>
		<img src="img/추첨이벤트3.jpg">
	</div>

</div>

<br><br>


<%@include file="footer.jsp" %>
</body>
</html>