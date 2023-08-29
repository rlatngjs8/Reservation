<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 리스트</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f7f7f7;
    margin: 0;
    padding: 0;
  }
  header {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 1rem 0;
  }
  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem;
  }
  .product {
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 1rem;
    margin-bottom: 1rem;
    display: flex;
  }
  .product img {
    max-width: 100px;
    margin-right: 1rem;
  }
  .product-info {
    flex: 1;
  }
  .product-title {
    font-size: 1.2rem;
    font-weight: bold;
    margin: 0;
  }
  .product-description {
    margin: 0.5rem 0;
  }
  .product-price {
    font-weight: bold;
    color: #f00;
  }
  .add-product-button {
    text-align: right;
    margin: 1rem 2rem;
  }

  #add-product-btn {
    background-color: #00aaff; /* 하늘색(파란색 계열) */
    color: #fff;
    border: none;
    border-radius: 10px; /* 둥근 테두리 */
    padding: 0.7rem 1.5rem; /* 좀 더 큰 크기 */
    cursor: pointer;
    font-size: 1.1rem; /* 폰트 크기 조정 */
    box-shadow: 0px 3px 5px rgba(0, 0, 0, 0.2); /* 그림자 효과 */
    transition: background-color 0.3s ease; /* 부드러운 전환 효과 */
  }

  #add-product-btn:hover {
    background-color: #0077cc; /* 더 진한 하늘색(파란색 계열) */
</style>
</head>
<body>
<header>
  <h1>상품 리스트</h1>
</header><br>
<div class="add-product-button">
  <button id="add-product-btn">상품 추가</button>
</div>
<div class="container">
  <c:forEach items="${plist}" var="prod">
    <div class="product" data-space_id="${prod.space_id}">
<%--       <img src="${prod.image}" alt="${product.name}"> --%>
      <div class="space-info">
      	<h2>${prod.space_id}</h2>
        <h2 class="space_name">${prod.space_name}</h2>
        <p class="space_type">${prod.space_type}</p>
        <p class="space-price">${prod.location}</p>
        <p class="space-price">${prod.mobile}</p>
      </div>
    </div>
  </c:forEach>
 	<div align="left">${pagestr}</div>
</div>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).on('click','#add-product-btn',function(){
	window.location.href = "/addProduct";
	})
$(document).on('dblclick', '.product', function(){
  var space_id = $(this).data("space_id");
  window.location.href = "/productView?id=" + space_id;
});
	
</script>
</html>