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

	<h1 class="top">녹음실/스튜디오</h1>











<div class="second">
    
	<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
    <div class="card">
         <a href="#"><img src="img/${rooms[6].img1}" alt="이미지 6"></a>
		<a class="demo">${rooms[6].space_name}</a>
		<br>
		<a class="demo">${rooms[6].location.substring(0, rooms[6].location.indexOf('학동역')+4)}</a>
		<a class="location"><img src="img/위치아이콘.png"></a>
		<a class="demo">${rooms[6].price}원</a>
	
	
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[7].img1}" alt="이미지 6"></a>
       
        <a class="demo">${rooms[7].space_name}</a>
        <br>
        <a class="demo">${rooms[7].location.substring(0, rooms[7].location.indexOf('영등포구청역')+6)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>

		<a class="demo">${rooms[7].price}원</a>

    </div>
    
    
    </div>


	<div class="second">
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[9].img1}" alt="이미지 6"></a>
         
        <a class="demo">${rooms[9].space_name}</a>
        <br>
        <a class="demo">${rooms[9].location.substring(0, rooms[9].location.indexOf('압구정')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>

		<a class="demo">${rooms[9].price}원</a>
  
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[10].img1}" alt="이미지 6"></a>
         
        <a class="demo">${rooms[10].space_name}</a>
        <br>
        <a class="demo">${rooms[10].location.substring(0, rooms[10].location.indexOf('잠실석촌')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>

		<a class="demo">${rooms[10].price}원</a>

    </div>
    
	
	<div class="card">
         <a href="#"><img src="img/${rooms[11].img1}" alt="이미지 6"></a>
      
        <a class="demo">${rooms[11].space_name}</a>
        <br>
        <a class="demo">${rooms[11].location.substring(0, rooms[11].location.indexOf('사당역')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>

		<a class="demo">${rooms[11].price}원</a>


    </div>
</div>
		
	<div class="second">
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[12].img1}" alt="이미지 6"></a>
          
        <a class="demo">${rooms[12].space_name}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <p class="demo">${rooms[12].location.substring(0, rooms[12].location.indexOf('혜화역')+4)}
		<br>
		<a class="demo">${rooms[12].price}원</a>
   
    </div>		
    
    	  <div class="card">
         <a href="#"><img src="img/${rooms[8].img1}" alt="이미지 6"></a>
       
        <a class="demo">${rooms[8].space_name}</a>
        <br>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <p class="demo">${rooms[8].location.substring(3, rooms[8].location.indexOf('양천구')+3)}
		<br>
		<a class="demo">${rooms[8].price}원</a>
    </div>
	</div>





<%@include file="footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)
.ready(function(){

	
})

	let l = "${rooms[6].location.substring(0, rooms[6].location.indexOf('학동역')+4)}";
    let d = "[" + l + "]";
    
    let s = document.querySelectorAll(".demo")[1];
    s.innerHTML = d;

	
    l = "${rooms[7].location.substring(0, rooms[7].location.indexOf('영등포구청역')+6)}";
    console.log(l);
	d = "[" + l + "]";
	console.log(d);
	
	s = document.querySelectorAll(".demo")[4];
	s.innerHTML = d;


	l = "${rooms[9].location.substring(0, rooms[9].location.indexOf('압구정')+3)}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo")[7];
	s.innerHTML = d;

	l = "${rooms[10].location.substring(0, rooms[10].location.indexOf('잠실석촌')+4)}";
	d = "[" + l + "]";
	
	s = document.s = document.querySelectorAll(".demo")[10];
	s.innerHTML = d;

	l = "${rooms[11].location.substring(0, rooms[11].location.indexOf('사당역')+3)}";
	d = "[" + l + "]";
	
	s = document.s = document.querySelectorAll(".demo")[13];
	s.innerHTML = d;











</script>





</html>