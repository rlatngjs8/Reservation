<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="css/Section.css" rel="stylesheet" /> 
<title>Insert title here</title>
</head>
<style>

.demo{
	text-align:left;
}

.location{
	text-align:left;
}





</style>






<body>

<%@include file="header.jsp" %>

	<h1 class="top">회의실/세미나룸</h1>











<div class="second">
    
	<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
    <div class="card">
         <a href="#"><img src="img/${rooms[15].img1}" alt="이미지 6"></a>
		<br>
		<a class="demo">${rooms[15].space_name}</a>
		<br>
		<a class="demo">${rooms[15].location.split(' ')[0]}</a>
		<a class="location"><img src="img/위치아이콘.png"></a>

		<a class="demo">${rooms[15].price}원</a>
	
	
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[16].img1}" alt="이미지 6"></a>
        
        <a class="demo">${rooms[16].space_name}</a>
        <br>
        <a class="demo">${rooms[16].location.split(' ')[1]}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>

		<a class="demo">${rooms[16].price}원</a>

    </div>
    
    
    </div>


	<div class="second">
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[17].img1}" alt="이미지 6"></a>
          <br>
        <a class="demo">${rooms[17].space_name}</a>
        <br>
        <a class="demo">${rooms[17].location.split(' ')[0]}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>

		<a class="demo">${rooms[17].price}원</a>
  
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[18].img1}" alt="이미지 6"></a>
          <br>
        <a class="demo">${rooms[18].space_name}</a>
        <br>
        <a class="demo">${rooms[18].location.split(' ')[0]}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>

		<a class="demo">${rooms[18].price}원</a>

    </div>
    
	
	<div class="card">
         <a href="#"><img src="img/${rooms[19].img1}" alt="이미지 6"></a>
         <br>
        <a class="demo">${rooms[19].space_name}</a>
        <br>
        <a class="demo">${rooms[19].location.split(' ')[0]}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<a class="demo">${rooms[19].price}원</a>


    </div>
</div>
		
	




<%@include file="footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)
.ready(function(){

	
})











</script>





</html>