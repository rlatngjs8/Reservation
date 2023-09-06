<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>서비스 이용약관</title>
    <style>
        body {
            margin: auto;
            font-family: Arial, sans-serif;
        }
        
        .container {
            word-wrap: break-word;
            white-space: pre-line;
            width: 50%;
            margin: 70px auto 0; /* 20px 천장에서 떨어지게 설정 */
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        
        h3 {
            text-align: center;
            color: #333;
        }
    </style>
</head>
<body>
    <div>
        <div class="container">
        <h3>개인정보 처리방침</h3>
            <!-- 아래처럼 DTO 객체의 필드에 접근하여 원하는 데이터를 출력할 수 있습니다. -->
            <c:out value="${personal.personal_information}" />
        </div>
    </div>
</body>
</html>
