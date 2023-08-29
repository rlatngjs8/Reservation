<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원정보수정</title>
</head>
<body>
<h1>회원정보수정</h1>
<form action="/update_member_info" method="post">
    <table>
        <tr>
            <td>아이디</td>
            <td><input type="text" id="userid" name="userid" value="${user.userid}" readonly></td>
        </tr>
        <tr>
            <td>기존 비밀번호</td>
            <td><input type="password" id="passcode" name="passcode"></td>
        </tr>
        <tr>
            <td>신규 비밀번호</td>
            <td><input type="password" id="newPassword" name="newPassword"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" id="name" name="name" value="${user.name}" readonly></td>
        </tr>
        <tr>
            <td>이메일</td>
            <td><input type="text" id="email" name="email"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type="text" id="mobile" name="mobile"></td>
        </tr>
        <tr>
            <td>주소</td>
            <td><input type="text" id="address" name="address"></td>
        </tr>
    </table>
    <button type="submit">확인</button>
    <button type="button" >비우기</button>
</form>
</body>
<script src='http://code.jquery.com/jquery-Latest.js'></script>
<script>
</script>
</html>