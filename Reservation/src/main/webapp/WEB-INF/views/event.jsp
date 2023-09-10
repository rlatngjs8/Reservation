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






 body {
         font-family: Arial, sans-serif;


      }
      
      .big {

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

@font-face {
    font-family: 'Cafe24Ssurround';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.bn > a,p{
	 font-family: 'Cafe24Ssurround';
}

@font-face {
    font-family: 'GongGothicMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h2{
	 font-family: 'GongGothicMedium';
}




</style>
<body>

 	
 		 
 		 
 	<%@include file="header.jsp" %>	 
 		 
 		 <br><br><br><br><br><br>
 		 
 		 
 		 
 		 
 <div class="big">		 
 		   
  	<h2 align=center class="eh"> 이벤트 </h2>
<br>

  	<p class="ep" align=center> 진행중인 이벤트 목록</p>
  	
  	<br><br>
  	
  	
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


</div>
	
	
	
	


	
	

	
	
<%@include file="footer.jsp" %>
</body>

	
	
	
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>


</script>












</html>