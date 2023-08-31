<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/home.css" rel="stylesheet" /> 

<title>Event Page</title>
</head>



<style>






 body {
         font-family: Arial, sans-serif;
         margin: 0;
         padding: 0;
      }
      .bigDiv {
         display: flex;
         flex-direction: column;
         align-items: center;
         min-height: 100vh;
         justify-content: space-around;
      }
      .banner {
         background-color: #f2f2f2;
         padding: 10px;
         text-align: center;
         color: #333;
         margin-bottom: 50px;
         border-radius: 5px;
      }
      .bn {
         background-color: #FFF8DC;
         padding: 10px;
      }










</style>
<body>

 		 
 		 
 		 
 		 
 		 
 		 
 		 
 		 
 		 
 		 
 		 
 	<%@include file="header.jsp" %>	 
 		 
 		 <br><br>
 		 
 		 
 		 
 		 
 		 
 		   
  	<h2 align=center> 이벤트 </h2>


  	<p align=center> 진행중인 이벤트 목록</p>
  	
  	
  	
  	
  	<section>
  	
  		<div class="banner" id="ban"> 
  		
  			<article><h2>마일리지 적립 이벤트</h2></article>
  			
  			<div class="bn">
  			
  			<br>
  				<a href="event2">신규 고객 30% 추가 적립</a>
  				<br>
  									
  			</div>
  			
  		</div>
  		
  		
  	<div>
  	
  		<div class="banner" id="ban"> 
  		
  			<article><h2>설문조사 참여 이벤트</h2></article>
  			
  			<div class="bn">
  			
  			<br>
  				<a href="event1">설문조사 참여하고 최대 2,000p 받기 !</a>
  				<br>
  									
  			</div>
  			
  		</div>
  	
  	
  		
  	</section>

	
	
	
	
	
	
	
	
	
	<%@include file="footer.jsp" %>

	
	

	
	

</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>


</script>












</html>