<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>회원정보 수정</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            font-weight: bold;
        }
        input[type="text"], input[type="password"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>회원정보 수정</h2>
        <form action="userEdit" method="POST"> <!-- 수정 시 서버 스크립트 경로를 지정해주세요 -->
            <div class="form-group">
                <p>사용자 ID: ${userid}</p>
                <input type="hidden" name="userid" value="${userid}">
            </div>
            <div class="form-group">
                <label for="passcode">비밀번호:</label>
                <input type="password" id="passcode" name="passcode" value="${passcode}" required>
            </div>
            <c:forEach items="${member}" var="member">
            <div class="form-group">
                <label for="email">이메일:</label>
                <input type="email" id="email" name="email" value="${member.email}" required>
            </div>
            <div class="form-group">
                <label for="address">주소:</label>
                <input type="text" id="address" name="address" value="${member.address}" required>
            </div>
            <div class="form-group">
                <label for="mobile">휴대전화:</label>
                <input type="tel" id="mobile" name="mobile" value="${member.mobile}" required>
            </div>
            </c:forEach>
            <button type="submit">수정</button>
        </form>
    </div>
</body>
</html>