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





</style>






<body>

<%@include file="header.jsp" %>

	<h1 class="title">회의실/세미나룸</h1>
	
	
	<div>
	<a href="/RecordingStudio"><span class="otherRoom3"><strong> 스튜디오/방송 </strong></span></a>
	</div>
	
	<div>
	<a href="/PartyRoom"><span class="otherRoom4"><strong> 파티룸 </strong></span></a>
	</div>











<div class="second">
    
	<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
    <div class="card">
         <a href="#"><img src="img/${rooms[15].img1}" alt="이미지 6"></a>
       
		<a class="demo">${rooms[15].space_name}</a>
		<br>
		<a class="demo1">${rooms[15].location.substring(0, rooms[15].location.indexOf(' '))}</a>
		<a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#당산,#영등포,#모임공간,#모의면접</a>
		<a class="demo2">${rooms[15].price}원/시간</a>

	
	
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[16].img1}" alt="이미지 6"></a>
        
        <a class="demo">${rooms[16].space_name}</a>
       	<br>
        <a class="demo1">${rooms[16].location.substring(3,9)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <a class="ra">#모임공간,#회의실,#세미나,#스튜디오</a>
		<a class="demo2">${rooms[16].price}원/시간</a>
    </div>
   </div>
    
	<div class="second">
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[17].img1}" alt="이미지 6"></a>
        <a class="demo">${rooms[17].space_name}</a>
        <br>
        <a class="demo1">${rooms[17].location.substring(0, rooms[17].location.indexOf(' '))}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <a class="ra">#회의실,#TV모니터,#남부터미널역</a>
		<a class="demo2">${rooms[17].price}원/시간</a>
  
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[18].img1}" alt="이미지 6"></a>
        <a class="demo">${rooms[18].space_name}</a>
        <br>
        <a class="demo1">${rooms[18].location.substring(0, rooms[18].location.indexOf(' '))}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <a class="ra">#스크린,#조명,#음향,#빔프로젝터,#세미나</a>
		<a class="demo2">${rooms[18].price}원/시간</a>

    </div>
    
	
	<div class="card">
         <a href="#"><img src="img/${rooms[19].img1}" alt="이미지 6"></a>
        <a class="demo">${rooms[19].space_name}</a>
        <br>
        <a class="demo1">${rooms[19].location.substring(0, rooms[19].location.indexOf(' '))}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <a class="ra">#주차공간,#대형 모니터,#와이파이,#워크샵</a>
		<a class="demo2">${rooms[19].price}원/시간</a>


    </div>
</div>
		
	




<%@include file="footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)
.ready(function(){

	
})


    
    let l = "${rooms[15].location.substring(0, rooms[15].location.indexOf(' '))}";
    let d = "[" + l + "]";
    
    let s = document.querySelectorAll(".demo1")[0];
    s.innerHTML = d;

	l = "${rooms[16].location.substring(3,9)}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo1")[1];
    s.innerHTML = d;
 
	l = "${rooms[17].location.substring(0, rooms[17].location.indexOf(' '))}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo1")[2];
    s.innerHTML = d;
 
    l = "${rooms[18].location.substring(0, rooms[18].location.indexOf(' '))}";
    d = "[" + l + "]"
    
    s = document.querySelectorAll(".demo1")[3];
    s.innerHTML = d;
 
    
    l ="${rooms[19].location.substring(0, rooms[19].location.indexOf(' '))}";
    d = "[" + l + "]";
    
    s = document.querySelectorAll(".demo1")[4];
    s.innerHTML = d;
 

</script>





</html>