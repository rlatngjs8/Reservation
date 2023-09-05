<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Menu</title>
<style>
    body {
        background-color: #f5f5f5;
    }
    #menu-container {
        width: 300px;
        margin: 50px auto;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 20px;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
        
        
    }
    
    
    @font-face {
    font-family: 'KOTRA_BOLD-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
    
    #menu-container a {
        display: block;
        text-decoration: none;
        color: #333;
        margin: 10px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: background-color 0.3s ease;
        text-align : center;
        font-family: 'KOTRA_BOLD-Bold';
    }
    #menu-container a:hover {
        background-color: #B5B5B5;
    }
  
  @font-face {
    font-family: 'TmonMonsori';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/TmonMonsori.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
  
  
  
  h1 {
  	margin-top: 60px;
  	font-family: 'TmonMonsori';
	font-size : 300%;
  }
  
  
.prev {
	background:linear-gradient(to bottom, #ededed 5%, #bab1ba 100%);
	background-color:#ededed;
	border-radius:3px;
	border:1px solid #d6bcd6;
	display:inline-block;
	cursor:pointer;
	color:#3a8a9e;
	font-family:Arial;
	font-size:12px;
	padding:7px 15px;
	text-decoration:none;
	
	position:relative;
	
	left: 104px;

}
.prev:hover {
	background:linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);
	background-color:#bab1ba;
}
.prev:active {
	position:relative;
	top:1px;
}

@font-face {
    font-family: 'CookieRun-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/CookieRun-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

button {
font-family: 'CookieRun-Regular';
}

  
  
</style>
</head>
<body>
<h1 align=center>관리자 페이지</h1>



<div id="menu-container">
<br>
    <a href="/showMembers">회원관리</a>
    <br>
    <a href="/showReservation">예약관리</a>
    <br>
    <a href="/productList">상품관리</a>
    <br>
    <a href="/salesManagement">매출관리</a>
    <br>
    <a href="/Q&A">Q&A</a>
    <br>
    <a href="/review">상품후기</a>
    <br>
    <button id="prev" class="prev">메인 페이지</button>
    <br>
</div>
</body>
<script src="http://code.jquery.com/jquery-Latest.js"></script>
<script>
$(document)
.on('click','#prev',function(){
	window.location.href= "/";
	
})


</script>
</html>