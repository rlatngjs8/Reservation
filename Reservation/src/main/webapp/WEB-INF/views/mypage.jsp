<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Page</title>
    <style>
        /* 스타일링을 위한 CSS 코드 추가 */
        #container {
            display: flex; /* 컨테이너를 flex로 설정 */
        }

        #menu {
            width: 150px; /* 메뉴의 너비 조절 */
            background-color: #f0f0f0;
        }

        #content {
            flex-grow: 1; /* 나머지 공간을 모두 채우도록 설정 */
            padding: 20px; /* 내부 여백 추가 */
        }

        /* 메뉴 스타일 */
        #menu ul {
            list-style: none;
            padding: 0;
        }

        #menu li {
            margin: 0;
            padding: 0;
        }

        #menu a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: #333;
            transition: background-color 0.3s;
        }

        #menu a:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <h1>My Page</h1>
    <div id="container">
        <!-- 메뉴 -->
        <div id="menu">
            <ul>
                <li><a href="/modify_member_info">회원정보수정</a></li>
                <li><a href="javascript:void(0);" onclick="showPage('order_list')">예약현황 및 구매이력</a></li>
                <li><a href="javascript:void(0);" onclick="showPage('private_inquiry')">1:1 문의</a></li>
            </ul>
        </div>

        <!-- 내부 컨텐츠를 보여줄 div -->
        <div id="content">
            <!-- 내용이 이 곳에 표시됩니다. 초기 내용은 비어 있습니다. -->
        </div>
    </div>
<script src="http://code.jquery.com/jquery-Latest.js"></script>
    <script>

    </script>
</body>
</html>