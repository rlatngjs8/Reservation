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
        }
        .container {
            max-width: 800px;
            margin: auto;
            padding: 2rem;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            margin-top: 2rem;
        }
    </style>


<body>

<%@include file="header.jsp" %>


<header>
        <h1>설문조사 참여 하기!</h1>
    </header>
    <div class="container">
        <h2>설문조사 참여</h2>
        <p>기재된 이메일로 건의사항을 보내주세요! 확인 후, 500p ~ 2,000p 적립 예정!</p>
        <a href="321124@gmail.com">124123@gmail.com</a>
        <p>이벤트 기간: 2023.08.28 - 추후 공지</p>
        <p>참여 자격: Share Place에 등록된 회원 누구나!</p>
        <h3>참여 방법</h3>
        <ol>
            <li>기재된 이메일로 건의사항,불편사항을 보내주세요 !</li>
            <li>자세하게 적을수록 더 많은 포인트 적립 예정 ! </li>
            <li>최대 2,000p 지급 !</li>
        </ol>
        <p>더 많은 정보나 문의 사항은 <a href="asdf@gmail.com">event@example.com</a>으로 문의</p>
    </div>
    <br><br>

<%@include file="footer.jsp" %>


</body>
</html>