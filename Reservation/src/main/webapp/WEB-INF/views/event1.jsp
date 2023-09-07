<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

 <style>
 

 
        body {
            font-family: Arial, sans-serif;
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
        	font-family: 'Giants-Bold';
        	font-weight : bold
        }
        
        
        @font-face {
    font-family: 'MBC1961GulimM';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/MBC1961GulimM.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

p,a {
font-family: 'MBC1961GulimM';
}
        
        
        @font-face {
    font-family: 'CookieRun-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/CookieRun-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
h3 {
	color: #2E2E2E;
	font-family: 'CookieRun-Regular';
}        

h2 {
color: #2E2E2E;
	font-family: 'CookieRun-Regular';
}
        
li {
	font-family: 'CookieRun-Regular';
}        
    </style>


<body>

<%@include file="header.jsp" %>
<br><br><br><br><br><br><br>


<div class="forc">
<header>
        <h1>설문조사 이벤트</h1>
    </header>
    <div class="container">
        <h2>설문조사 참여</h2>
        <p>기재된 이메일로 건의사항을 보내주세요! 확인 후, 500p ~ 2,000p 적립 예정!</p>
        <a>메일 주소: 124123@gmail.com</a>
        <p>이벤트 기간: 2023.08.28 - 추후 공지</p>
        <p>참여 자격: Share Place에 등록된 회원 누구나!</p>
        <br><hr/><br>
        <h3>참여 방법</h3>
   
        <ol>
            <li>기재된 이메일로 건의사항,불편사항을 보내주세요 !</li>
            <li>아이디 작성 필수입니다 !</li>
            <li>자세하게 적을수록 더 많은 포인트 적립 예정 ! </li>
            <li>최대 2,000p 지급 !</li>
        </ol>
        <br>
        <p class="pst">더 많은 정보나 문의 사항은 <strong>event@example.com</strong>으로 문의</p>
    </div>
    <br><br>
</div>
<%@include file="footer.jsp" %>


</body>
</html>