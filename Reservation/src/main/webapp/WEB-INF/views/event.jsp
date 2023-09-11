<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Event Page</title>
</head>



<style>
  /* 페이지 전체 스타일 */
  
  
@font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
  
  
  body {
    font-family: 'HakgyoansimWoojuR', sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
  }


  #header {
    background-color: #333;
    color: white;
    padding: 10px;
    text-align: center;
  }


  .eh {
    font-size: 36px;
    text-transform: uppercase;
  }


  .banner {
    background-color: #fff;
    padding: 20px;
    text-align: center;
    color: #333;
    margin-bottom: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    width: 500px;
    height: 150px;
    margin: 0 auto; /* 가운데 정렬을 위한 추가 */
  }


  .banner h2 {
    font-size: 24px;
    font-family: 'GongGothicMedium', sans-serif;
  }


  .bn {
    font-size: 18px;
    font-family: 'HakgyoansimWoojuR', sans-serif;
    color: #555; /* 텍스트 색상 추가 */
  }


  .bn a {
    background-color: #333;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
    font-family: 'HakgyoansimWoojuR', sans-serif;
  }

  .bn a:hover {
    background-color: #555;
  }


  .big {
    text-align: center;
  }
</style>

<body>

 	
 		 
 		 
 	<%@include file="header.jsp" %>	 
 		 
 		 <br><br><br><br><br><br>
 		 
 		 
 		 
 		 
 <div class="big">		 
 		   
  	<h2 align=center class="eh"> 이벤트 </h2>


  	<p class="ep" align=center> 진행중인 이벤트 목록</p>
  	
  	<br>
  	<hr/>
  	<br><br><br>
  	
  	
  	<section>
  	
  		<div class="banner" id="ban"> 
  		
  			<article><h2>마일리지 적립 이벤트</h2></article>
  			
  			<br>
  			<div class="bn">
  			
  	
  				<a href="event2">신규 고객 30% 추가 적립</a>
  		
  									
  			</div>
  			
  		</div>
  		<br><br><br><br>
  		
  	<div>
  	
  		<div class="banner" id="ban"> 
  		
  			<article><h2>설문조사 참여 이벤트</h2></article>
  				
  				<br>
  			<div class="bn">
  			
  		
  				<a href="event1">설문조사 참여하고 최대 2,000p 받기 !</a>
  			
  									
  			</div>
  			
  		</div>
  	
  	
  		
  	</section>


</div>
	
	
	
	

<br><br><br><br><br>
	
	

	
	
<%@include file="footer.jsp" %>
</body>

	
	
	
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>


</script>












</html>