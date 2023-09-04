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

	<h1 class="top">파티룸</h1>
	
	<div>
	<a href="/RecordingStudio"><span class="otherRoom"><strong> 스튜디오/방송 </strong></span></a>
	</div>
	
	<div>
	<a href="/seminarRoom"><span class="otherRoom2"><strong> 회의실/세미나</strong></span></a>
	</div>









<div class="second">
    
	<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
    <div class="card">
         <a href="#"><img src="img/${rooms[0].img1}" alt="이미지 6"></a>
		<a class="demo">${rooms[0].space_name}</a>
		<br>
		<a class="demo1">${rooms[0].location.substring(5, rooms[0].location.indexOf('도'))}</a>
		
		<a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#강남,#무료주차,#발렛,#돌잔치,스몰웨딩</a>
		<a class="demo2">${rooms[0].price}원/시간</a>
	
	
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[1].img1}" alt="이미지 6"></a>
 
        <a class="demo3">${rooms[1].space_name}</a>
        <br>
        <a class="demo1">${rooms[1].location.substring(0, rooms[1].location.indexOf('2'))}</a>
        
        <a class="location"><img src="img/위치아이콘.png"></a>
        <br>
        <a class="ra">#강남,#브라이덜샤워,#소모임,#자연광</a>
		<a class="demo2">${rooms[1].price}원/시간</a>



    </div>
    
    

	
	 <div class="card">
         <a href="#"><img src="img/${rooms[3].img1}" alt="이미지 6"></a>
        
        <a class="demo3">${rooms[3].space_name}</a>
        <br><br>
        <a class="demo1">${rooms[3].location.substring(0, rooms[3].location.indexOf('을지병원')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
      	<a class="ra">#학동역,#루프탑,#바베큐,#하이엔드</a>
		<a class="demo2">${rooms[3].price}원/시간</a>
  
    </div>
    

        </div>
        
	<div class="second">
	<div class="card">
         <a href="#"><img src="img/${rooms[5].img3}" alt="이미지 6"></a>
        
        <a class="demo3">${rooms[5].space_name}</a>
        <br><br>
        <a class="demo1">${rooms[5].location.substring(0, rooms[5].location.indexOf('학동역')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <a class="ra">#렌탈스튜디오,#사진촬영,#무료주차</a>
		<a class="demo2">${rooms[5].price}원/시간</a>


    </div>

		
	
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[15].img1}" alt="이미지 6"></a>
      
        <a class="demo3">${rooms[15].space_name}</a>
        <br><br>
        <a class="demo1">${rooms[15].location.substring(0, rooms[5].location.indexOf('선유도')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <a class="ra">#영등포,#파티룸,#모임공간,#선유도</a>
		<a class="demo2">${rooms[15].price}원/시간</a>
   
    </div>		
    
    	  <div class="card">
         <a href="#"><img src="img/${rooms[2].img1}" alt="이미지 6"></a>
   
        <a class="demo3">${rooms[2].space_name}</a>
        <br><br>
        <a class="demo1">${rooms[2].location.substring(0, rooms[2].location.indexOf('압구정')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<a class="ra">#압구정,#가로수길,#인생샷,#생일파티</a>
		<a class="demo2">${rooms[2].price}원/시간</a>
    </div>
	</div>


		<div class="second1">
      <div class="card">
         <a href="#"><img src="img/${rooms[4].img1}" alt="이미지 6"></a>
          
        <a class="demo3">${rooms[4].space_name}</a>
        <br><br>
        <a class="demo1">${rooms[4].location.substring(0, rooms[4].location.indexOf('매봉역')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
        <a class="ra">#브라이덜샤워,#쇼케이스,#포로포즈</a>
		<a class="demo2">${rooms[4].price}원/시간</a>

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


var locationText = "${rooms[0].location.substring(5, rooms[0].location.indexOf('도'))}".trim();
    var formattedLocation = "[" + locationText + "]";

    var secondDemoElement = document.querySelectorAll(".demo1")[0];
    secondDemoElement.innerHTML = formattedLocation;

    
    
    
    let l = "${rooms[1].location.substring(0, rooms[1].location.indexOf('2'))}".trim();
    let d = "[" + l + "]";
    
    let s = document.querySelectorAll(".demo1")[1];
    s.innerHTML = d;
    
    
    
    
    
    
    l = "${rooms[3].location.substring(0, rooms[3].location.indexOf('을지병원')+4)}";
    d = "[" + l + "]";
    
    s=document.querySelectorAll(".demo1")[2]
    s.innerHTML = d;
    
    
    l = "${rooms[4].location.substring(0, rooms[4].location.indexOf('매봉역')+4)}".trim();
    d = "[" + l + "]";
    
    s=document.querySelectorAll(".demo1")[3]
    s.innerHTML = d;
    
    l = "${rooms[5].location.substring(0, rooms[5].location.indexOf('학동역')+3)}"
    d = "[" + l + "]";
    
    s=document.querySelectorAll(".demo1")[4]
    s.innerHTML = d;
    
    l = "${rooms[15].location.substring(0, rooms[5].location.indexOf('선유도')+4)}"
    d = "[" + l + "]";
    
    s=document.querySelectorAll(".demo1")[5]
    s.innerHTML = d;
    
   	l = "${rooms[5].location.substring(0, rooms[5].location.indexOf('학동역')+3)}"
   	d = "[" + l + "]";
   	
   	s=document.querySelectorAll(".demo1")[6]
    s.innerHTML = d;
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    




</script>





</html>