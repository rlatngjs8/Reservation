<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
        }

        h1 {
            margin: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .product {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
            margin-bottom: 10px;
        }

        .product img {
            max-width: 100px;
            max-height: 100px;
            margin-right: 10px;
        }

        .product-details {
            flex-grow: 1;
        }

        .product-name {
            font-weight: bold;
        }

        .product-price {
            color: #e91e63;
        }

        .total-price {
            text-align: right;
            font-weight: bold;
            font-size: 1.2em;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <header>
        <h1>장바구니</h1>
    </header>
    <div class="container">
        <div class="product">
            <img src="iphone.jpg" alt="iPhone 13 Pro">
            <div class="product-details">
                <div class="product-name">iPhone 13 Pro</div>
                <div class="product-price">1,500,000원</div>
            </div>
            <div class="product-quantity">수량: 1대</div>
        </div>
        <div class="product">
            <img src="tv.jpg" alt="Samsung 4K 스마트 TV">
            <div class="product-details">
                <div class="product-name">Samsung 4K 스마트 TV</div>
                <div class="product-price">900,000원</div>
            </div>
            <div class="product-quantity">수량: 2대</div>
        </div>
        <div class="total-price">총 가격: 1,500,000원 + 1,800,000원 = 3,300,000원</div>
    </div>
</body>
</html>

