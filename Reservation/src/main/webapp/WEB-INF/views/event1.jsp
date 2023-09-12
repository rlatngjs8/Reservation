<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

 <style>
 
 @font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
 

 
        body {
            font-family: 'HakgyoansimWoojuR';
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1rem;
            
            height: 80px;
      
        }
        .container {
            max-width: 800px;
            margin: auto;
            padding: 2rem;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            margin-top: 2rem;
            
            border : 2px solid black;
            
        }
        
        @font-face {
    font-family: 'Giants-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-1@1.1/Giants-Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}
        
        h1 {
        	font-family: 'HakgyoansimWoojuR';
        	font-weight : bold
        }
        
        
        @font-face {
    font-family: 'MBC1961GulimM';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/MBC1961GulimM.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

p,a {
font-family: 'HakgyoansimWoojuR';
}
        
        
        @font-face {
    font-family: 'CookieRun-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/CookieRun-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
h3 {
	color: #2E2E2E;
	font-family: 'HakgyoansimWoojuR';
}        

h2 {
color: #2E2E2E;
	font-family: 'HakgyoansimWoojuR';
}
        
li {
	font-family: 'HakgyoansimWoojuR';
}        

 hr {
            border: none;
            border-top: 2px dashed #ddd;
            width: 100%;
            margin: 20px auto;
        }
    </style>


<body>

<%@include file="header.jsp" %>
<br><br><br><br><br><br><br>


<div class="forc">
<header>
        <h1>신규 고객 리뷰 이벤트</h1>
    </header>
     <br><br><br><br><br><br>
    <div class="container">
        <h2>신규 고객 리뷰 이벤트 참여</h2>
        <p>홈페이지에서 예약 후, 리뷰를 남겨주세요! 추첨을 통해 10,000원 환급해드립니다 !</p>
        <p>이벤트 기간: 2023.09.01 - 추후 공지</p>
        <p>참여 자격: 9월 이내 가입한 회원</p>
       <hr/>
        <h3>참여 방법</h3>
   
        <ol>
            <li>예약 후, 리뷰를 남겨주세요 !</li>
            <br>
            <li>신규 고객 한정 이벤트입니다 !</li>
            <br>
            <li>자세하게 적을수록 확률 UP !</li>
            <br>
            <li>다른 이벤트와 중복 참여 가능 ! </li>
            <br>
            <li>최대 10,000원 환급 !</li>
        </ol>
        <br>
        <p class="pst">더 많은 정보나 문의 사항은 <strong>event@example.com</strong>으로 문의</p>
    </div>
    <br><br>
</div>

<br><br><br><br><br><br><br>
<%@include file="footer.jsp" %>


</body>
</html>