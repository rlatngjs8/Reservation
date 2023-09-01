<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
 

    body {
        font-size: 14px;
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 0;
    }

    .log {
        width: 400px;
        height: 350px;
        margin: 100px auto;
        padding: 40px;
        box-sizing: border-box;
        border: 1px solid #ddd;
        border-radius: 6px;
    }

    .log h2 {
        font-size: 24px;
        color: #6A24FE;
        margin-bottom: 20px;
    }

    .log input[type="text"],
    .log input[type="password"] {
        width: 100%;
        height: 48px;
        padding: 0 10px;
        box-sizing: border-box;
        margin-bottom: 16px;
        border-radius: 6px;
        background-color: #F8F8F8;
    }

    #btn {
        color: #fff;
        font-size: 16px;
        background-color: #6A24FE;
        margin-top: 20px;
        color: black;
    }
</style>
</head>
<body>
<form id="frmLogin" method="post" action="/doLogin">
    <div class="log">
        <h2>로그인</h2>
        <input type="text" id="loginid" name="loginid" placeholder="로그인 아이디" autofocus>
        <input type="password" id="loginpw" name="loginpw" placeholder="패스워드">
        <input type="submit" value="로그인">&nbsp;&nbsp;<a href="/signup">회원가입</a>
        <c:forEach items="${member}" var="member">
        <input type="hidden" name="name" value="${member.name}">
        </c:forEach>
    </div>
    <c:if test="${loginFailed}">
        <script>
            alert("아이디 혹은 비밀번호를 확인하세요.");
        </script>
    </c:if>
</form>
<script src="http://code.jquery.com/jquery-Latest.js"></script>
<script>
$(document).on('submit', '#frmLogin', function() {
    if ($('#loginid').val() === '' || $('#loginpw').val() === '') {
        alert('아이디 혹은 비밀번호를 입력해주세요');
        return false;
    }
});
</script>
</body>
</html>