<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <form action="update_member.php" method="POST"> <!-- 수정 시 서버 스크립트 경로를 지정해주세요 -->
            <div class="form-group">
                <label for="userid">사용자 ID:</label>
                <input type="text" id="userid" name="userid" value="${userid}" required>
            </div>
            <div class="form-group">
                <label for="passcode">비밀번호:</label>
                <input type="password" id="passcode" name="passcode" value="${passcode}" required>
            </div>
            <div class="form-group">
                <label for="email">이메일:</label>
                <input type="email" id="email" name="email" placeholder="이메일을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="address">주소:</label>
                <input type="text" id="address" name="address" placeholder="주소를 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="mobile">휴대전화:</label>
                <input type="tel" id="mobile" name="mobile" placeholder="휴대전화 번호를 입력하세요" required>
            </div>
            <button type="submit">수정</button>
        </form>
    </div>
</body>
</html>