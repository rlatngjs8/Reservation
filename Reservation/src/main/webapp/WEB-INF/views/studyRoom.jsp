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

	<h1 class="top">강의실/스터디룸</h1>
	
	<div>
	<a href="/RecordingStudio"><span class="otherRoom5"><strong> 스튜디오/방송 </strong></span></a>
	</div>
	
	<div>
	<a href="/seminarRoom"><span class="otherRoom6"><strong> 회의실/세미나</strong></span></a>
	</div>









<div class="second">
    
	<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
    <div class="card">
         <a href="#"><img src="img/${rooms[20].img1}" alt="이미지 6"></a>
		<a class="demo">${rooms[20].space_name}</a>
		<br>
		<a class="demo1">${rooms[20].location.substring(0, rooms[20].location.indexOf('독'))}</a>
		
		<a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#홍대강의실,#유튜브,#인강스튜디오</a>
		<a class="demo2">${rooms[20].price}원/시간</a>
	
	
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[21].img1}" alt="이미지 6"></a>
 
        <a class="demo3">${rooms[21].space_name}</a>
        <br>
        <a class="demo1">${rooms[21].location.substring(0, rooms[21].location.indexOf('효'))}</a>
        
        <a class="location"><img src="img/위치아이콘.png"></a>
        <br>
        <a class="ra">#사당역강의실,#강남강의실,#세미나실</a>
		<a class="demo2">${rooms[21].price}원/시간</a>



    </div>
    
    

	
	 <div class="card">
         <a href="#"><img src="img/${rooms[22].img1}" alt="이미지 6"></a>
        
        <a class="demo3">${rooms[22].space_name}</a>
        <br>
        <a class="demo1">${rooms[22].location.substring(0, rooms[22].location.indexOf('1'))}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <br>
      	<a class="ra">#책걸상,#아이패드,#라디에이터,#프린트</a>
		<a class="demo2">${rooms[22].price}원/시간</a>
  
    </div>
    

        </div>
        
	<div class="second">
	<div class="card">
         <a href="#"><img src="img/${rooms[23].img1}" alt="이미지 6"></a>
        
        <a class="demo3">${rooms[23].space_name}</a>
        <br><br>
        <a class="demo1">${rooms[23].location.substring(0, rooms[23].location.indexOf('길'))}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <a class="ra">#강의실,#스터디룸,#부천모임,#동아리</a>
		<a class="demo2">${rooms[23].price}원/시간</a>


    </div>

		
	
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[24].img1}" alt="이미지 6"></a>
      
        <a class="demo3">${rooms[24].space_name}</a>
        <br><br>
        <a class="demo1">${rooms[24].location.substring(0, rooms[24].location.indexOf('인')+6)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <a class="ra">#60명 수용,#대형 빔프로젝터,#무선마이크</a>
		<a class="demo2">${rooms[24].price}원/시간</a>
   
    </div>		
    
	</div>



<br><br><br>


<%@include file="footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)
.ready(function(){

	
})


    let l = "${rooms[20].location.substring(0, rooms[20].location.indexOf('독'))}".trim();
    let d = "[" + l + "]";
    
    let s = document.querySelectorAll(".demo1")[0];
    s.innerHTML = d;
   
    
    l = "${rooms[21].location.substring(0, rooms[21].location.indexOf('효'))}".trim();
    d = "[" + l + "]";
    
    s = document.querySelectorAll(".demo1")[1];
    s.innerHTML = d;
    
    l = "${rooms[22].location.substring(0, rooms[22].location.indexOf('1'))}".trim();
    d= "[" + l + "]";
    
    s = document.querySelectorAll(".demo1")[2];
    s.innerHTML = d;
    
    l = "${rooms[23].location.substring(0, rooms[23].location.indexOf('길'))}".trim();
    d = "[" + l + "]";
    
    s = document.querySelectorAll(".demo1")[3];
    s.innerHTML = d;
    
    
    l = "${rooms[24].location.substring(0, rooms[24].location.indexOf('인')+6)}".trim();
    d= "[" + l +"]";
    
    s=document.querySelectorAll(".demo1")[4];
    s.innerHTML = d;
    
    
    
    
    
    
    
    
    
    
    
    
    




</script>





</html>