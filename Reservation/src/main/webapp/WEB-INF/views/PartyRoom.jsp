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

	<h1 class="top">파티룸</h1>











<div class="second">
    
	<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
    <div class="card">
         <a href="#"><img src="img/${rooms[0].img1}" alt="이미지 6"></a>
		<br><br>
		<a class="demo">${rooms[0].space_name}</a>
		<br>
		<a class="demo">${rooms[0].location.substring(5, rooms[0].location.indexOf('도'))}</a>
		<a class="location"><img src="img/위치아이콘.png"></a>
		<a class="demo">${rooms[0].price}원</a>
	
	
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[1].img1}" alt="이미지 6"></a>
         <br><br>
        <a class="demo">${rooms[1].space_name}</a>
        <br>
        <a class="demo">${rooms[1].location.substring(0, rooms[1].location.indexOf('2'))}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<a class="demo">${rooms[1].price}원</a>

    </div>
    
    
    </div>


	<div class="second">
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[3].img1}" alt="이미지 6"></a>
          <br><br>
        <a class="demo">${rooms[3].space_name}</a>
        <br>
        <a class="demo">${rooms[3].location.substring(0, rooms[3].location.indexOf('을지병원')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
      
		<a class="demo">${rooms[3].price}원</a>
  
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[4].img1}" alt="이미지 6"></a>
          <br><br>
        <a class="demo">${rooms[4].space_name}</a>
        <br>
        <a class="demo">${rooms[4].location.substring(0, rooms[4].location.indexOf('매봉역')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        
		<a class="demo">${rooms[4].price}원</a>

    </div>
    
	
	<div class="card">
         <a href="#"><img src="img/${rooms[5].img3}" alt="이미지 6"></a>
         <br><br>
        <a class="demo">${rooms[5].space_name}</a>
        <br>
        <a class="demo">${rooms[5].location.substring(0, rooms[5].location.indexOf('학동역')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<a class="demo">${rooms[5].price}원</a>


    </div>
</div>
		
	<div class="second">
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[15].img1}" alt="이미지 6"></a>
          <br><br>
        <a class="demo">${rooms[15].space_name}</a>
        <br>
        <a class="demo">${rooms[15].location.substring(0, rooms[5].location.indexOf('선유도')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<a class="demo">${rooms[15].price}원</a>
   
    </div>		
    
    	  <div class="card">
         <a href="#"><img src="img/${rooms[2].img1}" alt="이미지 6"></a>
         <br><br>
        <a class="demo">${rooms[2].space_name}</a>
        <br>
        <a class="demo">${rooms[2].location.substring(0, rooms[2].location.indexOf('압구정')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>

		<a class="demo">${rooms[2].price}원</a>
    </div>
	</div>





<%@include file="footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)
.ready(function(){

	
})


var locationText = "${rooms[0].location.substring(5, rooms[0].location.indexOf('도'))}";
    var formattedLocation = "[" + locationText + "]";

    var secondDemoElement = document.querySelectorAll(".demo")[1];
    secondDemoElement.innerHTML = formattedLocation;

    let l = "${rooms[1].location.substring(0, rooms[1].location.indexOf('2'))}";
    let d = "[" + l + "]";
    
    let s = document.querySelectorAll(".demo")[4];
    s.innerHTML = d;
    
    
    l = "${rooms[3].location.substring(0, rooms[3].location.indexOf('을지병원')+4)}";
    d = "[" + l + "]";
    
    s=document.querySelectorAll(".demo")[7]
    s.innerHTML = d;
    
    
    l = "${rooms[4].location.substring(0, rooms[4].location.indexOf('매봉역')+4)}"
    d = "[" + l + "]";
    
    s=document.querySelectorAll(".demo")[10]
    s.innerHTML = d;
    
    l = "${rooms[5].location.substring(0, rooms[5].location.indexOf('학동역')+3)}"
    d = "[" + l + "]";
    
    s=document.querySelectorAll(".demo")[13]
    s.innerHTML = d;
    
    l = "${rooms[15].location.substring(0, rooms[5].location.indexOf('선유도')+4)}"
    d = "[" + l + "]";
    
    s=document.querySelectorAll(".demo")[16]
    s.innerHTML = d;
    
   	l = "${rooms[5].location.substring(0, rooms[5].location.indexOf('학동역')+3)}"
   	d = "[" + l + "]";
   	
   	s=document.querySelectorAll(".demo")[19]
    s.innerHTML = d;
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    




</script>





</html>