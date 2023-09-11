<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추첨 이벤트</title>
</head>
<style>

@font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

 body {
            font-family: 'HakgyoansimWoojuR', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }

        .header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin: 20px;
        }

        .event-image {
            width: 100%;
            max-width: 800px;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin-bottom: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .section-title {
            font-family: 'RixYeoljeongdo_Regular', sans-serif;
            font-size: 40px;
            text-align: center;
            margin-top: 30px;
            margin-bottom: 10px;
            color: #333;
        }

        .event-description {
            font-size: 20px;
            text-align: center;
            margin-bottom: 20px;
            color: #555;
        }
        
         hr {
            border: none;
            border-top: 2px dashed #ddd;
            width: 80%;
            margin: 20px auto;
        }
</style>

<body>
<%@include file="header.jsp" %>
<br><br><br><br><br><br>
  <h2 class="section-title">Share Place에서만 드리는 혜택 !</h2>
  
  <hr/>


  <div class="container">
        <div class="ev">
            <img src="img/추첨이벤트1.jpg" class="event-image" alt="이벤트 이미지 1">
          
            <p class="event-description">쇼핑 후기를 남기면, 선물을 드립니다 !</p>
        </div>

        <hr>

        <div class="ev">
            <img src="img/추첨이벤트2.jpg" class="event-image" alt="이벤트 이미지 2">
      
        </div>

        <hr>

        <div class="ev">
            <img src="img/추첨이벤트3.jpg" class="event-image" alt="이벤트 이미지 3">
            <!-- 이벤트 3에 대한 설명 추가 -->
        </div>
    </div>

<br><br><br>

<%@include file="footer.jsp" %>

























</body>

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>















</script>

</html>