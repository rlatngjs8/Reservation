<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Menu</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f5f5f5;
    }
    #menu-container {
        width: 300px;
        margin: 50px auto;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 20px;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
    }
    #menu-container a {
        display: block;
        text-decoration: none;
        color: #333;
        margin: 10px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    #menu-container a:hover {
        background-color: #f5f5f5;
    }
</style>
</head>
<body>
<div id="menu-container">
    <a href="/showMembers">회원관리</a>
    <a href="/showReservation">예약관리</a>
    <a href="/productList">상품관리</a>
    <a href="/salesManagement">매출관리</a>
    <a href="/Q&A">Q&A</a>
    <a href="/reviewManagement">상품후기</a>
</div>
</body>
</html>