<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
        }

        .container {
            display: flex;
        }

        nav {
            background-color: #555;
            color: white;
            width: 200px;
            height: 100vh;
            padding-top: 20px;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
        }

        nav ul li {
            margin: 0;
            padding: 0;
        }

        nav ul li a {
            display: block;
            padding: 10px 20px;
            text-decoration: none;
            color: white;
            font-weight: bold;
        }

        nav ul li a:hover {
            background-color: #444;
        }

        main {
            flex: 1;
            padding: 20px;
        }
    </style>
</head>
<body>
    <header>
        <h1>나의 마이페이지</h1>
    </header>
    <div class="container">
        <nav>
            <ul>
                <li><a href="#profile">회원정보수정</a></li>
                <li><a href="#purchases">구매내역</a></li>
                <li><a href="#inquiries">나의 문의내역</a></li>
            </ul>
        </nav>
        <main>
            <!-- 여기에 내용 추가 -->
        </main>
    </div>
</body>
</html>