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

	<h1 class="top">녹음실/스튜디오</h1>

<div>
	<a href="/seminarRoom"><span class="otherRoom3"><strong> 세미나룸 </strong></span></a>
	</div>
	
	<div>
	<a href="/PartyRoom"><span class="otherRoom4"><strong> 파티룸ff </strong></span></a>
	</div>










<div class="second">
    
	<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
    <div class="card">
         <a href="#"><img src="img/${rooms[6].img1}" alt="이미지 6"></a>
		<a class="demo">${rooms[6].space_name}</a>
		<br>
		<a class="demo1">${rooms[6].location.substring(0, rooms[6].location.indexOf('학동역')+4)}</a>
		<a class="location"><img src="img/위치아이콘.png"></a>
		<a class="ra">#유튜브,#화보,#반려동물,#쇼핑몰,#개인</a>
		<a class="demo2">${rooms[6].price}원/시간</a>
	
	
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[7].img1}" alt="이미지 6"></a>
       
        <a class="demo">${rooms[7].space_name}</a>
        <br>
        <a class="demo1">${rooms[7].location.substring(0, rooms[7].location.indexOf('영등포구청역')+6)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<a class="ra">#스트릿,#네온,#댄스촬영,#코스프레</a>
		<a class="demo2">${rooms[7].price}원/시간</a>

    </div>
    
    
    </div>


	<div class="second">
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[9].img1}" alt="이미지 6"></a>
         
        <a class="demo">${rooms[9].space_name}</a>
        <br>
        <a class="demo1">${rooms[9].location.substring(0, rooms[9].location.indexOf('압구정')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<a class="ra">#서재,#엔틱,#세트장,#단독대관,#유튜브</a>
		<a class="demo2">${rooms[9].price}원/시간</a>
  
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[10].img1}" alt="이미지 6"></a>
         
        <a class="demo">${rooms[10].space_name}</a>
        <br>
        <a class="demo1">${rooms[10].location.substring(0, rooms[10].location.indexOf('잠실석촌')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#신축,#레슨,#촬영,#조명,#무용,#발레</a>
		<a class="demo2">${rooms[10].price}원/시간</a>

    </div>
    
	
	<div class="card">
         <a href="#"><img src="img/${rooms[11].img1}" alt="이미지 6"></a>
      
        <a class="demo">${rooms[11].space_name}</a>
        <br>
        <a class="demo1">${rooms[11].location.substring(0, rooms[11].location.indexOf('사당역')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#서초연습실,#특가할인,#24시간,#사당역</a>
		<a class="demo2">${rooms[11].price}원/시간</a>


    </div>
</div>
		
	<div class="second">
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[12].img1}"></a>
        
        <a class="demo">${rooms[12].space_name}</a>
        <br>
        <a class="demo1">${rooms[12].location.substring(0, rooms[12].location.indexOf('혜화역')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#대학로,#혜화역,#무용,#연습실,#음향기기</a>
		<a class="demo2">${rooms[12].price}원/시간</a>
   
    </div>		
    
    	  <div class="card">
         <a href="#"><img src="img/${rooms[8].img1}" alt="이미지 6"></a>
       
        <a class="demo">${rooms[8].space_name}</a>
        <br>
        
        <a class="demo1">${rooms[8].location.substring(3, rooms[8].location.indexOf('양천구')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#교복스냅,#우정촬영,#웹드라마,#교실대관</a>
		<a class="demo2">${rooms[8].price}원/시간</a>
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
    
    let s = document.querySelectorAll(".demo1")[0];
    s.innerHTML = d;

	
    l = "${rooms[7].location.substring(0, rooms[7].location.indexOf('영등포구청역')+6)}";
    console.log(l);
	d = "[" + l + "]";
	console.log(d);
	
	s = document.querySelectorAll(".demo1")[1];
	s.innerHTML = d;


	l = "${rooms[9].location.substring(0, rooms[9].location.indexOf('압구정')+3)}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo1")[2];
	s.innerHTML = d;

	l = "${rooms[10].location.substring(0, rooms[10].location.indexOf('잠실석촌')+4)}";
	d = "[" + l + "]";
	
	s = document.s = document.querySelectorAll(".demo1")[3];
	s.innerHTML = d;

	l = "${rooms[11].location.substring(0, rooms[11].location.indexOf('사당역')+3)}";
	d = "[" + l + "]";
	
	s = document.s = document.querySelectorAll(".demo1")[4];
	s.innerHTML = d;

	l = "${rooms[12].location.substring(0, rooms[12].location.indexOf('혜화역')+4)}";
	d = "[" + l + "]";
	
	s = document.s = document.querySelectorAll(".demo1")[5];
	s.innerHTML = d;


	l = "${rooms[8].location.substring(3, rooms[8].location.indexOf('양천구')+3)}";
	d = "[" + l + "]";
	
	s = document.s = document.querySelectorAll(".demo1")[6];
	s.innerHTML = d;






</script>





</html>