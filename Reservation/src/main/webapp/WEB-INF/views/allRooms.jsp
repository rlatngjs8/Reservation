<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/Section.css" rel="stylesheet" /> 
<title>Insert title here</title>
</head>

<style>





</style>
<body>

<%@include file="header.jsp" %>

	<h1 class="title">전체보기</h1>
	<br>
	
	<div class="cate">
	<a href="PartyRoom" class="froom">파티룸</a>&nbsp;&nbsp;&nbsp;
	<a href="seminarRoom" class="sroom">세미나/회의실</a>&nbsp;&nbsp;&nbsp;
	<a href="studyRoom" class="troom">강의실/스터디룸</a>&nbsp;&nbsp;&nbsp;
	<a href="RecordingStudio" class="foroom">스튜디오/방송</a>
	</div>


<br>
<br>




<div class="second">
<c:forEach items="${rooms}" var="prod">
    <div class="product" data-space_id="${prod.space_id}">
<%--       <img src="${prod.image}" alt="${product.name}"> --%>
      <div class="space-info">
      	<h2>${prod.space_id}</h2>
        <h2 class="space_name">${prod.space_name}</h2>
        <p class="space_type">${prod.space_type}</p>
        <p class="space-price">${prod.location}</p>
        <p class="space-price">${prod.mobile}</p>

      </div>
    </div>
  </c:forEach>
    

    
    
<br><br><br><br><br>

 
<%@include file="footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
	

	
</script>





</html>