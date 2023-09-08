<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/Section.css" rel="stylesheet" /> 
<title>Insert title here</title>
</head>

<style>
		img{
		height:333.33px;
		width: 400px;
	}





.ra1{
	  font-family: 'GyeonggiBatang', sans-serif; 
	  position:relative;
	  right:120px;
	  top:12px;
	  
}



@font-face {
    font-family: 'omyu_pretty';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

.nh{
font-family: 'omyu_pretty';

margin-right: 22px;
}



</style>



<body>

<%@include file="header.jsp" %>
<br><br><br><br>
<h1 class="nh">New Arrivals</h1>
<br>





<div class="second">
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[2].img5}" alt="이미지 6"></a>
        
        <a class="demo">${rooms[2].space_name}</a>
        <br>
        <a class="demo1">${rooms[2].location.substring(0, rooms[2].location.indexOf('압구정역')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br><br>
	
		<a class="demo2">${rooms[2].price}원/시간</a>
   
    </div>
    
    <div class="card">
         <a href="#"><img src="img/${rooms[6].img2}" alt="이미지 6"></a>
        
        <a class="demo">${rooms[3].space_name}</a>
        <br>
        <a class="demo1">${rooms[3].location.substring(0, rooms[3].location.indexOf('을지병원')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
	
		<br><br>
		<a class="demo2">${rooms[3].price}원/시간</a>
   
    </div>
    
    <div class="card">
         <a href="#"><img src="img/${rooms[11].img2}" alt="이미지 6"></a>
        
        <a class="demo">${rooms[11].space_name}</a>
        <br>
        <a class="demo1">${rooms[11].location.substring(0, rooms[11].location.indexOf('사당역')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		
		<br><br>
		<a class="demo2">${rooms[11].price}원/시간</a>
   
    </div>
    </div>

<br><br><br>


<div class="second">
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[9].img5}" alt="이미지 6"></a>
        
        <a class="demo">${rooms[9].space_name}</a>
        <br>
        <a class="demo1">${rooms[9].location.substring(0, rooms[9].location.indexOf('압구정')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
	
		<br>
		<a class="demo2">${rooms[9].price}원/시간</a>
   
    </div>
    
    <div class="card">
         <a href="#"><img src="img/${rooms[1].img2}" alt="이미지 6"></a>
        
        <a class="demo">${rooms[1].space_name}</a>
        <br>
        <a class="demo1">${rooms[1].location.substring(0, rooms[1].location.indexOf('논현동')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>

		<br>
		<a class="demo2">${rooms[1].price}원/시간</a>
   
    </div>
    
    <div class="card">
         <a href="#"><img src="img/${rooms[15].img1}" alt="이미지 6"></a>
        
        <a class="demo">${rooms[15].space_name}</a>
        <br>
        <a class="demo1">${rooms[15].location.substring(0, rooms[4].location.indexOf('선유도역')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>

		<br>
		<a class="demo2">${rooms[15].price}원/시간</a>
   
    </div>
    </div>

<br><br><br><br><br>




<div class="second">
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[22].img1}"></a>
        
        <a class="demo">${rooms[22].space_name}</a>
        <br>
        <a class="demo1">${rooms[22].location.substring(4, rooms[22].location.indexOf('민락동')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="demo2">${rooms[22].price}원/시간</a>
   
    </div>
    
    <div class="card">
         <a href="#"><img src="img/${rooms[12].img1}"></a>
        
        <a class="demo">${rooms[12].space_name}</a>
        <br>
        <a class="demo1">${rooms[12].location.substring(0, rooms[12].location.indexOf('혜화역')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
	
		<br><br>	
		<a class="demo2">${rooms[12].price}원/시간</a>
   
    </div>
    
    <div class="card">
         <a href="#"><img src="img/${rooms[20].img1}"></a>
        
        <a class="demo">${rooms[20].space_name}</a>
        <br>
        <a class="demo1">${rooms[20].location.substring(3, rooms[20].location.indexOf('마포구')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>

		<br><br>
		<a class="demo2">${rooms[20].price}원/시간</a>
   
    </div>
    </div>





<br><br>























<%@include file="footer.jsp" %>
</body>

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>


let l = "${rooms[2].location.substring(0, rooms[2].location.indexOf('압구정역')+4)}";
let d = "[" + l + "]";

let s = document.querySelectorAll(".demo1")[0];
s.innerHTML = d;


	l = "${rooms[3].location.substring(0, rooms[3].location.indexOf('을지병원')+4)}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo1")[1];
	s.innerHTML = d;
	
	
	l = "${rooms[11].location.substring(0, rooms[11].location.indexOf('사당역')+3)}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo1")[2];
	s.innerHTML = d;
	

	l = "${rooms[9].location.substring(0, rooms[9].location.indexOf('압구정')+3)}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo1")[3];
	s.innerHTML = d;
	
	l = "${rooms[1].location.substring(0, rooms[1].location.indexOf('논현동')+3)}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo1")[4];
	s.innerHTML = d;
	

	l = "${rooms[15].location.substring(0, rooms[4].location.indexOf('선유도역')+4)}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo1")[5];
	s.innerHTML = d;
	 
	
	l = "${rooms[22].location.substring(4, rooms[22].location.indexOf('민락동')+3)}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo1")[6];
	s.innerHTML = d;
	
	
	l = "${rooms[12].location.substring(0, rooms[12].location.indexOf('혜화역')+3)}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo1")[7];
	s.innerHTML = d;
	
	
	l = "${rooms[20].location.substring(3, rooms[20].location.indexOf('마포구')+3)}";
	d = "[" + l + "]";
	
	s = document.querySelectorAll(".demo1")[8];
	s.innerHTML = d;
	
</script>
</html>